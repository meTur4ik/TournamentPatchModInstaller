# TournamentPatchModInstaller
NSIS Installer for TournamentPatch mod

## Русский:
Генерация установщика:
- Установить NSIS. Найти его можно тут: [https://nsis.sourceforge.io/Download](https://nsis.sourceforge.io/Download) (нужна 3.* версия).
- Распаковать архив с Tournament Patch в папку `Files\` и убедиться, что лицензия совпадает с желаемой, если нет - заменить на желаемую.
- После того, как всё проверено - натравить NSIS на файл `main.nsi`. Это можно сделать как `ПКМ по main.nsi > Compile NSIS Script`, так и из коммандной строки (если прописан PATH):
```cmd
    makensis.exe .\main.nsi
```
- После того, как NSIS отработает, в корневой папке репозитория появится установщик `TPModInstaller.exe`. для Steam'овской версии он сам найдёт, где лежит игра.

## English:
Generating an installer:

- Install NSIS. You can find it here: [https://nsis.sourceforge.io/Download](https://nsis.sourceforge.io/Download) (3.* version).
- Unpack archive with Tournament Patch into `Files\` directory and ensure that license template matches with your license. if not - replace with your license file.
- Compile `main.nsi`. It could be done as `RMB on main.nsi > Compile NSIS Script`, or with cmd (if PATH variable is updated for NSIS):
```cmd
    makensis.exe .\main.nsi
```
- After Compilation installer `TPModInstaller.exe` should appear in the root directory. If installing on Steam version of Soulstorm it should find target folder.