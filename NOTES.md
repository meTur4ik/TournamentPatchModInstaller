# Notes

Additional and not obvious information about the project

## Русский:

Как только вы скачаете репозиторий и откроете `TournamentPatchModInstaller.sln` - вы можете заметить, что файл `Components.wxs` отсутствует. Так как `Components.wxs` генерируется перед остальными заданиями сборки - не стоит беспокоиться, всё соберётся, однако, кажется, в расширении WiX для Visual Studio есть баг с отображением, так что восклицательный знак возле файла скорее всего останется. если это напрягает - можно перезагрузить проект.

## English:

When you've cloned a repository and opened `TournamentPatchModInstaller.sln`, you might notice, that file `Components.wxs` is missing. No need to worry, as `Components.wxs` is being generated just before main build tasks are fired. It seems, that WiX for Visual Studio extension has a bug with displaying file state, so the exclamation mark sign is very likeky to still be present after build succeeded. If it does matter, you can reload a project.