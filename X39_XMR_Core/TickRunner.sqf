/*
 * Author:
 *      X39
 * 
 * Description:
 *      Executes the different tick-based updates of XMed.
 * 
 * Arguments:
 *      [
 *          <object> _unit
 *      ]
 * 
 * Return:
 *      -/-
 */
scopeName "all";
params ["_unit"];

private _last = _unit getVariable ["X39_XMR_var_lasttick", diag_tickTime];
if (diag_tickTime - _last < X39_XMR_SETTING_TickTimeout) exitWith {};

if !alive _unit then {
    if !isPlayer _unit then {
        removeMissionEventHandler ["EachFrame", _unit getVariable "X39_XMR_var_eachframe"];
        breakOut "all";
    };
};
_unit setVariable ["X39_XMR_var_lasttick", diag_tickTime];
private _trnqt = [_unit] call X39_XMR_fnc_hasTourniquet;
private _isBleeding = [_unit] call X39_XMR_fnc_isBleeding;
private _bloodlossPerTick = [_unit] call X39_XMR_fnc_getBloodloss;
private _blood = [_unit] call X39_XMR_fnc_blood;
private _dmg = [_unit] call X39_XMR_fnc_UnitDamage;
private _pain = [_unit] call X39_XMR_fnc_getPain;
private _painPrcnt = _pain / X39_XMR_SETTING_PAIN_MaxPain;
[_unit, -X39_XMR_SETTING_PAIN_ReductionPerTick] call X39_XMR_fnc_addPain;

if X39_XMR_FLAG_AllowSpeedLimitation then {
    _unit forceWalk (_trnqt || _dmg > X39_XMR_SETTING_GENERIC_DamageBeforeForceWalk);
};

if _trnqt then {
    [_unit, X39_XMR_SETTING_BLEEDING_TourniquetPainPerTick] call X39_XMR_fnc_addPain;
};
if X39_XMR_FLAG_PP_ColorCorrections then {
    private _blendColor            = [0, 0, 0, 0];
    private _colorizeColorSub    = [0, 0, 0, 1];
    
    if(_painOrig > 0) then
    {
        if(X39_XMR_FLAG_PP_ColorCorrections_PainRedScreen) then
        {
            _blendColor set[0, _blendColor];
            _blendColor set[3, _blendColor * 0.5];
        };
        if(X39_XMR_FLAG_PP_ColorCorrections_PainGrayScreen) then
        {
            _colorizeColorSub = [
                                    _blendColor * X39_XMR_SETTING_PP_ColorCorrections_PainGrayScreenMultiplicator,
                                    _blendColor * X39_XMR_SETTING_PP_ColorCorrections_PainGrayScreenMultiplicator,
                                    _blendColor * X39_XMR_SETTING_PP_ColorCorrections_PainGrayScreenMultiplicator,
                                    1
                                ];
        };
    };
    
    X39_XMR_VAR_PP_ColorCorrection ppEffectAdjust [
                            1,
                            1,
                            0,
                            _blendColor,
                            _colorizeColorSub,
                            [0, 0, 0, 1]
                        ];
    X39_XMR_VAR_PP_ColorCorrection ppEffectCommit X39_XMR_SETTING_TickTimeout;
};
if X39_XMR_FLAG_PP_Blur then
{
    if (_painPrcnt > 0) then {
        X39_XMR_VAR_PP_Blur ppEffectAdjust [_painWork * X39_XMR_FLAG_PP_Blur_MaxBlur];
        X39_XMR_VAR_PP_Blur ppEffectCommit X39_XMR_SETTING_TickTimeout;
    };
};
if X39_XMR_FLAG_PP_MorphineOverdose then
{
    _red    = 0;
    _green    = 0;
    _blue    = 0;
    _dissortA = 0;
    _dissortB = 0;
    if (_painOrig < 0) then
    {
        if X39_XMR_FLAG_PP_MorphineOverdose_ColorInversion then
        {
            _red    = 0.2 * _painPrcnt;
            _green    = 0.9 * _painPrcnt;
            _blue    = 0.5 * _painPrcnt;
            X39_XMR_VAR_PP_ColorInversion ppEffectAdjust [_red, _green, _blue];
            X39_XMR_VAR_PP_ColorInversion ppEffectCommit X39_XMR_SETTING_TickTimeout;
        };
        if X39_XMR_FLAG_PP_MorphineOverdose_ChromAberration then
        {
            _dissortA = 0.5 * (0.1 * _painPrcnt);
            _dissortB = 3 * (0.1 * _painPrcnt);
            X39_XMR_VAR_PP_ChromAberration ppEffectAdjust [_dissortA, _dissortB, true];
            X39_XMR_VAR_PP_ChromAberration ppEffectCommit X39_XMR_SETTING_TickTimeout;
        };
    };
};
if X39_XMR_FLAG_HEARING then {
    private _hearing = [_unit] call X39_XMR_fnc_hearing;
    private _hearingPrcnt = _hearing / X39_XMR_SETTING_HEARING_MaxDeaf;
    [_unit, _hearing - X39_XMR_SETTING_HEARING_HealPerTick] call X39_XMR_fnc_hearing;
    0.1 fadeMusic _hearingPrcnt;
    0.1 fadeSound _hearingPrcnt;
    0.1 fadeRadio _hearingPrcnt;
    _this setVariable ["tf_globalVolume", _hearingPrcnt, true];
};

if (_isBleeding && !_trnqt) then {
    if (_blood <= X39_XMR_SETTING_BLEEDING_KnockOutBloodLimit
        && X39_XMR_SETTING_BLEEDING_KnockOutBloodLimit != -1) then {
            [_unit, -1, false] X39_XMR_fnc_BlackOut;
    };
    if (_blood <= 0) then {
        _unit setDamage 1;
    }
    if (_bloodlossPerTick > 0) then {
        [_unit, _blood - _bloodlossPerTick] call X39_XMR_fnc_blood;
    };
};

if (_dmg < X39_XMR_SETTING_HPREGEN_MaxRegen) then {
    if (X39_XMR_FLAG_HPREGEN_OnlyIfNotBleeding && _isBleeding) exitWith {};
    _dmg = _dmg - X39_XMR_SETTING_HPREGEN_RegenPerTick;
    [_unit, _dmg] call X39_XMR_fnc_UnitDamage;
};