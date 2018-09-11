# DDLC-3DS
A Doki Doki Literature Club port for the 3DS! Programmed in Lua, running under the LovePotion framework.

This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe

This is for 3DS systems, but it also works on other platforms that support LÖVE or LovePotion. On those, it will still have 2 screens like the 3DS.

**Locations of save files:**

| Platform | Location                            |
|----------|-------------------------------------|
| 3DS      | sdmc:/3ds/data/LovePotion/DDLC-3DS/ |
| Switch   | sdmc:/switch/DDLC-3DS/              |
| Windows  | %appdata%\LOVE\DDLC-3DS\            |

You can reset the save data and start over by deleting all of the files on that folder. This is also mentioned in the help menu.

New 3DS/2DS users should disable L2 Cache before playing this. (?)

### Building (LovePotion 3DS):
- Simply run `make` for a 3dsx build or `make cia` for a cia build. LovePotion .elf and tools are provided.

### Running:
- 3DSX - Download the zip from the [releases](https://github.com/LukeZGD/DDLC-3DS/releases), then extract the folder with the .3dsx and the game folder in the 3ds folder of your SD card. You can now run this with the homebrew launcher. (This is only tested in Rosalina homebrew launcher, it may not work in *hax)

- CIA - Install the .cia file from the [releases](https://github.com/LukeZGD/DDLC-3DS/releases) using any CIA installer of your choice.

- Switch - [Running LovePotion (Switch)](https://github.com/TurtleP/LovePotion/wiki/Running-(Switch))

- PC - Drag the game folder to LÖVE 11.1

**Credits to TurtleP for LovePotion!**
