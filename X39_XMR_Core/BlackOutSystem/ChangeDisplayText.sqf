/*
 * Author:
 *      X39
 * 
 * Description:
 *      Changes displaytext of current player
 * 
 * Arguments:
 *      <STRING> New text to display
 * Return:
 *      -/-
 */
#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"

params ["_text"];

uiNamespace setVariable [VALSTR_UI_BOS_DISPLAYTEXT, _text];

#include "\x\x39\medicalretro\core\footer.hpp"