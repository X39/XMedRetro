#include "default.hpp"
class CfgPatches
{
    class X39_XMR_Core
    {
         units[] = {};
         weapons[] = {};
         requiredVersion = 1.64;
         requiredAddons[] = {};
         author = "X39";
         mail = "x39@x39.io";
         url = "https://x39.io/projects?project=XMedRetro";
    };
};
class CfgFunctions
{
    class X39_XMR
    {
        #include "functions.cpp"
    };
};
class IGUIBack;
class RscPicture;
class RscButton;
class RscText;

#include "UI\BlackOutScreen.cpp"