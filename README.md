# DDLC-LOVE
A Doki Doki Literature Club port for the Nintendo Switch, PSP, PS Vita, and PS3! Programmed in Lua, running under the LovePotion for Switch, OneLua for PSP and PS Vita, and Lua Player for PS3.

This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe

**Some note/s:**
- **DDLC-LOVE will not run on PSP 1000 systems.** It does not have enough memory for it.
- **I don’t have enough interest in developing this, or in DDLC anymore. Any further updates will be very minor and will be for Switch and Vita versions only.**
- The 3DS version of this port is found in the [master](https://github.com/LukeZGD/DDLC-LOVE/tree/master) branch of this repo.

**Locations of save files:**

| Platform | Location                            |
|----------|-------------------------------------|
| Switch   | sdmc:/switch/DDLC-LOVE/             |
| PSP      | ms0:/data/DDLC-LOVE/savedata/       |
| PS Vita  | ux0:/data/DDLC-LOVE/savedata/       |
| PS3      | root of USB drive                   |
| Windows  | %appdata%\LOVE\DDLC-LOVE\           |

You can reset the save data and start over by deleting all of the save files. This is also mentioned in the help menu.

### Building:
- All versions share the same code, but they all have different processes for building.
- Game assets need to be prepared first in game/assets folder, from the [DDLC-LOVE-Assets](https://github.com/LukeZGD/DDLC-LOVE-Assets) repo.
- For all Sony devices, [LOVE-WrapLua](https://github.com/LukeZGD/LOVE-WrapLua) is also required beside the game folder (script.lua/index.lua and the LOVE-WrapLua folder).
- **Switch** - Instructions are in [here](https://turtlep.github.io/LovePotion/wiki/#/packaging)
- **PS Vita** - use the ONEmakerGUI included with [ONEluav4R1 for the PS Vita](http://onelua.x10.mx/vita/ONEluaVita4R1.rar) to build a .vpk. 
- **PSP** - EBOOT.PBP and oneFont.pgf files from [ONEluav4R1 for the PSP](http://onelua.x10.mx/psp/ONEluav4R1.rar) are also required to be beside the game folder. You may want to also change the ICON0.PNG and PIC1.PNG of the EBOOT.

### Running:
- **Switch** - Run the .nro with Atmosphère's title takeover functionality. Other methods can be found in [here](https://turtlep.github.io/LovePotion/wiki/#/packaging)

- **PSP** - Download the zip from the releases, and extract the folder with EBOOT.PBP to ms0:/PSP/GAME/

- **PS Vita** - Install the vpk from the releases.

- **PS3**
1. Install [Lua Player PS3](https://store.brewology.com/ahomebrew.php?brewid=212) to your PS3 (you need CFW/HAN/HEN to get Package Manager)
2. Extract all files of the zip to the root of a USB drive to be used for the PS3
3. Insert the USB drive to the rightmost USB slot (dev_usb000)
4. Launch Lua Player PS3

- **PC** - Drag the game folder to LÖVE 11.x

### Credits:
- **TurtleP** - LovePotion
- **OneLua Team** - OneLua
- **3141card** - Lua Player PS3
