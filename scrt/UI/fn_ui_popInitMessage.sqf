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
    "Please take moment to read over the rules and tips.",
    "Have fun, and always have someone to game with!",
    "",
    "#==#==#==#==#  R U L E S  #==#==#==#==#",
    "",
    "1. Listen to the staff. Admins: InsaneSushi and FLParcival, Moderators: Wardi and RooseveltCat.",
    "",
    "2. Must speak English. If not available on Voice Comms, make sure to be able to listen and read",
    "      player messages in chat.",
    "",
    "3. Our default channel for chatting and Tactical pings is Side Channel.",
    "",
    "4. Do not blow up empty vehicles without reason. They are all assets in our revolution.",
    "",
    "5. Avoid civilian casualties and/or property damage. Indirect fire against cities is prohibited.",
    "",
    "6. Our base uniform is AIR AMBULANCE (yellow). An IR beacon is available in the watch slot.",
    "      Both of these are HIGHLY recommended.",
    "",
    "7. Friendly fire is not! Avoid hitting friendlies or get kicked/banned.",
    "",
    "8. Be respectful to your teammates. Everyone was new once. Help newer players learn instead of criticizing them.",
    "",
    "9. Please refrain from raging/game complaining. If this is not possible, quietly disconnect until you",
    "      have cooled down.",
    "",
    "#==#==#==#==#  T I P S  #==#==#==#==#",
    "",
    "- Capturing",
    format ["      Objectives with a flagpole can't be captured over a distance of %1km from our HQ.", distanceFromHqCap/1000],
    "      Work together to find secure base locations as we move around the map.",
    "",
    "- Death",
    format ["      When you are killed, you will lose %1 percent of your money and be sent back to base.", deathPenalty],
    "      Wait for a revive to avoid the inconvenience!",
    "",
    "- Unlocking gear",
    format ["      We will need %1 of an item in the arsenal to unlock it. Make use of unlocked gear to build up the arsenal.", minWeaps],
    "",
    "- Getting a Loadout",
    "      Find the green arsenal box at HQ. Interact with it to grab some gear.", 
    "      The items with ∞ as the quantity are unlimited.",
    "      Use these so we can save gear for unlocking items later.",
    "",
    "- Fast Travel",
    '      Press Y (Z on Euro keyboards) to bring up the Antistasi menu and choose  "Fast Travel".',
    "",
    "- Vehicles",
    "      To buy, find the red garage box at HQ, or fast travel to the Arms Dealer if we've discovered him.",
    "      You can store vehicles at HQ or the Arms Dealer via the Antistasi Menu -> Put Vehicle Into Garage.",
    "      Access these later in the red garage box at HQ.",
    "",
    "- Missions",
    "      These are important! They help the us gain reputation with the population, obtain new gear, and earn money.",
    "      Talk to Petros if you're the commander or a server member to start a mission.",
    ""
];

// Iterate through the array of items and add them to the listbox
{
    _myListBox lbAdd _x;
    diag_log format ['Adding item: %1', _x];
} forEach _items;