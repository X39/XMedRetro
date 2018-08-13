/*
 * Author:
 *      X39
 * 
 * Description:
 *      Handles the damage a unit receives.
 *      Executes local.
 * 
 * Arguments:
 *      [
 *          <object> unit,
 *          <object> vehicle,
 *          <scalar> distance (max 69),
 *          <string> weapon,
 *          <string> muzzle,
 *          <string> mode,
 *          <string> ammo,
 *          <object> gunner
 *      ]
 * 
 * Return:
 *      -/-
 */

#define DISABLERETURN
#include "\x\x39\medicalretro\core\defaultSQF.hpp"
#include "\x\x39\medicalretro\core\header.hpp"

params ["_unit", "_vehicle", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];

if !(_unit getVariable ["X39_XMR_var_hasEarplugs", false]) then {
    private _dstprc = _distance / 69 * X39_XMR_SETTING_HEARING_DistanceMultiplicator;
    private _ammoclass = configFile >> "CfgAmmo" >> _ammo;
    private _valHit = getNumber (_ammoclass >> "hit");
    private _valCaliber = getNumber (_ammoclass >> "caliber");
    _fixVal = (_valHit * _valCaliber * _dstprc)* X39_XMR_SETTING_HEARING_LoudnessMultiplicator;
    //_this setVariable ["X39_XMR_var_deafness", 0];
};

#include "\x\x39\medicalretro\core\footer.hpp"