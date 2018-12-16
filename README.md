# DDLC-LOVE
A Doki Doki Literature Club port for the Nintendo Switch, PSP, and PS Vita! Programmed in Lua, running under the LovePotion framework (Switch) / LOVE-OneLua and OneLua interpreter (PSP and PS Vita)

This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe

**Some note/s:**
- **DDLC-LOVE will not run properly on PSP 1000 systems.** It does not have enough memory for it.
- The 3DS version of this port, **DDLC-3DS**, will be found in the [master](https://github.com/LukeZGD/DDLC-LOVE/tree/master) branch of this repo. I won't continue development for it anymore, so ddlclove is now the default branch.

**Locations of save files:**

| Platform | Location                            |
|----------|-------------------------------------|
| Switch   | sdmc:/switch/DDLC-LOVE/             |
| PSP      | ms0:/data/DDLC-LOVE/savedata/       |
| PS Vita  | ux0:/data/DDLC-LOVE/savedata/       |
| Windows  | %appdata%\LOVE\DDLC-LOVE\           |

You can reset the save data and start over by deleting all of the save files. This is also mentioned in the help menu.

### Building:
- All 3 versions share the same code, but they all have different processes for building.
- **Switch** - Instructions are in [here](https://github.com/TurtleP/LovePotion/wiki/Packaging-Your-Game)
- **PS Vita and PSP (files setup)** - Put the entire game folder in the "PSVita Assets" or "PSP Assets" folder, but do not overwrite files (except for the audio folder, overwrite that one). [LOVE-OneLua](https://github.com/LukeZGD/LOVE-OneLua) is required beside the game folder (script.lua and the LOVE-OneLua folder). 
- **PS Vita** - use the ONEmakerGUI included with [ONEluav4R1 for the PS Vita](http://onelua.x10.mx/vita/ONEluaVita4R1.rar) to build a .vpk. 
- **PSP** - EBOOT.PBP and oneFont.pgf are required to be beside the game folder. These are included with [ONEluav4R1 for the PSP](http://onelua.x10.mx/psp/ONEluav4R1.rar).

### Running:
- **Switch** - Copy the .nro to sdmc:/switch/ and run it with the homebrew menu. You may also convert the .nro to .nsp with [hacBrewPack](https://github.com/The-4n/hacBrewPack) or other tools.

- **PSP** - Download the zip from the releases, and extract the folder with EBOOT.PBP to ms0:/PSP/GAME/

- **PS Vita** - Install the vpk from the releases.

- **PC** - Drag the game folder to LÖVE 11.x

**Credits to TurtleP for LovePotion!**

**Credits to the OneLua team for OneLua!**
