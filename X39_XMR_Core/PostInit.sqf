/*
 * Author:
 *      X39
 * 
 * Description:
 *      PostInit file of this mod.
 *      Called AFTER the objects are initialized.
 *      For further details, check:
 *      https://community.bistudio.com/wiki/Initialization_Order
 * 
 * Arguments:
 *      [
 *          <string>
 *      ]
 * 
 * Return:
 *      -/-
 */
#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"

X39_XMR_VAR_PP_ColorCorrection = ppEffectCreate ["Colorcorrections", 1150];
X39_XMR_VAR_PP_ColorCorrection ppEffectEnable true;
X39_XMR_VAR_PP_Blur = ppEffectCreate ["DynamicBlur", 450];
X39_XMR_VAR_PP_Blur ppEffectEnable true;
X39_XMR_VAR_PP_ColorInversion = ppEffectCreate ["ColorInversion", 2500];
X39_XMR_VAR_PP_ColorInversion ppEffectEnable true;
X39_XMR_VAR_PP_ChromAberration = ppEffectCreate ["ChromAberration", 5000];
X39_XMR_VAR_PP_ChromAberration ppEffectEnable true;
[] call X39_XMR_fnc_ResetEffects;

#include "\x\x39\medicalretro\core\footer.hpp"
