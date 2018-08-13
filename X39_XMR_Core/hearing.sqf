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


params ["_unit", "_value"];

if isNil "_value" then {
    _unit getVariable ["X39_XMR_var_deafness", 0];
} else {
    _unit setVariable ["X39_XMR_var_deafness", _value];
}

#include "\x\x39\medicalretro\core\footer.hpp"
