            [$INDEX$] = 
            {
                ["alt"] = $ALTITUDE$,
                ["alt_type"] = "BARO",
                ["livery_id"] = "default",
                ["skill"] = "$SKILL$",
                ["speed"] = 138.88888888889,
$EXTRALUA$
                ["AddPropAircraft"] = 
                {
$PROPSLUA$
                }, -- end of ["AddPropAircraft"]
                ["type"] = "$TYPE$",
                ["unitId"] = $ID$,
                ["psi"] = 0,
                ["parking_id"] = "$PARKINGID$",
                ["y"] = $Y$,
                ["x"] = $X$,
                ["name"] = "$NAME$",
                ["payload"] = 
                {
                    ["pylons"] = 
                    {
$PAYLOADPYLONS$
                    }, -- end of ["pylons"]
$PAYLOADCOMMON$
                }, -- end of ["payload"]
                ["heading"] = $HEADING$,
                ["callsign"] = $CALLSIGN$,
                ["onboard_num"] = "$ONBOARDNUMBER$",
                ["Radio"] = 
                {
$RADIOPRESETSLUA$
                }
            }, -- end of [$INDEX$]
