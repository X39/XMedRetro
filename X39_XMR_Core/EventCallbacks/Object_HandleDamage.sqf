/*
 * Author:
 *      X39
 * 
 * Description:
 *      Handles the damage a unit receives.
 *      Executes local.
 * 
 * Arguments:
 *      [
 *          <object> unit,
 *          <string> hitsection,
 *          <scalar> damage,
 *          <object> damagesource,
 *          <string> projectile,
 *          <scalar> hitpartindex,
 *          <object> instigator,
 *          <string> hitpoint
 *      ]
 * 
 * Return:
 *      -/-
 */

#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"

params ["_unit", "_selectionName", "_damage", "_source", "_projectile", "_hitPartIndex", "_instigator", "_hitpoint"];
_damage = _damage * X39_XMR_SETTING_DamageMultiplicator;

if (_selectionName == "legs") then {
    _damage = _damage * X39_XMR_SETTING_LEGS_DamageMultiplicator;
    private _lgdmg = _unit getVariable ["X39_XMR_var_damage_legs", 0] + _damage;
    
    _unit setVariable ["X39_XMR_var_damage_legs",  [_lgdmg, 1] select (_lgdmg >= 1)];
};
if (_damage >= X39_XMR_SETTING_BLEEDING_BleedDamageThreshold) then {
    private _bleeding = _unit getVariable ["X39_XMR_var_bleeding", 0] + (_damage * X39_XMR_SETTING_BLEEDING_DamageModificator);
    _unit setVariable ["X39_XMR_var_bleeding", [_bleeding, X39_XMR_SETTING_BLEEDING_MaxBleeding] select (_bleeding >= X39_XMR_SETTING_BLEEDING_MaxBleeding)];
};
if (_selectionName == "") then {
    private _pain = _unit getVariable ["X39_XMR_var_pain", 0] + (_damage * X39_XMR_SETTING_PAIN_DamageMultiplicator);
    _this setVariable ["X39_XMR_var_pain", [_pain, X39_XMR_SETTING_PAIN_MaxPain] select (_pain >= X39_XMR_SETTING_PAIN_MaxPain)];
    
    if (_damage >= X39_XMR_SETTING_GENERIC_DamageBeforeKnockout) then {
        if (_damage >= X39_XMR_SETTING_GENERIC_DamageBeforePermaKnockout) then {
            if (_damage >= X39_XMR_SETTING_GENERIC_DamageBeforeDead) then {
                [_unit, -1, true] X39_XMR_fnc_BlackOut;
            } else {
                [_unit, -1, false] X39_XMR_fnc_BlackOut;
            };
        } else {
            [_unit, X39_XMR_SETTING_GENERIC_DamageTimedKnockoutTimeout, false] X39_XMR_fnc_BlackOut;
        };
    };
};
if (_selectionName == "head") then {
    _damage = _damage * X39_XMR_SETTING_HEAD_DamageMultiplicator;
    private _headdmg = _unit getVariable ["X39_XMR_var_damage_head", 0] + _damage;
    
    _headdmg setVariable ["X39_XMR_var_damage_head",  [_lgdmg, 1] select (_lgdmg >= 1)];
    if (X39_XMR_SETTING_HEAD_HeadShotDeathLimit != -1) {
        if (_headdmg >= X39_XMR_SETTING_HEAD_HeadShotDeathLimit) then {
            if X39_XMR_FLAG_HEAD_HeadShotFakeKills then {
                [_unit, -1, true] X39_XMR_fnc_BlackOut;
            } else {
                _damage = 1;
            };
        };
    };
};

//Magic number 0.9999999 is the last dmg that wont kill the player
([_damage, 0.9999999] select (_damage >= 1))

#include "\x\x39\medicalretro\core\footer.hpp"