/*
 * Author:
 *      X39
 * 
 * Description:
 *      Receives the bloodloss value from provided unit.
 * 
 * Arguments:
 *      [
 *          <object> - Initialized unit to receive the value from.
 *      ]
 * 
 * Return:
 *      <scalar> - value representing the current, absolute bloodloss.
 */
#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"

(_unit select 0) getVariable [VALSTR_BLOODLOSS, 0];

#include "\x\x39\medicalretro\core\footer.hpp"
