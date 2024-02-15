disableSerialization;

params ["_myListBox"];
diag_log "************ POPULATING INIT MESSAGE *************";

// Lines to be added:
// Max column @ 117
// Middle char ~ 67
_items = [
    "#==#==#==#==#  Welcome the Professionals Gaming Community Antistasi!  #==#==#==#==#",
    "",
    "Tailored for the PGC by RooseveltCat",
    "",
    "Please take moment to read over the rules and guides.",
    "Have fun, and always have someone to game with!",
    "",
    "#==#==#==#==#  R U L E S  #==#==#==#==#",
    "",
    "1. Listen to the staff. Your admins are InsaneSushi and FLParcival, moderators are Wardi and RooseveltCat.",
    "2. Must speak English. If not available on Voice Comms, make sure to be able to listen and read",
    "      player messages in chat.",
    "3. Our default channel for chatting and Tactical pings is Side Channel.",
    "4. Do not blow up empty vehicles for no reason. They are all assets in our revolution.",
    "5. Avoid civilian casualties and/or property damage. Indirect fire against cities is prohibited.",
    "6. Our base uniform is AIR AMBULANCE (yellow). An IR beacon is available in the watch slot.",
    "      Both of these are HIGHLY recommended.",
    "7. Friendly fire is not! Avoid hitting friendlies or get kicked/banned.",
    "8. Be respectful to your teammates. Everyone was new once. Help newer players learn instead of criticizing them.",
    "9. Please refrain from raging/game complaining. If this is not possible, quietly disconnect until you have cooled down.",
    "",
    "#==#==#==#==#  T I P S  #==#==#==#==#",
    "",
    format ["- Objectives with a flagpole can't be captured over a distance of %1km from our hq.", distanceFromHqCap/1000],
    "      Work together to find secure base locations as we move around the map.",
    "",
    ""
    ];

// Iterate through the array of items and add them to the listbox
{
    _myListBox lbAdd _x;
    diag_log format ['Adding item: %1', _x];
} forEach _items;