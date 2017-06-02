// [EVO] Dan's vehicle respawn script
// Its very basic, but that should hopefully improve performance
// Takes into account changes that have been made to the scripting library
// Will run only on the server, as it only needs to run in one place, but obviously can be used in both singleplayer and multiplayer

_vehicle = _this select 0; //get vehicle's details
_respawntime = 10; //get the init set respawn time
_facingofvehicle = getDir _vehicle; //get original facing
_positionofvehicle = getPosATL _vehicle; //get original position
_vehicletype = typeOf _vehicle; //get the vehicle type
_n = 1;

if(isServer) then{
	while{_n == 1} do{
		if(!alive _vehicle) then { //true if vehicle is not alive or it cannot move
			sleep 230; //change this to what you like, longer will give you a bigger response delay between unit being killed and the vehicle being deleted
			deleteVehicle _vehicle; //clear up old vehicle
			sleep _respawntime; // respawn time between deletion and then respawn
			_vehicle = _vehicletype createVehicle _positionofvehicle; // create a new vehicle of same type at starting position
			_vehicle allowDamage false;
			_vehicle setPosATL _positionofvehicle; //set correct position
			_vehicle setDir _facingofvehicle; //set correct facing of the vehicle
			[[[_vehicle,_respawntime],"drone_respawn.sqf"],"BIS_fnc_execVM",false,false] spawn BIS_fnc_MP; //replacement for the old setVehicleInit, this does the same and causes the new vehicle to have the respawn script when created
			sleep 2;
			_vehicle allowDamage true;
			_n = 0; // break out condition
		};
		if(alive _vehicle and {alive _x} count crew _vehicle == 0) then{
			createVehicleCrew _vehicle;
			sleep 1;
			_vehicle animate ["wing_fold_l", 1]; 
			_vehicle animate ["wing_fold_r", 1]; 
		}else{
			sleep 60;
		}		// sleep for a bit in order to reduce processing calls (increase this to whatever you like, longer gives better performance but also increases response delay)
	};
};