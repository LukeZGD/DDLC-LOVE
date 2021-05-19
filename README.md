<div align="center">
  <img src="https://github.com/LukeZGD/DDLC-LOVE-Assets/raw/master/icon.png"/>
  <h1>DDLC-LOVE</h1>
  <h3>Will you write the way into her heart?</h3>
</div>

**DDLC-LOVE** is a Doki Doki Literature Club port programmed in Lua for the **Nintendo Switch, 3DS, Sony PS Vita, PSP, and PS3!**

**This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: http://ddlc.moe**

## Downloads:
- [PS Vita v1.2.0 (.vpk)](https://github.com/LukeZGD/DDLC-LOVE/releases/download/v1.2.0/DDLC-LOVE.vpk)
- [Switch v1.1.9 (.nro)](https://github.com/LukeZGD/DDLC-LOVE/releases/download/v1.1.9/DDLC-LOVE-Switch-fix2.nro)
- [Switch v1.1.9 (.nro) (LP1.1.0)](https://github.com/LukeZGD/DDLC-LOVE/releases/download/v1.1.9/DDLC-LOVE-Switch-LP1.1.0.nro)
- [PSP v1.1.9 (.zip)](https://github.com/LukeZGD/DDLC-LOVE/releases/download/v1.1.9/DDLC-LOVE-PSP-fix1.zip)
- [PS3 v1.1.9 (.zip)](https://github.com/LukeZGD/DDLC-LOVE/releases/download/v1.1.9/DDLC-LOVE-PS3-fix1.zip)
- [3DS v1.1.8-2 (.3dsx)](https://github.com/LukeZGD/DDLC-LOVE/releases/download/v1.1.9/DDLC-LOVE-3DS.3dsx)
- [3DS v1.1.8-2 (.cia)](https://github.com/LukeZGD/DDLC-LOVE/releases/download/v1.1.9/DDLC-LOVE-3DS.cia)

## Usage:
- **Switch** - Run the `.nro` with [Atmosphère](https://github.com/Atmosphere-NX/Atmosphere) title takeover functionality. Other methods can be found [here](https://turtlep.github.io/LovePotion/wiki/#/packaging)
- **3DS .3dsx** - Put the `.3dsx` to the `3ds` folder on the root of your SD card. You can now run DDLC-LOVE from [The Homebrew Launcher](https://github.com/fincs/new-hbmenu)
- **3DS .cia** - Install the `.cia`  using [FBI](https://github.com/Steveice10/FBI). You can now run DDLC-LOVE from the home menu
- **PS Vita** - Install the `.vpk` using [VitaShell](https://github.com/TheOfficialFloW/VitaShell). You can now run DDLC-LOVE from the home screen
- **PSP** - Download the `.zip` for the PSP version, and extract the folder with `EBOOT.PBP` to your memory stick at `ms0:/PSP/GAME/`. You can now run DDLC-LOVE from the XMB
- **PS3:**
  1. Download the `.zip` for the PS3 version.
  2. Extract all files of the `.zip` to the root of a compatible USB drive to be used for the PS3, and install `Lua Player PS3.pkg` (you need CFW/[HEN](https://www.psx-place.com/threads/update-ps3hen-v3-0-0-view-latest-changes-to-the-ps3-exploit-for-superslims-noncfw-models.23955/) to get Package Manager). This only needs to be done once for setting up
  3. To run the game, insert the USB drive to the [rightmost USB slot](https://postimg.cc/jnryRhtb) and launch Lua Player PS3 from the XMB 


## Some notes:
- DDLC-LOVE versions for all systems except the PS Vita will no longer be updated.
- Limited support for Switch, PSP, 3DS, and PS3 (see [#123](https://github.com/LukeZGD/DDLC-LOVE/issues/123))
- (Switch) Only **[Atmosphère](https://github.com/Atmosphere-NX/Atmosphere)** is supported.
- (Switch) (LP1.1.0) For Atmosphère 0.10.2 and up, add `enable_deprecated_hid_mitm = u8!0x1` in `sdmc:/atmosphere/config/system_settings.ini` under `[Atmosphere]` (see [#111](https://github.com/LukeZGD/DDLC-LOVE/issues/111))
- (3DS) Only the **latest [Luma3DS](https://github.com/AuroraWright/Luma3DS)** is supported.
- (3DS) Make sure that `dspfirm.cdc` is dumped for audio to work (use [DSP1](https://github.com/zoogie/DSP1/releases))
- (PSP) PSP 1000 systems are not supported.

## Locations of save files:

- You can reset the save data and start over by deleting the save file folder. This is also mentioned in the help menu ingame.

| Platform | Location                            |
|----------|-------------------------------------|
| PS Vita  | ux0:/data/DDLC-LOVE/savedata/       |
| Switch   | sdmc:/switch/DDLC-LOVE/             |
| PSP      | ms0:/PSP/GAME/DDLC-LOVE/savedata/   |
| 3DS      | sdmc:/3ds/data/DDLC-LOVE/           |
| PS3      | dev_usb000:/DDLC-LOVE/savedata/     |
| Other    | see [love.filesystem](https://love2d.org/wiki/love.filesystem)|

## Building:
- Game assets and other stuff are needed to be prepared first from the [DDLC-LOVE-Assets](https://github.com/LukeZGD/DDLC-LOVE-Assets) repo.
- For all Sony devices, [LOVE-WrapLua](https://github.com/LukeZGD/LOVE-WrapLua) is also required beside the game folder (`index.lua`, `script.lua`, and the `LOVE-WrapLua` folder)

### Credits:
- [LovePotion](https://github.com/TurtleP/LovePotion) by TurtleP is used for the Switch and 3DS versions
- [lpp-vita](https://github.com/Rinnegatamante/lpp-vita/) by Rinnegatamante is used for the PS Vita version
- [OneLua](http://onelua.x10.mx/) by OneLua Team is used for the PSP version
- [Lua Player PS3](https://store.brewology.com/ahomebrew.php?brewid=212) by 3141card is used for the PS3 version
- [Spanish translation](https://tradusquare.es/ficha.php?ddlc) by GlowTranslations

