<div align="center">
  <a href="https://github.com/coonlink">
    <img width="90px" src="logo.png?1" alt="Logo" />
  </a>
  <h1>Chill with You : Lo-Fi Story — Мод «озвучка»</h1>

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
  <p>Заменяет <b>японскую озвучку</b> героини на озвучку на другом языке. Каждый язык — отдельный архив в Releases.</p>
 
| Язык | Реплик | Источник текста | Скачать |
| :--- | :----: | :-------------- | :------ |
| 🇷🇺 Русский | 1319 | Официальная русская локализация | [ZIP](https://github.com/crc137/Chill-With-You-Voice-Mod/releases/download/26.1.1_ru/ChillWithYou-RussianVoice-v26.1.1-Linux-Windows.zip) |
| 🇨🇳 Китайский | 1324 | Официальная китайская локализация (упрощённый) | [ZIP](https://github.com/crc137/Chill-With-You-Voice-Mod/releases/download/26.1.1_zh/ChillWithYou-ChineseVoice-v26.1.1-Linux-Windows.zip) |

</div>

## Требования

Чтобы озвучка заработала, нужно **всё** из списка:

1. Игра **Chill with You : Lo-Fi Story** (любая версия, Steam), запущенная один раз.
2. Файлы мода `voice_assets_all_32450596a5b4118c119776add9782a1f.bundle` и `catalog.json` из архива для вашего языка.
3. Больше ничего: ни BepInEx, ни плагинов, ни интернета не требуется.


## Скачать

Готовые к запуску zip-архивы (по одному на язык) выложены только в GitHub Releases:

👉 [github.com/crc137/Chill-With-You-Voice-Mod/releases](https://github.com/crc137/Chill-With-You-Voice-Mod/releases)

Берите архив нужного языка: `ChillWithYou-<Язык>Voice-v<версия>-Linux-Windows.zip`
(например, `ChillWithYou-RussianVoice-v26.1.1-Linux-Windows.zip`). В каждом — папка `Chill With You_Data`
(внутри оба файла мода) и установщики для Windows и Linux, без сборки. Одновременно можно установить только один язык;
чтобы сменить, сначала запустите `uninstall.sh`, затем установите другой архив.



## Как установить (игроку, сборка не нужна)

**Вариант A — установщик в один клик (рекомендую)**

Распакуйте архив куда угодно (`install.sh` / `install.bat` должны лежать рядом с папкой `Chill With You_Data`) и запустите установщик для своей ОС:

- **Windows:** двойной клик по `install.bat`
- **Linux / Steam Deck:** `./install.sh`

Установщик найдёт игру в **любой Steam-библиотеке** (включая нестандартные пути и внешние диски) и скопирует оба файла на место. Если игра не нашлась — спросит путь вручную. При первом запуске рядом с оригиналами остаются копии `.modbak`, чтобы откат работал без Steam.

**Вариант B — вручную**

1. Установите игру через Steam и **один раз** запустите её, чтобы создались папки.
2. Скопируйте папку `Chill With You_Data` из архива в корневую папку игры и согласитесь на слияние/перезапись. Оба файла окажутся здесь:
   ```
   Chill With You_Data/StreamingAssets/aa/StandaloneWindows64/voice_assets_all_32450596a5b4118c119776add9782a1f.bundle   ← сам мод
   Chill With You_Data/StreamingAssets/aa/catalog.json                                                            ← обязателен
   ```
3. Запустите игру.

`catalog.json` нужен обязательно: без него игра не загрузит бандл вообще, и озвучки не будет. В приложенном файле обнулено ровно одно поле — контрольная сумма бандла, остальное не тронуто.

## Если не работает
- **Полная тишина во всех репликах** → скорее всего не установлен или не перезаписан `catalog.json`. Бандл должен лежать в `.../aa/StandaloneWindows64/`, каталог — в `.../aa/`.
- **Часть реплик осталась на японском** → так и задумано: в официальной локализации нет текста для некоторых реплик (шуршание, короткие реакции вроде `~♪`; в русской версии это около 60 реплик).
- **Игра вылетает на старте** → верните оригиналы через `uninstall.sh` и проверьте целостность файлов в Steam.


## Удаление

```bash
./uninstall.sh
```

Или вручную: верните на место два оригинальных файла. Если оригиналов не осталось — Steam → ПКМ по игре → Свойства → Установленные файлы → Проверить целостность файлов; это вернёт бандл, а для `catalog.json` есть копия `.modbak`.


## Сборка

Сборки нет: мод — это готовые файлы, установщик просто копирует их в папку игры.
