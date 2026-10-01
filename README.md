<div align="center">
  <a href="https://github.com/coonlink">
    <img width="90px" src="logo.png?1" alt="Logo" />
  </a>
  <h1>Chill with You : Lo-Fi Story — Voice Mod</h1>

[![English](https://img.shields.io/badge/lang-English%20🇺🇸-white)](README.md)
[![Русский](https://img.shields.io/badge/язык-Русский%20🇷🇺-white)](README.ru.md)

<img alt="last-commit" src="https://img.shields.io/github/last-commit/crc137/Chill-With-You-Voice-Mod?style=flat&amp;logo=git&amp;logoColor=white&amp;color=0080ff" style="margin: 0px 2px;">
<img alt="repo-top-language" src="https://img.shields.io/github/languages/top/crc137/Chill-With-You-Voice-Mod?style=flat&amp;color=0080ff" style="margin: 0px 2px;">
<img alt="repo-language-count" src="https://img.shields.io/github/languages/count/crc137/Chill-With-You-Voice-Mod?style=flat&amp;color=0080ff" style="margin: 0px 2px;">
<img alt="version" src="https://img.shields.io/badge/version-26.1.1-blue" style="margin: 0px 2px;">
<!-- img alt="status" src="https://img.shields.io/badge/status-STABLE-green" style="margin: 0px 2px;" -->
</div>

<br />

<div align="center">
   <p>Replaces the <b>Japanese voice</b> of the heroine with a voice in another language. Each language is a separate archive in Releases.</p>
 
| Language | Lines | Text source | Download |
| :------- | :---: | :---------- | :------- |
| 🇷🇺 Russian | 1319 | Official Russian localization | [ZIP](https://github.com/crc137/Chill-With-You-Voice-Mod/releases/download/26.1.1_ru/ChillWithYou-RussianVoice-v26.1.1-Linux-Windows.zip) |
| 🇺🇦 Ukrainian | — | Help wanted: native Ukrainian speaker | — |
| 🇬🇧 English | 1324 | Official English localization | [ZIP](https://github.com/crc137/Chill-With-You-Voice-Mod/releases/download/26.1.1_en/ChillWithYou-EnglishVoice-v26.1.1-Linux-Windows.zip) |
| 🇨🇳 Chinese | 1324 | Official Simplified Chinese localization | [ZIP](https://github.com/crc137/Chill-With-You-Voice-Mod/releases/download/26.1.1_zh/ChillWithYou-ChineseVoice-v26.1.1-Linux-Windows.zip) |

**Ukrainian needs you.** The game ships no Ukrainian text, so the voice cannot be
generated from an official localization — it needs a native Ukrainian speaker to
translate all lines as natural, living speech rather than machine output. If that is
you, please get in touch; the translation work is ready to be handed over.

</div>

## Requirements

For the voice to work you need **all** of these:

1. The game **Chill with You : Lo-Fi Story** (any version, Steam), launched once.
2. The mod files `voice_assets_all_32450596a5b4118c119776add9782a1f.bundle` and `catalog.json` from the archive for your language.
3. Nothing else: no BepInEx, no plugins, no internet connection required.


## Download

Ready-to-play zips, one per language, are published only on GitHub Releases:

👉 [github.com/crc137/Chill-With-You-Voice-Mod/releases](https://github.com/crc137/Chill-With-You-Voice-Mod/releases)

Pick the archive for your language: `ChillWithYou-<Language>Voice-v<version>-Linux-Windows.zip`
(e.g. `ChillWithYou-RussianVoice-v26.1.1-Linux-Windows.zip`). Each holds the `Chill With You_Data`
folder (with both mod files inside) plus installers for Windows and Linux — no build involved. Only one language can be installed at a time;
to switch, run `uninstall.sh` first, then install the other archive.


## How to install (player, no build needed)

**Option A — one-click installer (recommended)**

Unpack the archive anywhere (keep `install.sh` / `install.bat` next to the `Chill With You_Data` folder) and run the installer for your OS:

- **Windows:** double-click `install.bat`
- **Linux / Steam Deck:** `./install.sh`

The installer finds the game in **any Steam library** (including non-default and external drives) and copies both files into place. If the game can't be found it will ask you for the path manually. On the first run it keeps a copy of the originals next to them as `.modbak`, so you can roll back without Steam.

**Option B — manual**

1. Install the game via Steam and launch it **once** so folders are created.
2. Copy the `Chill With You_Data` folder from the archive into the game's root folder and agree to merge/overwrite. This puts **both files** here:
   ```
   Chill With You_Data/StreamingAssets/aa/StandaloneWindows64/voice_assets_all_32450596a5b4118c119776add9782a1f.bundle   ← the mod
   Chill With You_Data/StreamingAssets/aa/catalog.json                                                            ← required
   ```
3. Launch the game.

`catalog.json` is not optional: without it the game refuses to load the bundle at all and you get no voice whatsoever. In the supplied file exactly one field is zeroed — the bundle checksum — everything else is untouched.

## Troubleshooting
- **Complete silence on every line** → `catalog.json` is most likely missing or not overwritten. The bundle belongs in `.../aa/StandaloneWindows64/`, the catalog in `.../aa/`.
- **Some lines are still Japanese** → by design: the official localization has no text for some lines (movement noises, short reactions such as `~♪`; about 60 lines in the Russian version).
- **The game crashes on startup** → put the originals back with `uninstall.sh` and verify integrity of game files in Steam.


## Uninstall

```bash
./uninstall.sh
```

Or manually: put the two original files back. If the originals are gone, use
Steam -> Right click the game -> Properties -> Installed Files -> Verify
integrity; that restores the bundle, and `catalog.json` comes from the `.modbak`
copy the installer left behind.


## Build

There is no build: the mod is ready-made files, the installer only copies them
into the game folder.
