/*
 * Author:
 *      X39
 * 
 * Description:
 *      Checks if given unit has blocking BOS conditions
 * 
 * Arguments:
 *      <OBJECT>            Object to blackout
 * Return:
 *      <SCALAR> BlackOutState the unit currently is in, see ChangeState.sqf for the states.
 */
#define DISABLERETURN
#include "\x\x39\extensivemedicalsystem\scripting\defaultSQF.hpp"
#include "\x\x39\extensivemedicalsystem\scripting\header.hpp"
#include "\x\x39\extensivemedicalsystem\scripting\BlackOutSystem\infoArrayOffsets.hpp"

	params ["_unit"];
    private _state = 0;
    private _bleeding = _unit call X39_XMR_fnc_getBleeding;
    private _blood = _unit call X39_XMR_fnc_getBleeding;
    if (_lood <= X39_XMR_SETTING_BLEEDING_KnockOutBloodLimit && { _state < 2 }) then
    {
        _state = 2;
    };
	
#include "\x\x39\extensivemedicalsystem\scripting\footer.hpp"

_state