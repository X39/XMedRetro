#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"


//Reset UI Variable to nil
uiNamespace setVariable ["XMR_BlackOutScreen_UI", nil];
//terminate background refresh loop
terminate (uiNamespace getVariable ["XMR_BlackOutScreen_LOOP", scriptNull]);


#include "\x\x39\medicalretro\core\footer.hpp"