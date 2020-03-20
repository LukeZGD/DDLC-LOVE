# DDLC-LOVE

A Doki Doki Literature Club port for the Nintendo 3DS! Programmed in Lua, running under the LovePotion framework.

This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe

**Some notes:**
- This branch is for **3DS systems only**.
- This branch should also work on other platforms that support LÖVE (0.10.2 and later). This is for testing purposes only, please go to the [ddlclove](https://github.com/LukeZGD/DDLC-LOVE/tree/ddlclove/) branch for proper support on other platforms
- Only the **latest Luma3DS CFW** is supported.
- New 3DS/2DS users should disable L2 Cache before playing this. (See [#7](https://github.com/LukeZGD/DDLC-LOVE/issues/7))
- **Any further updates will be very minor changes or fixes only.**


**Locations of save files:**

| Platform | Location                            |
|----------|-------------------------------------|
| 3DS      | sdmc:/3ds/data/DDLC-3DS/            |
| Other    | [love.filesystem](https://love2d.org/wiki/love.filesystem)|

You can reset the save data and start over by deleting all of the files on that folder. This is also mentioned in the help menu.



### Building:
- Set `LOVEPOTION_3DS` to path to [LovePotion 1.0.9](https://github.com/TurtleP/LovePotion/releases/tag/1.0.9) first!

`export LOVEPOTION_3DS=<path to>/LovePotion.elf`
    
- Run `make` for a 3dsx build or `make cia` for a cia build.

### Running:
- 3DSX - Put the .3dsx to the 3ds folder to the root of your SD card. ou can now run this with the homebrew launcher. You can now run DDLC-LOVE from the homebrew menu (CFW ONLY)

- CIA - Install the .cia file from the [releases](https://github.com/LukeZGD/DDLC-3DS/releases) using any CIA installer of your choice. You can now run DDLC-LOVE from the home screen

- PC - Drag the game folder to LÖVE 0.10.2 / 11.x

**Credits to TurtleP for [LovePotion](https://github.com/TurtleP/LovePotion)!**



