#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"
#include "\x\x39\medicalretro\core\ui\BlackOutScreen_IDs.hpp"

params ["_display"];

//Init uiNamespace variable with display object
uiNamespace setVariable ["XMR_Overlay_UI", _display];
//Start ui update loop
uiNamespace setVariable ["XMR_Overlay_LOOP", addMissionEventHandler ["Draw3D", {
    private _display = uiNamespace getVariable "XMR_Overlay_UI";
    
    //Health View
    private _dmg = [player, true] call X39_XMR_getUnitDamage;
    private _dmgclrval = if(_dmg > 0) { 2 / (X39_XMR_SETTING_GENERIC_DamageBeforeDead / _dmg) } else { 0 };
    (_display displayCtrl OVRL_IDC_HEALTH) ctrlSetTextColor [ _bldclrval, 2 -_bldclrval, 0, X39_XMR_SETTING_OverlayTransparency ];
    
    //Blood View
    private _bld = [player] call X39_XMR_blood / X39_XMR_SETTING_BLEEDING_StartingBlood;
    private _isbleeding = [player] call X39_XMR_isBleeding;
    private _bldimg = switch true do {
        case (_bld < 1.0): { "\x\x39\medicalretro\core\res\blooddrop.png" };
        case (_bld < 0.8): { "\x\x39\medicalretro\core\res\blooddrop_1.png" };
        case (_bld < 0.6): { "\x\x39\medicalretro\core\res\blooddrop_2.png" };
        case (_bld < 0.4): { "\x\x39\medicalretro\core\res\blooddrop_3.png" };
        case (_bld < 0.2): { "\x\x39\medicalretro\core\res\blooddrop_4.png" };
    };
    if (ctrlText (_display displayCtrl OVRL_IDC_BLOOD) != _bldimg) then {
        (_display displayCtrl OVRL_IDC_BLOOD) ctrlSetText _bldimg;
    };
    if (_isBleeding) then {
        (_display displayCtrl OVRL_IDC_BLOOD) ctrlSetTextColor [1, 0, 0, X39_XMR_SETTING_OverlayTransparency];
    } else {
        (_display displayCtrl OVRL_IDC_BLOOD) ctrlSetTextColor [0, 1, 0, X39_XMR_SETTING_OverlayTransparency];
    };
    
    //BrokenLegs
    if X39_XMR_FLAG_OVERLAY_LEGSICON then {
        (_display displayCtrl OVRL_IDC_LEGS) ctrlShow ([player] call X39_XMR_canMove);
    };
    
    //Tourniquet
    if X39_XMR_FLAG_OVERLAY_TOURNIQUET then {
        (_display displayCtrl OVRL_IDC_TOURNIQUET) ctrlShow ([player] call X39_XMR_hasTourniquet);
    };
    
    //Morphine
    if X39_XMR_FLAG_OVERLAY_MORPHINE then {
        (_display displayCtrl OVRL_IDC_MORPHINE) ctrlShow ([player] call X39_XMR_getMorphine > 0.2);
    };
    
    //Low Blood warning
    if X39_XMR_FLAG_OVERLAY_LOWBLOOD then {
        (_display displayCtrl OVRL_IDC_LOWBLOOD) ctrlShow (_bld < X39_XMR_SETTING_OVERLAY_LOWBLOOD_WARNING_THRESHOLD);
    };
}];

(_display displayCtrl OVRL_IDC_HEALTH)     ctrlShow X39_XMR_FLAG_OVERLAY_HEALTHVIEW;
(_display displayCtrl OVRL_IDC_BLOOD)      ctrlShow X39_XMR_FLAG_OVERLAY_BLOODVIEW;
(_display displayCtrl OVRL_IDC_LEGS)       ctrlShow false;
(_display displayCtrl OVRL_IDC_TOURNIQUET) ctrlShow false;
(_display displayCtrl OVRL_IDC_MORPHINE)   ctrlShow false;
(_display displayCtrl OVRL_IDC_LOWBLOOD)   ctrlShow false;
(_display displayCtrl OVRL_IDC_LEGS)       ctrlSetTextColor[1, 1, 1, X39_XMR_SETTING_OverlayTransparency];
(_display displayCtrl OVRL_IDC_TOURNIQUET) ctrlSetTextColor[1, 1, 1, X39_XMR_SETTING_OverlayTransparency];
(_display displayCtrl OVRL_IDC_MORPHINE)   ctrlSetTextColor[1, 1, 1, X39_XMR_SETTING_OverlayTransparency];
(_display displayCtrl OVRL_IDC_LOWBLOOD)   ctrlSetTextColor[1, 1, 1, X39_XMR_SETTING_OverlayTransparency];



#include "\x\x39\medicalretro\core\footer.hpp"
