/*
 * Author:
 *      X39
 * 
 * Description:
 *      Updates the bloodloss value from provided unit.
 * 
 * Arguments:
 *      [
 *          <object> - Initialized unit to receive the value from.
 *          <scalar> - The new value for bloodloss.
 *      ]
 * 
 * Return:
 *      -/-
 */
#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"

(_unit select 0) setVariable [VALSTR_BLOODLOSS, (_unit select 0)];

#include "\x\x39\medicalretro\core\footer.hpp"
