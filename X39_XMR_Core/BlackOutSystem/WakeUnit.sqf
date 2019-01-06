/*
 * Author:
 *      X39
 * 
 * Description:
 *      wakes up unit (removes dialog if is player), enables various AI stuff on AI
 *		Helper function for BOS_ChangeState. Not intended to be callen manually.
 * 
 * Arguments:
 *      <OBJECT>            Object to wake up
 * Return:
 *      -/-
 */
#define VARIABLENAMESPACE uiNamespace
#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"

if(!isNil "XMR_BlackOutScreen_UI") then
{
    XMR_BlackOutScreen_UI closeDisplay XMR_BlackOutScreen_UI;
    terminate XMR_BlackOutScreen_LOOP;
};

#include "\x\x39\medicalretro\core\footer.hpp"