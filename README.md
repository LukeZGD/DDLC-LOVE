# DDLC-LOVE
DDLC-LOVE is a cross-platform Doki Doki Literature Club port for the Nintendo 3DS, Nintendo Switch, PSP, and PS Vita! Programmed in Lua, running under the LovePotion framework (3DS and Switch) / LOVE-OneLua and OneLua interpreter (PSP and PS Vita)

This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe

**Some note/s:**
- DDLC-LOVE will not run on PSP 1000 systems. It does not have enough memory for it.

**Locations of save files:**

| Platform | Location                            |
|----------|-------------------------------------|
| 3DS      | sdmc:/3ds/data/LovePotion/DDLC-3DS/ |
| Switch   | sdmc:/switch/DDLC-LOVE/             |
| PSP      | ms0:/data/DDLC-LOVE/savedata/       |
| PS Vita  | ux0:/data/DDLC-LOVE/savedata/       |
| Windows  | %appdata%\LOVE\DDLC-LOVE\           |

You can reset the save data and start over by deleting all of the save files. This is also mentioned in the help menu.

### Building:

- 3DS - Simply run `make` for a 3dsx build or `make cia` for a cia build. LovePotion 1.0.9 .elf and tools are provided.

- Switch - Instructions are in [here](https://github.com/TurtleP/LovePotion/wiki/Packaging-Your-Game)

- PS Vita - All 3 versions share the same code. To build the PS Vita version, Put the entire game folder in the "PSVita Assets" folder, but do not overwrite files. Also include script.lua and LOVE-OneLua folder beside the game folder. Use the ONEmakerGUI included with ONEluav4R1 to build a .vpk

- PSP - No need for building, but files need to be copied (same instructions like the PS Vita version, but for the PSP Assets)

### Running:

- 3DSX - Download the zip from the [releases](https://github.com/LukeZGD/DDLC-3DS/releases), then extract the folder with the .3dsx and the game folder in the 3ds folder of your SD card. You can now run this with the homebrew launcher. (This is only tested in Rosalina homebrew launcher, it may not work in *hax)

- CIA - Install the .cia file from the [releases](https://github.com/LukeZGD/DDLC-3DS/releases) using any CIA installer of your choice.

- Switch - [Running LovePotion (Switch)](https://github.com/TurtleP/LovePotion/wiki/Running-(Switch))

- PSP - Download the zip from the releases, and extract the folder with EBOOT.PBP to ms0:/PSP/GAME/

- PS Vita - Install the vpk from the releases.

- PC - Drag the game folder to LÖVE 0.10.2 (3DS version only) or 11.x

**Credits to TurtleP for LovePotion!**

**Credits to the OneLua team for OneLua!**
