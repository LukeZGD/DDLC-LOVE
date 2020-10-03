<div align="center">
  <img src="https://github.com/LukeZGD/DDLC-LOVE-Assets/raw/master/icon.png"/>
  <h1>DDLC-LOVE</h1>
  <h3>Will you write the way into her heart?</h3>
</div>

**DDLC-LOVE** is a Doki Doki Literature Club port for the **Nintendo Switch, 3DS, Sony PS Vita, PSP, and PS3!** Programmed in Lua, running under LovePotion for Switch and 3DS, OneLua for PS Vita and PSP, and Lua Player for PS3.

**This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe**

## Some notes:
- (Switch) Only **[Atmosphère](https://github.com/Atmosphere-NX/Atmosphere)** is supported.
- (Switch) (LP1.1.0) For Atmosphère 0.10.2 and up, add `enable_deprecated_hid_mitm = u8!0x1` in `sdmc:/atmosphere/config/system_settings.ini` under `[Atmosphere]` (see [#111](https://github.com/LukeZGD/DDLC-LOVE/issues/111))
- (3DS) Only the **latest [Luma3DS](https://github.com/AuroraWright/Luma3DS)** is supported.
- (3DS) Make sure that `dspfirm.cdc` is dumped for audio to work (use [DSP1](https://github.com/zoogie/DSP1/releases))
- DDLC-LOVE will no longer be updated.

## Usage:
- **Switch** - Run the `.nro` with [Atmosphère](https://github.com/Atmosphere-NX/Atmosphere) title takeover functionality. Other methods can be found [here](https://turtlep.github.io/LovePotion/wiki/#/packaging)
- **3DS .3dsx** - Put the `.3dsx` to the `3ds` folder to the root of your SD card. You can now run DDLC-LOVE from [The Homebrew Launcher](https://github.com/fincs/new-hbmenu)
- **3DS .cia** - Install the `.cia` file from the [releases](https://github.com/LukeZGD/DDLC-LOVE/releases) using [FBI](https://github.com/Steveice10/FBI). You can now run DDLC-LOVE from the home menu
- **PS Vita** - Install the `.vpk` from the releases using [VitaShell](https://github.com/TheOfficialFloW/VitaShell). You can now run DDLC-LOVE from the home screen
- **PSP** - Download the `.zip` for the PSP version from the releases, and extract the folder with `EBOOT.PBP` to your memory stick at `ms0:/PSP/GAME/`. You can now run DDLC-LOVE from the XMB
- **PS3:**
  1. Download the `.zip` for the PS3 version from the releases.
  2. Extract all files of the `.zip` to the root of a compatible USB drive to be used for the PS3, and install `Lua Player PS3.pkg` (you need CFW/[HEN](https://www.psx-place.com/threads/update-ps3hen-v3-0-0-view-latest-changes-to-the-ps3-exploit-for-superslims-noncfw-models.23955/) to get Package Manager). This only needs to be done once for setting up
  3. To run the game, insert the USB drive to the [rightmost USB slot](https://postimg.cc/jnryRhtb) and launch Lua Player PS3 from the XMB 

## Locations of save files:

- You can reset the save data and start over by deleting the save file folder. This is also mentioned in the help menu.

| Platform | Location                            |
|----------|-------------------------------------|
| Switch   | sdmc:/switch/DDLC-LOVE/             |
| 3DS      | sdmc:/3ds/data/DDLC-LOVE/           |
| PS Vita  | ux0:/data/DDLC-LOVE/savedata/       |
| PSP      | ms0:/PSP/GAME/DDLC-LOVE/savedata/   |
| PS3      | dev_usb000:/DDLC-LOVE/savedata/     |
| Other    | see [love.filesystem](https://love2d.org/wiki/love.filesystem)|


## Building:
- Game assets and other stuff are needed to be prepared first from the [DDLC-LOVE-Assets](https://github.com/LukeZGD/DDLC-LOVE-Assets) repo.
- For all Sony devices, [LOVE-WrapLua](https://github.com/LukeZGD/LOVE-WrapLua) and `lv1lua.lua` from DDLC-LOVE-Assets are also required beside the game folder (`script.lua`, `lv1lua.lua`, and the `LOVE-WrapLua` folder)
<br><br>
- **Switch** - Run `make nro` for a .nro build; More details in [here](https://turtlep.github.io/LovePotion/wiki/#/packaging)
- **3DS:**
  1. Set `LOVEPOTION_3DS` to path to [LovePotion 1.0.9](https://github.com/TurtleP/LovePotion/releases/tag/1.0.9) first! eg. `export LOVEPOTION_3DS=<path to>/LovePotion.elf`
  2. Run `make 3dsx` for a .3dsx build or `make cia` for a .cia build.
- **PS Vita** - Get the `sce_sys` folder from DDLC-LOVE-Assets and use the ONEmakerGUI included with [ONEluav4R1 for PS Vita](http://onelua.x10.mx/vita/ONEluaVita4R1.rar) to build a .vpk. 
- **PSP** - `EBOOT.PBP` and `oneFont.pgf` files from [ONEluav4R1 for PSP](http://onelua.x10.mx/psp/ONEluav4R1.rar) are also required to be beside the game folder. You can get `ICON0.PNG` and `PIC1.PNG` from DDLC-LOVE-Assets as well.

### Credits:
- **TurtleP** - [LovePotion](https://github.com/TurtleP/LovePotion)
- **OneLua Team** - [OneLua](http://onelua.x10.mx/)
- **3141card** - [Lua Player PS3](https://store.brewology.com/ahomebrew.php?brewid=212)
- **GlowTranslations** - [Spanish translation](https://tinyurl.com/ddlcglow)
