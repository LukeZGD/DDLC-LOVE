# DDLC-LOVE
A Doki Doki Literature Club port for the Nintendo Switch, PSP, and PS Vita! Programmed in Lua, running under the LovePotion framework (Switch) / LOVE-OneLua and OneLua interpreter (PSP and PS Vita)

This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe

**Some note/s:**
- DDLC-LOVE will not run on PSP 1000 systems. It does not have enough memory for it.
- The 3DS version of this port, DDLC-3DS, will be found in the master branch of this repo. I won't continue development for it anymore, so ddlclove is now the default branch.

**Locations of save files:**

| Platform | Location                            |
|----------|-------------------------------------|
| Switch   | sdmc:/switch/DDLC-LOVE/             |
| PSP      | ms0:/data/DDLC-LOVE/savedata/       |
| PS Vita  | ux0:/data/DDLC-LOVE/savedata/       |
| Windows  | %appdata%\LOVE\DDLC-LOVE\           |

You can reset the save data and start over by deleting all of the save files. This is also mentioned in the help menu.

### Building:
- Switch - Instructions are in [here](https://github.com/TurtleP/LovePotion/wiki/Packaging-Your-Game)

- PS Vita - All 3 versions share the same code. To build the PS Vita version, Put the entire game folder in the "PSVita Assets" folder, but do not overwrite files. Also include script.lua and LOVE-OneLua folder beside the game folder. Use the ONEmakerGUI included with ONEluav4R1 to build a .vpk

- PSP - No need for building, but files need to be copied (same instructions like the PS Vita version, but for the PSP Assets)

### Running:
- Switch - [Running LovePotion (Switch)](https://github.com/TurtleP/LovePotion/wiki/Running-(Switch))

- PSP - Download the zip from the releases, and extract the folder with EBOOT.PBP to ms0:/PSP/GAME/

- PS Vita - Install the vpk from the releases.

- PC - Drag the game folder to LÖVE 11.1

**Credits to TurtleP for LovePotion!**

**Credits to the OneLua team for OneLua!**
