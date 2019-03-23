# DDLC-LOVE
A Doki Doki Literature Club port for the Nintendo Switch, PSP, and PS Vita! Programmed in Lua, running under the LovePotion framework for Switch, lpp-vita for Vita, and OneLua for PSP.

This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe

**Some note/s:**
- **DDLC-LOVE will not run on PSP 1000 systems.** It does not have enough memory for it.
- The 3DS version of this port, **DDLC-3DS**, will be found in the [master](https://github.com/LukeZGD/DDLC-LOVE/tree/master) branch of this repo.

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
- **Switch** - Instructions are in [here](https://turtlep.github.io/LovePotion/wiki/#/packaging)
- **PS Vita and PSP (prerequisite)** - Put the entire game folder in the "PSVita Assets" or "PSP Assets" folder, but do not overwrite files. [LOVE-WrapLua](https://github.com/LukeZGD/LOVE-WrapLua) is required beside the game folder (script.lua/index.lua and the LOVE-WrapLua folder). 
- **PS Vita** - Use the latest [lpp-vita nightly](http://rinnegatamante.it/lpp-nightly.php) to build a .vpk.
- **PSP** - EBOOT.PBP and oneFont.pgf files from [ONEluav4R1 for the PSP](http://onelua.x10.mx/psp/ONEluav4R1.rar) are also required to be beside the game folder. You may want to also change the ICON0.PNG and PIC1.PNG of the EBOOT.

### Running:
- **Switch** - Run the .nro with Atmosphère's title takeover functionality. Other methods can be found in [here](https://turtlep.github.io/LovePotion/wiki/#/packaging)

- **PSP** - Download the zip from the releases, and extract the folder with EBOOT.PBP to ms0:/PSP/GAME/

- **PS Vita** - Install the vpk from the releases.

- **PC** - Drag the game folder to LÖVE 11.x

### Credits:
- **TurtleP** - LovePotion
- **OneLua Team** - OneLua
- **Rinnegatamante** - lpp-vita
