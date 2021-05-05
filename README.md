# TournamentPatchModInstaller
MSI Installer for TournamentPatch mod

## Русский:
Генерация установщика:
- Установить [Visual Studio](https://visualstudio.microsoft.com/ru/vs/) (рекомендуется 2019 любой редакции).
- Установить WIX. Найти его можно тут: [https://github.com/wixtoolset/wix3/releases/tag/wix3112rtm](https://github.com/wixtoolset/wix3/releases/tag/wix3112rtm) (нужна 3.11.* версия. в ином случае надо редактировать путь в задаче "HeatDirectory" в файле [TournamentPatchModInstaller.wixproj](TournamentPatchModInstaller/TournamentPatchModInstaller/TournamentPatchModInstaller.wixproj).
- Установить расширение [WiX для Visual Studio](https://marketplace.visualstudio.com/items?itemName=WixToolset.WiXToolset) для скачанной версии Visual Studio
- Распаковать архив с Tournament Patch в папку `Files\Mod` и убедиться, что [лицензия](TournamentPatchModInstaller\TournamentPatchModInstaller\Visuals\License.rtf) совпадает с желаемой, если нет - заменить на желаемую.
- После того, как всё проверено, собрать проект (открыть [TournamentPatchModInstaller.sln](TournamentPatchModInstaller/TournamentPatchModInstaller.sln), в Visual Studio, выбрать на верхней панели желаемую конфигурацию (Debug или Release) и нажать комбинацию клавиш `Ctrl+Shift+B`)
- После того, как сборка окончена, в папке `TournamentPatchModInstaller/TournamentPatchModInstaller/bin` появится папка `Release` или `Debug` (в зависимости от конфигурации), в которой будет находиться установщик `TournamentPatchMod.msi`.

## English:
Generating an installer:
- install [Visual Studio](https://visualstudio.microsoft.com/vs/) (2019 of any edition is recommended).
- Install WIX. You can find it here: [https://github.com/wixtoolset/wix3/releases/tag/wix3112rtm](https://github.com/wixtoolset/wix3/releases/tag/wix3112rtm) (3.11.* version is used in this project by default, however, you can install other and configure path to it in "HeatDirectory" task for [TournamentPatchModInstaller.wixproj](TournamentPatchModInstaller/TournamentPatchModInstaller/TournamentPatchModInstaller.wixproj)).
- Install [WiX for Visual Studio](https://marketplace.visualstudio.com/items?itemName=WixToolset.WiXToolset) extension for downloaded version of Visual Studio
- Unpack archive with Tournament Patch into `Files\Mod` directory and ensure that [license template](TournamentPatchModInstaller/TournamentPatchModInstaller/Visuals/License.rtf) matches with your license. if not - replace with your license file.
- Open [TournamentPatchModInstaller.sln](TournamentPatchModInstaller/TournamentPatchModInstaller.sln) in Visual Studio, choose Build Configuration (Debug or Release) and press `Ctrl+Shift+B` key combination to build a project.
- After build finishes correctly, the `TournamentPatchMod.msi` shall appear inside `TournamentPatchModInstaller/TournamentPatchModInstaller/bin/(Debug or Release)` folder.