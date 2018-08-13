/*
 * Author:
 *      X39
 * 
 * Description:
 *      PreInit file of this mod.
 *      Called BEFORE the objects are initialized.
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

#define SETIFNIL(VAR, VAL) if isNil #VAR then { VAR = VAL; }

SETIFNIL(X39_XMR_FLAG_OVERLAY_HEALTHVIEW, true);
SETIFNIL(X39_XMR_FLAG_OVERLAY_BLOODVIEW, true);
SETIFNIL(X39_XMR_FLAG_OVERLAY_LEGSICON, true);
SETIFNIL(X39_XMR_FLAG_OVERLAY_TOURNIQUETICON, true);
SETIFNIL(X39_XMR_FLAG_OVERLAY_MORPHINEICON, true);
SETIFNIL(X39_XMR_FLAG_OVERLAY_LOWBLOODICON, true);
SETIFNIL(X39_XMR_SETTING_OVERLAY_LOWBLOOD_WARNING_THRESHOLD, 0.3);

SETIFNIL(X39_XMR_FLAG_HEAD_HeadShotFakeKills, true);
SETIFNIL(X39_XMR_SETTING_HEAD_DamageMultiplicator, 1);
SETIFNIL(X39_XMR_SETTING_HEAD_HeadShotDeathLimit, -1);

SETIFNIL(X39_XMR_FLAG_LEGS_AllowBrokenLegs, true);
SETIFNIL(X39_XMR_SETTING_LEGS_DamageMultiplicator, 0.2);
SETIFNIL(X39_XMR_SETTING_LEGS_DamageBeforeProneOnly, 0.5);

SETIFNIL(X39_XMR_SETTING_HPREGEN_MaxRegen, 0.2);
SETIFNIL(X39_XMR_FLAG_HPREGEN_OnlyIfNotBleeding, true);
SETIFNIL(X39_XMR_SETTING_HPREGEN_RegenPerTick, 0.005);

SETIFNIL(X39_XMR_SETTING_GENERIC_DamageBeforeForceWalk, 0.4);
SETIFNIL(X39_XMR_SETTING_GENERIC_DamageTimedKnockoutTimeout, 10);
SETIFNIL(X39_XMR_SETTING_GENERIC_DamageBeforeKnockout, 0.5);
SETIFNIL(X39_XMR_SETTING_GENERIC_DamageBeforePermaKnockout, 0.625);
SETIFNIL(X39_XMR_SETTING_GENERIC_DamageBeforeDead, 1);

SETIFNIL(X39_XMR_SETTING_DamageMultiplicator, 0.5);

SETIFNIL(X39_XMR_SETTING_BLEEDING_DamageModificator, 1);
SETIFNIL(X39_XMR_SETTING_BLEEDING_StartingBlood, 6000);
SETIFNIL(X39_XMR_SETTING_BLEEDING_BleedDamageThreshold, 0.25);
SETIFNIL(X39_XMR_SETTING_BLEEDING_KnockOutBloodLimit, 6000 * 0.2);
SETIFNIL(X39_XMR_SETTING_BLEEDING_MaxBleeding, 6000);

SETIFNIL(X39_XMR_SETTING_BLEEDING_TourniquetPainPerTick, 0.1);

SETIFNIL(X39_XMR_SETTING_PAIN_ReductionPerTick, 0.1);
SETIFNIL(X39_XMR_SETTING_PAIN_DamageMultiplicator, 1);
SETIFNIL(X39_XMR_SETTING_PAIN_MaxPain, 10);

SETIFNIL(X39_XMR_SETTING_DEAD_TimeToLive, 600);

SETIFNIL(X39_XMR_FLAG_HEARING, true);
SETIFNIL(X39_XMR_SETTING_HEARING_LoudnessMultiplicator, 0.2);
SETIFNIL(X39_XMR_SETTING_HEARING_DistanceMultiplicator, 0.5);
SETIFNIL(X39_XMR_SETTING_HEARING_HealPerTick, 0.1);
SETIFNIL(X39_XMR_SETTING_HEARING_MaxDeaf, 10);

SETIFNIL(X39_XMR_SETTING_OverlayTransparency, 0.5);
SETIFNIL(X39_XMR_SETTING_TickTimeout, 0.2);


SETIFNIL(X39_XMR_FLAG_AllowSpeedLimitation, true);
SETIFNIL(X39_XMR_FLAG_PP_ColorCorrections, true);
SETIFNIL(X39_XMR_FLAG_PP_ColorCorrections_PainRedScreen, true);
SETIFNIL(X39_XMR_FLAG_PP_ColorCorrections_PainGrayScreen, true);
SETIFNIL(X39_XMR_FLAG_PP_Blur, true);
SETIFNIL(X39_XMR_FLAG_PP_Blur_Pain, true);
SETIFNIL(X39_XMR_FLAG_PP_Blur_MaxBlur, true);
SETIFNIL(X39_XMR_FLAG_PP_MorphineOverdose, true);
SETIFNIL(X39_XMR_FLAG_PP_MorphineOverdose_ColorInversion, true);
SETIFNIL(X39_XMR_FLAG_PP_MorphineOverdose_ChromAberration, true);
SETIFNIL(X39_XMR_SETTING_PP_ColorCorrections_PainGrayScreenMultiplicator, 1);

#include "\x\x39\medicalretro\core\footer.hpp"
