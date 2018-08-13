/*
 * Author:
 *      X39
 * 
 * Description:
 *      Executes the different update-ticks of XMed.
 * 
 * Arguments:
 *      [
 *          <object> _unit
 *      ]
 * 
 * Return:
 *      -/-
 */
 
#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"

X39_XMR_VAR_PP_ColorCorrection ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [0, 0, 0, 1], [0, 0, 0, 1]];
X39_XMR_VAR_PP_ColorCorrection ppEffectCommit 0;

X39_XMR_VAR_PP_Blur ppEffectAdjust [0];
X39_XMR_VAR_PP_Blur ppEffectCommit 0;

X39_XMR_VAR_PP_ColorInversion ppEffectAdjust [0, 0, 0];
X39_XMR_VAR_PP_ColorInversion ppEffectCommit 0;

X39_XMR_VAR_PP_ChromAberration ppEffectAdjust [0, 0, true];
X39_XMR_VAR_PP_ChromAberration ppEffectCommit 0;

#include "\x\x39\medicalretro\core\footer.hpp"