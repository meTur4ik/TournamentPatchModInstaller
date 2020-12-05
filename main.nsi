;NSIS Modern User Interface
;Basic Example Script
;Written by Joost Verburg

;--------------------------------
;Include Modern UI

  !include "MUI2.nsh"

;--------------------------------
;General

  ;Name and file
  Name "Tournament Patch Mod"
  OutFile "TPModInstaller.exe"
  Unicode True

  ;Default installation folder
  
  ;InstallDir "$LOCALAPPDATA\"

  ;Get installation folder from registry if available
  InstallDirRegKey HKLM "SOFTWARE\WOW6432Node\THQ\Dawn of War - Soulstorm" "installlocation"

  ;Request application privileges for Windows Vista
  RequestExecutionLevel admin

;--------------------------------
;Interface Settings

  !define MUI_ABORTWARNING

;--------------------------------
;Pages

  !insertmacro MUI_PAGE_LICENSE "Files\LICENSE"
  !insertmacro MUI_PAGE_DIRECTORY
  !insertmacro MUI_PAGE_INSTFILES
  
  !insertmacro MUI_UNPAGE_CONFIRM
  !insertmacro MUI_UNPAGE_INSTFILES
  
;--------------------------------
;Languages
 
  !insertmacro MUI_LANGUAGE "English"


;--------------------------------
;Installer Sections

Section "TP mod" SecTPmod

  ;ADD YOUR OWN FILES HERE...
  SetOutPath "$INSTDIR\TournamentPatch"
  File /r "Files\TournamentPatch\*"
  SetOutPath "$INSTDIR"
  File "Files\TournamentPatch.module"

  ;Store installation folder
  WriteRegStr HKCU "Software\TournamentPatchMod" "" $INSTDIR
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\TournamentPatchMod" \
                 "DisplayName" "Tournament Patch Mod"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\TournamentPatchMod" \
                 "UninstallString" "$\"$INSTDIR\TPUninstall.exe$\""
  ;Create uninstaller
  WriteUninstaller "$INSTDIR\TPUninstall.exe"

SectionEnd


;--------------------------------
;Uninstaller Section

Section "Uninstall"

  ;ADD YOUR OWN FILES HERE...
  RMDir /r "$INSTDIR\TournamentPatch"
  Delete "$INSTDIR\TournamentPatch.module"
  Delete "$INSTDIR\TPUninstall.exe"
  
  DeleteRegKey HKCU "Software\TournamentPatchMod"
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\TournamentPatchMod"

SectionEnd