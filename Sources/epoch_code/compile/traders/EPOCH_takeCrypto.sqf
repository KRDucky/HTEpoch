private["_getCrypto","_display"];
if !(isNil "EPOCH_takeCryptoLock") exitWith {};
EPOCH_takeCryptoLock = true;
if (!isNull _this) then {
	if ((typeof _this) == "Land_MPS_EPOCH") then {
		
		_getCrypto = _this getVariable["Crypto", 0];
		// deleteVehicle _this;



		// EPOCH_playerCrypto = (EPOCH_playerCrypto + _getCrypto) min 25000;

		EPOCH_takeCrypto_PVS = [player, Epoch_personalToken, _this];
		publicVariableServer "EPOCH_takeCrypto_PVS";



		_dt = [format["<t size='0.8' shadow='0' color='#99ffffff'>You found %1 Krypto.</t>", _getCrypto], 0, 1, 5, 2, 0, 1] spawn bis_fnc_dynamictext;
	};
};
[] spawn{
	uiSleep 2;
	EPOCH_takeCryptoLock = nil;
};