# DDLC-LOVE

A Doki Doki Literature Club port for the Nintendo 3DS! Programmed in Lua, running under the LovePotion framework.

This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe

This is for 3DS systems, but it also works on other platforms that support LÖVE (0.10.2 and later). On those, it will still have 2 screens like the 3DS.

**Some notes:**
- Only the **latest Luma3DS CFW** is supported.
- **I don’t have enough interest in developing this, or in DDLC anymore. There will be no more updates from me.**


**Locations of save files:**

| Platform | Location                            |
|----------|-------------------------------------|
| 3DS      | sdmc:/3ds/data/DDLC-LOVE/           |
| Windows  | %appdata%\LOVE\DDLC-3DS\            |

You can reset the save data and start over by deleting all of the files on that folder. This is also mentioned in the help menu.

New 3DS/2DS users should disable L2 Cache before playing this. (?)

### Building (LovePotion 3DS):
- Simply run `make` for a 3dsx build or `make cia` for a cia build.

### Running:
- 3DSX - Download the .zip from the [releases](https://github.com/LukeZGD/DDLC-3DS/releases), then extract the 3ds folder to the root of your SD card. ou can now run this with the homebrew launcher. (CFW ONLY)

- CIA - Install the .cia file from the [releases](https://github.com/LukeZGD/DDLC-3DS/releases) using any CIA installer of your choice.

- PC - Drag the game folder to LÖVE 0.10.2 / 11.1

**Credits to TurtleP for LovePotion!**
https://github.com/TurtleP/LovePotion


