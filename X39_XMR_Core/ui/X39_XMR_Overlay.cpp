#include "\x\x39\medicalretro\core\ui\Overlay_IDs.hpp"
class X39_XMR_Overlay
{
    idd = -1;
    onLoad = "_this call X39_XMR_fnc_Overlay_onLoad;";
    onUnload = "_this call X39_XMR_fnc_Overlay_onUnload;";

    class controls
    {
        class img_health : RscPicture
        {
            text = "\x\x39\medicalretro\core\res\health.png";
            idc = OVRL_IDC_HEALTH;
            x = "SafeZoneX + (30 / 1920) * SafeZoneW";
            y = "SafeZoneY + (599.999999999999 / 1080) * SafeZoneH";
            w = "(120 / 1920) * SafeZoneW";
            h = "(120 / 1080) * SafeZoneH";
        };
        class img_blood : RscPicture
        {
            idc = OVRL_IDC_BLOOD;
            x = "SafeZoneX + (0 / 1920) * SafeZoneW";
            y = "SafeZoneY + (360 / 1080) * SafeZoneH";
            w = "(120 / 1920) * SafeZoneW";
            h = "(120 / 1080) * SafeZoneH";
        };
        class img_legs : RscPicture
        {
            text = "\x\x39\medicalretro\core\res\broken-bone.png";
            idc = OVRL_IDC_LEGS;
            x = "SafeZoneX + (1860 / 1920) * SafeZoneW";
            y = "SafeZoneY + (359.999999999999 / 1080) * SafeZoneH";
            w = "(60 / 1920) * SafeZoneW";
            h = "(59.9999999999999 / 1080) * SafeZoneH";
        };
        class img_tourniquet : RscPicture
        {
            text = "\x\x39\medicalretro\core\res\tourniquet.png";
            idc = OVRL_IDC_TOURNIQUET;
            x = "SafeZoneX + (1860 / 1920) * SafeZoneW";
            y = "SafeZoneY + (480 / 1080) * SafeZoneH";
            w = "(60 / 1920) * SafeZoneW";
            h = "(59.9999999999999 / 1080) * SafeZoneH";
        };
        class img_morphine : RscPicture
        {
            text = "\x\x39\medicalretro\core\res\antibiotic.png";
            idc = OVRL_IDC_MORPHINE;
            x = "SafeZoneX + (1860 / 1920) * SafeZoneW";
            y = "SafeZoneY + (600 / 1080) * SafeZoneH";
            w = "(60 / 1920) * SafeZoneW";
            h = "(59.9999999999999 / 1080) * SafeZoneH";
        };
        class img_lowblood : RscPicture
        {
            text = "\x\x39\medicalretro\core\res\blooddrop_4.png";
            idc = OVRL_IDC_LOWBLOOD;
            x = "SafeZoneX + (1860 / 1920) * SafeZoneW";
            y = "SafeZoneY + (720 / 1080) * SafeZoneH";
            w = "(60 / 1920) * SafeZoneW";
            h = "(59.9999999999999 / 1080) * SafeZoneH";
        };
    
    };
};
