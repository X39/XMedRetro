#include "\x\x39\medicalretro\core\ui\BlackOutScreen_IDs.hpp"
class X39_XMR_BlackOutScreen
{
    onLoad = "_this call X39_XMR_fnc_BlackOutScreen_onLoad;";
    onUnload = "_this call X39_XMR_fnc_BlackOutScreen_onUnload;";
    class controls
    {
        class back : IGUIBack
        {
            idc = BOS_IDC_PULSEBACK;
            w = SafeZoneW;
            h = SafeZoneH;
            colorBackground[] =  {0, 0, 0, 1};
        };
        class backimg : RscPicture
        {
            idc = -1;
            w = SafeZoneW;
            h = SafeZoneH;
            text = "\x\x39\medicalretro\core\res\blackout_background.png";
            colorBackground[] = {0.1, 0.1, 0.1, 0.5};
        };
        class btn_respawn : RscButton
        {
            idc = BOS_IDC_RESPAWNBUTTON;
            text = "RESPAWN";
            x = SafeZoneX;
            y = SafeZoneY + (1020 / 1080) * SafeZoneH;
            w = (330 / 1920)  SafeZoneW;
            h = (60 / 1080)  SafeZoneH;
        };
        class btn_abort : RscButton
        {
            idc = BOS_IDC_ABORTBUTTON;
            text = "ABORT";
            x = SafeZoneX + (330  1920) * SafeZoneW;
            y = SafeZoneY + (1020  1080) * SafeZoneH;
            w = (330 / 1920) * SafeZoneW;
            h = (60 / 1080) * SafeZoneH;
        };
        class txt_timetolive : RscText
        {
            idc = BOS_IDC_TTL;
            text = "TTL";
            x = SafeZoneX;
            y = SafeZoneY;
            w = (330 / 1920) * SafeZoneW;
            h = (60 / 1080) * SafeZoneH;
        };
        class txt_bloodleft : RscText
        {
            idc = BOS_IDC_BLOODLEFT;
            text = TTL;
            x = SafeZoneX + (330 * 1920) * SafeZoneW;
            y = SafeZoneY;
            w = (330 / 1920) * SafeZoneW;
            h = (60 / 1080) * SafeZoneH;
        };
    };
};
