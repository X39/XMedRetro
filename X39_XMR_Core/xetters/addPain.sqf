/*
 * Author:
 *      X39
 * 
 * Description:
 *      Updates the pain value from provided unit by adding
 *      the current value onto the new value.
 * 
 * Arguments:
 *      [
 *          <object> - Initialized unit to receive the value from.
 *          <scalar> - The value to add ontop of current pain.
 *      ]
 * 
 * Return:
 *      <scalar> - the new absolute pain value.
 */
#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"

params ["_unit", "_value"];
private _tmp = (_unit getVariable [VALSTR_PAIN, 0]) + _value;
_unit setVariable [VALSTR_PAIN, _tmp];
_tmp

#include "\x\x39\medicalretro\core\footer.hpp"
