#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"
#include "\x\x39\medicalretro\core\ui\BlackOutScreen_IDs.hpp"

params ["_ctrl"];

//Init uiNamespace variable with display object
uiNamespace setVariable ["XMR_BlackOutScreen_UI", _ctrl];
//Start ui update loop
uiNamespace setVariable ["XMR_BlackOutScreen_LOOP", _ctrl spawn {
    private _last = time;
    while { true } do
    {
        sleep 0.001; //sleep one frame
        //ToDo
        //VALSTR_UI_BOS_DISPLAYTEXT
        if((time - _last) > 10) then
        {
            private _currentFade = ctrlFade (_this displayCtrl BOS_IDC_PULSEBACK);
            (_this displayCtrl BOS_IDC_PULSEBACK) ctrlSetFade ([0.1, 1] select (_currentFade < 0.5));
            (_this displayCtrl BOS_IDC_PULSEBACK) ctrlCommit 7;
            _last = time;
        };
    };
}];

(_ctrl displayCtrl BOS_IDC_RESPAWNBUTTON) ctrlAddEventHandler ["MouseButtonClick", {
    //Just kill the player
    player setDamage 1;
}];

(_ctrl displayCtrl BOS_IDC_ABORTBUTTON) ctrlAddEventHandler ["MouseButtonClick", {
    //end the mission for this specific player
    "KILLED" call BIS_fnc_endMission;
}];


#include "\x\x39\medicalretro\core\footer.hpp"
