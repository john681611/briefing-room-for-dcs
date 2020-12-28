﻿/*
==========================================================================
This file is part of Briefing Room for DCS World, a mission
generator for DCS World, by @akaAgar (https://github.com/akaAgar/briefing-room-for-dcs)

Briefing Room for DCS World is free software: you can redistribute it
and/or modify it under the terms of the GNU General Public License
as published by the Free Software Foundation, either version 3 of
the License, or (at your option) any later version.

Briefing Room for DCS World is distributed in the hope that it will
be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Briefing Room for DCS World. If not, see https://www.gnu.org/licenses/
==========================================================================
*/

namespace BriefingRoom4DCSWorld.DB
{
    /// <summary>
    /// Stores settings (number of units, etc.) about a level of enemy air defense.
    /// </summary>
    public struct DatabaseCommonAirDefenseInfo
    {
        /// <summary>
        /// Chance (percentage) to have "embedded" short-range air-defense units included in objective groups.
        /// </summary>
        public double EmbeddedChance { get; }
        
        /// <summary>
        /// Min/max number of short-range air-defense units to "embed" in objective groups.
        /// </summary>
        public MinMaxI EmbeddedUnitCount { get; }

        /// <summary>
        /// Min/max number of air-defense groups of each range to add near the objectives.
        /// </summary>
        public MinMaxI[] GroupsInArea { get; }

        /// <summary>
        /// Constructor.
        /// </summary>
        /// <param name="ini">.ini file from which to load air defense common settings</param>
        /// <param name="airDefenseLevel">Level of air defense for which this setting applies.</param>
        public DatabaseCommonAirDefenseInfo(INIFile ini, AmountN airDefenseLevel)
        {
            int i;
            GroupsInArea = new MinMaxI[Toolbox.EnumCount<AirDefenseRange>()];

            if (airDefenseLevel == AmountN.None)
            {
                EmbeddedChance = 0;
                EmbeddedUnitCount = new MinMaxI(0, 0);
                for (i = 0; i < Toolbox.EnumCount<AirDefenseRange>(); i++)
                    GroupsInArea[i] = new MinMaxI(0, 0);

                return;
            }

            EmbeddedChance = Toolbox.Clamp(ini.GetValue<int>("AirDefense", $"{airDefenseLevel}.Embedded.Chance"), 0, 100) / 100.0;
            EmbeddedUnitCount = ini.GetValue<MinMaxI>("AirDefense", $"{airDefenseLevel}.Embedded.UnitCount");

            for (i = 0; i < Toolbox.EnumCount<AirDefenseRange>(); i++)
                GroupsInArea[i] = ini.GetValue<MinMaxI>("AirDefense", $"{airDefenseLevel}.GroupsInArea.{(AirDefenseRange)i}");
        }
    }
}
