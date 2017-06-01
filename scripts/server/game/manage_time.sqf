private [ "_accelerated_time" ];

while { true } do {
	if ( GRLIB_shorter_nights && ( daytime > 19 || daytime < 6 ) ) then {
		_accelerated_time = GRLIB_time_factor * 45;
		if ( _accelerated_time > 100 ) then {
			_accelerated_time = 100;
		};
		setTimeMultiplier _accelerated_time;
	} else {
		setTimeMultiplier GRLIB_time_factor;
	};
	sleep 10;
};
