/*
 * Author:
 *      X39
 * 
 * Description:
 *      Initialized a non-initialized unit so it is ready for use with ExtensiveMedicalsystem
 * 
 * Arguments:
 *      [
 *          <object>
 *      ]
 * 
 * Return:
 *      -/-
 */
#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"


params [
    ["_unit", objNull, [objNull]]
];

if (hasInterface && {isLocal _unit && {_unit == player}}) then
{
    _unit spawn {
        waitUntil {!isNull (findDisplay 46)};
        _this setVariable ["X39_XMR_var_damage_legs", 0];
        _this setVariable ["X39_XMR_var_damage_head", 0];
        _this setVariable [VALSTR_BLOOD, X39_XMR_SETTING_BLEEDING_StartingBlood];
        _this setVariable [VALSTR_BLOODLOSS, 0];
        _this setVariable [VALSTR_PAIN, 0];
        _this setVariable ["X39_XMR_var_hasEarplugs", false];
        _this setVariable ["X39_XMR_var_deafness", 0];
        _this setVariable ["X39_XMR_var_tourniquet", false];
        _this setVariable ["X39_XMR_var_lasttick", 0];
        
        _this setVariable ["X39_XMR_var_CB_46_OnKeyDown", (findDisplay 46) displayAddEventHandler["KeyDown", X39_XMR_fnc_CB_46_OnKeyDown]];
        _this setVariable ["X39_XMR_var_CB_Object_HandleDamage", _this addEventHandler["HandleDamage", X39_XMR_fnc_CB_Object_HandleDamage]];
        _this setVariable ["X39_XMR_var_CB_Object_FiredNear", _this addEventHandler["FiredNear", X39_XMR_fnc_CB_Object_FiredNear]];
        _this setVariable ["X39_XMR_var_eachframe", addMissionEventHandler ["EachFrame", X39_XMR_fnc_TickRunner]];
    };
};


#include "\x\x39\medicalretro\core\footer.hpp"
