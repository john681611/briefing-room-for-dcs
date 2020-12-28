[$INDEX$] =
{
  ["visible"] = false,
  ["tasks"] =
  {
  }, -- end of ["tasks"]
  ["uncontrollable"] = false,
  ["route"] =
  {
    ["points"] =
    {
      [1] =
      {
        ["alt"] = -0,
        ["type"] = "Turning Point",
        ["ETA"] = 0,
        ["alt_type"] = "BARO",
        ["formation_template"] = "",
        ["y"] = $Y$,
        ["x"] = $X$,
        ["name"] = "",
        ["ETA_locked"] = true,
        ["speed"] = 0,
        ["action"] = "Turning Point",
        ["task"] =
        {
          ["id"] = "ComboTask",
          ["params"] =
          {
            ["tasks"] = 
            {
                [1] = 
                {
                    ["enabled"] = true,
                    ["auto"] = true,
                    ["id"] = "WrappedAction",
                    ["number"] = 1,
                    ["params"] = 
                    {
                        ["action"] = 
                        {
                            ["id"] = "ActivateBeacon",
                            ["params"] = 
                            {
                                ["type"] = 4,
                                ["AA"] = false,
                                ["unitId"] = 1,
                                ["modeChannel"] = "X",
                                ["channel"] = 74,
                                ["system"] = 3,
                                ["callsign"] = "TKR",
                                ["bearing"] = true,
                                ["frequency"] = 1161000000,
                            }, -- end of ["params"]
                        }, -- end of ["action"]
                    }, -- end of ["params"]
                }, -- end of [1]
                [2] = 
                {
                    ["enabled"] = true,
                    ["auto"] = false,
                    ["id"] = "WrappedAction",
                    ["number"] = 2,
                    ["params"] = 
                    {
                        ["action"] = 
                        {
                            ["id"] = "ActivateICLS",
                            ["params"] = 
                            {
                                ["type"] = 131584,
                                ["channel"] = 11,
                                ["unitId"] = 1,
                            }, -- end of ["params"]
                        }, -- end of ["action"]
                    }, -- end of ["params"]
                }, -- end of [2]
            }, -- end of ["tasks"]
          }, -- end of ["params"]
        }, -- end of ["task"]
        ["speed_locked"] = true,
      }, -- end of [1]
    }, -- end of ["points"]
  }, -- end of ["route"]
  ["groupId"] = $ID$,
  ["hidden"] = $HIDDEN$,
  ["units"] =
  {
    $UNITS$
  }, -- end of ["units"]
  ["y"] = $Y$,
  ["x"] = $X$,
  ["name"] = "$NAME$",
  ["start_time"] = 0,
}, -- end of [$INDEX$]
