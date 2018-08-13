#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"


//Reset UI Variable to nil
uiNamespace setVariable ["XMR_Overlay_UI", nil];
//terminate background refresh loop
removeMissionEventHandler ["Draw3D", uiNamespace getVariable ["XMR_Overlay_LOOP", scriptNull]];


#include "\x\x39\medicalretro\core\footer.hpp"