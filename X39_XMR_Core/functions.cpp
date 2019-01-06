class Init
{
    class PreInit                   { file = "x\x39\medicalretro\core\PreInit.sqf"; preInit = 1; };
    class PostInit                  { file = "x\x39\medicalretro\core\PostInit.sqf"; postInit = 1; };
};
class Generic
{
    class initUnit                  { file = "x\x39\medicalretro\core\initUnit.sqf"; };
    class UnitDamage                { file = "x\x39\medicalretro\core\.sqf"; };
    class isBleeding                { file = "x\x39\medicalretro\core\.sqf"; };
    class blood                     { file = "x\x39\medicalretro\core\.sqf"; };
    class canMove                   { file = "x\x39\medicalretro\core\.sqf"; };
    class hasTourniquet             { file = "x\x39\medicalretro\core\.sqf"; };
    class getMorphine               { file = "x\x39\medicalretro\core\.sqf"; };
    class BlackOut                  { file = "x\x39\medicalretro\core\.sqf"; };
    class TickRunner                { file = "x\x39\medicalretro\core\TickRunner.sqf"; };
    class resetEffects              { file = "x\x39\medicalretro\core\ResetEffects.sqf"; };
    class hearing                   { file = "x\x39\medicalretro\core\hearing.sqf"; };
};
class BlackOutSystem
{
    class BOS_ChangeState           { file = "x\x39\medicalretro\core\BlackOutSystem\ChangeState.sqf"; };
    class BOS_WakeUnit              { file = "x\x39\medicalretro\core\BlackOutSystem\WakeUnit.sqf"; };
    class BOS_BlackOutUnit          { file = "x\x39\medicalretro\core\BlackOutSystem\BlackOutUnit.sqf"; };
    class BOS_ChangeDisplayText     { file = "x\x39\medicalretro\core\BlackOutSystem\ChangeDisplayText.sqf"; };
    class BOS_CheckConditions       { file = "x\x39\medicalretro\core\BlackOutSystem\CheckConditions.sqf"; };
    class BOS_IsAwake               { file = "x\x39\medicalretro\core\BlackOutSystem\IsAwake.sqf"; };
};
class GettersAndSetters
{
    class getPain                   { file = "x\x39\medicalretro\core\xetter\getPain.sqf"; };
    class setPain                   { file = "x\x39\medicalretro\core\xetter\setPain.sqf"; };
    class addPain                   { file = "x\x39\medicalretro\core\xetter\addPain.sqf"; };
    class getBloodloss              { file = "x\x39\medicalretro\core\xetter\getBloodloss.sqf"; };
    class setBloodloss              { file = "x\x39\medicalretro\core\xetter\setBloodloss.sqf"; };
    class addBloodloss              { file = "x\x39\medicalretro\core\xetter\addBloodloss.sqf"; };
};
class EventCallbacks
{
    class CB_46_OnKeyDown           { file = "x\x39\medicalretro\core\EventCallbacks\46_OnKeyDown.sqf"; };
    class CB_Object_HandleDamage    { file = "x\x39\medicalretro\core\EventCallbacks\Object_HandleDamage.sqf"; };
    class B_Object_FiredNear        { file = "x\x39\medicalretro\core\EventCallbacks\Object_FiredNear.sqf"; };
};
class ModTick
{
    class MT_Init                   { file = "x\x39\medicalretro\core\ModTick\Init.sqf"; };
    class MT_Uninit                 { file = "x\x39\medicalretro\core\ModTick\Uninit.sqf"; };
    class MT_DoTick                 { file = "x\x39\medicalretro\core\ModTick\DoTick.sqf"; };
    
    class MT_PublishUserVariables   { file = "x\x39\medicalretro\core\ModTick\tick_PublishUserVariables.sqf"; };
    class MT_UpdateDrugs            { file = "x\x39\medicalretro\core\ModTick\tick_UpdateDrugs.sqf"; };
    class MT_Blackout                { file = "x\x39\medicalretro\core\ModTick\tick_Blackout.sqf"; };
};

class UI
{
    class BlackOutScreen_onLoad        { file = "x\x39\medicalretro\core\ui\BlackOutScreen_onLoad.sqf"; };
    class BlackOutScreen_onUnload    { file = "x\x39\medicalretro\core\ui\BlackOutScreen_onUnload.sqf"; };
};