<div align="center">
  <img src="https://github.com/LukeZGD/DDLC-LOVE/raw/ddlclove/logo.png"/>
  <h1>DDLC-LOVE</h1>
  <h3>Will you write the way into her heart?</h3>
</div>

- **DDLC-LOVE** is a Doki Doki Literature Club port programmed in Lua for the **Nintendo Switch, 3DS, Sony PS Vita, PSP, and PS3!**
- **This port is unofficial and is not affiliated with Team Salvato. Please support the official game. You can download Doki Doki Literature Club at: https://ddlc.moe**
- **For the full experience of the game on the PC, Switch, and other consoles, please support Team Salvato and buy DDLC Plus! Get the official console versions at: https://ddlc.plus**

## Downloads:
- [PS Vita v1.2.2 (.vpk)](https://github.com/LukeZGD/DDLC-LOVE/releases/download/v1.2.2/DDLC-LOVE.vpk)
- [LÖVE v1.2.2 (.love)](https://github.com/LukeZGD/DDLC-LOVE/releases/download/v1.2.2/DDLC-LOVE.love)
- [PSP v1.1.9 (.zip)](https://github.com/LukeZGD/DDLC-LOVE/releases/download/v1.1.9/DDLC-LOVE-PSP-fix3.zip)
- [Other versions](https://github.com/LukeZGD/DDLC-LOVE/releases/v1.1.9) (not recommended)
- **Note:** Limited support for PSP, Switch, 3DS, and PS3. Playing the DDLC-LOVE versions for these systems is not recommended. For more details, see [#123](https://github.com/LukeZGD/DDLC-LOVE/issues/123)

## Usage:
- **PS Vita** - Install the `.vpk` using [VitaShell](https://github.com/TheOfficialFloW/VitaShell). You can now run DDLC-LOVE from the home screen
- **LÖVE** - Run the LÖVE executable (`.love`) using LÖVE versions 0.10.2 and newer
- **Switch** - Run the `.nro` with [Atmosphère](https://github.com/Atmosphere-NX/Atmosphere) title takeover functionality. The LÖVE executable (`.love`) may also be used. More details can be found in [lovebrew](https://lovebrew.org/#/packaging)
- **PSP** - Download the `.zip` for the PSP version, and extract the folder with `EBOOT.PBP` to your memory stick at `ms0:/PSP/GAME/`. You can now run DDLC-LOVE from the XMB
- **3DS .3dsx** - Put the `.3dsx` to the `3ds` folder on the root of your SD card. You can now run DDLC-LOVE from [The Homebrew Launcher](https://github.com/fincs/new-hbmenu)
- **3DS .cia** - Install the `.cia`  using [FBI](https://github.com/Steveice10/FBI). You can now run DDLC-LOVE from the home menu
- **PS3:**
  1. Download the `.zip` for the PS3 version.
  2. Extract all files of the `.zip` to the root of a compatible USB drive to be used for the PS3, and install `Lua Player PS3.pkg` (you need CFW/[HEN](https://www.psx-place.com/threads/update-ps3hen-v3-0-0-view-latest-changes-to-the-ps3-exploit-for-superslims-noncfw-models.23955/) to get Package Manager). This only needs to be done once for setting up
  3. To run the game, insert the USB drive to the [rightmost USB slot](https://postimg.cc/jnryRhtb) and launch Lua Player PS3 from the XMB 


## Locations of save files:
- You can reset the save data and start over by deleting the save file folder. This is also mentioned in the help menu ingame.

| Platform | Location                            |
|----------|-------------------------------------|
| PS Vita  | ux0:/data/DDLC-LOVE/savedata/       |
| PSP      | ms0:/PSP/GAME/DDLC-LOVE/savedata/   |
| Switch   | sdmc:/switch/DDLC-LOVE/             |
| 3DS      | sdmc:/3ds/data/DDLC-LOVE/           |
| PS3      | dev_usb000:/DDLC-LOVE/savedata/     |
| Other    | see [love.filesystem](https://love2d.org/wiki/love.filesystem)|

## Building:
- For v1.2.1, game assets are to be extracted from the v1.2.1 release
- Game assets from the [DDLC-LOVE-Assets](https://github.com/LukeZGD/DDLC-LOVE-Assets) repo are only to be used for v1.2.0 and older
- For all Sony devices, [LOVE-WrapLua](https://github.com/LukeZGD/LOVE-WrapLua) is also required beside the game folder (`index.lua`, `script.lua`, and the `LOVE-WrapLua` folder). See the contents of the Vita, PSP, and PS3 versions for the directory tree (`.vpk` and `.zip` releases)

### Credits:
- [LovePotion](https://github.com/TurtleP/LovePotion) by TurtleP is used for the Switch and 3DS versions
- [lpp-vita](https://github.com/Rinnegatamante/lpp-vita/) by Rinnegatamante is used for the PS Vita version
- [OneLua](http://onelua.x10.mx/) by OneLua Team is used for the PSP version
- [Lua Player PS3](https://store.brewology.com/ahomebrew.php?brewid=212) by 3141card is used for the PS3 version
- [Spanish translation](https://tradusquare.es/ficha.php?ddlc) by GlowTranslations
