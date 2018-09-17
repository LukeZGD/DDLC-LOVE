# DDLC-LOVE
A Doki Doki Literature Club port for the Nintendo Switch, PSP, and PS Vita! Programmed in Lua, running under the LovePotion framework (Switch) / LOVE-OneLua and OneLua interpreter (PSP and PS Vita)

This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe

**Locations of save files:**

| Platform | Location                            |
|----------|-------------------------------------|
| Switch   | sdmc:/switch/DDLC-LOVE/             |
| PSP      | Saved Data Utility                  |
| PS Vita  | ux0:/data/DDLC-LOVE/savedata/       |
| Windows  | %appdata%\LOVE\DDLC-LOVE\           |

You can reset the save data and start over by deleting all of the save files. This is also mentioned in the help menu.

### Building:
- Switch - Instructions are in [here](https://github.com/TurtleP/LovePotion/wiki/Packaging-Your-Game)

- PS Vita - Switch and PS Vita versions share the same code. To build the PS Vita version, replace the existing audio, fonts, and images folders with the ones in the "PSVita Assets" folder, and also include script.lua and LOVE-OneLua folder with the game folder. Use the ONEmakerGUI included with ONEluav4R1 to build a .vpk

### Running:
- Switch - [Running LovePotion (Switch)](https://github.com/TurtleP/LovePotion/wiki/Running-(Switch))

- PSP - Download the zip from the releases, and extract the folder with EBOOT.PBP to ms0:/PSP/GAME/

- PS Vita - Install the vpk from the releases.

- PC - Drag the game folder to LÖVE 11.1

**Credits to TurtleP for LovePotion!**
**Credits to the OneLua team for OneLua!**
