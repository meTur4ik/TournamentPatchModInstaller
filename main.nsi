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
  RequestExecutionLevel user

;--------------------------------
;Interface Settings

  !define MUI_ABORTWARNING

;--------------------------------
;Pages

  !insertmacro MUI_PAGE_LICENSE "${NSISDIR}\Docs\Modern UI\License.txt"
  ;!insertmacro MUI_PAGE_COMPONENTS
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

  SetOutPath "$INSTDIR\TournamentPatch"

  ;ADD YOUR OWN FILES HERE...

  File /r "Files\TournamentPatch\*"

  SetOutPath "$INSTDIR"
  File "Files\TournamentPatch.module"

  ;Store installation folder
  WriteRegStr HKCU "Software\Modern UI Test" "" $INSTDIR
  
  ;Create uninstaller
  WriteUninstaller "$INSTDIR\TPUninstall.exe"

SectionEnd

;--------------------------------
;Descriptions

  ;Language strings
  ;LangString DESC_SecDummy ${LANG_ENGLISH} "A test section."

  ;Assign language strings to sections
  ;!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  ;  !insertmacro MUI_DESCRIPTION_TEXT ${SecDummy} $(DESC_SecDummy)
  ;!insertmacro MUI_FUNCTION_DESCRIPTION_END

;--------------------------------
;Uninstaller Section

Section "Uninstall"

  ;ADD YOUR OWN FILES HERE...
  RMDir /r "$INSTDIR\TournamentPatch"
  Delete "$INSTDIR\TournamentPatch.module"

  Delete "$INSTDIR\TPUninstall.exe"
  
  DeleteRegKey HKCU "Software\Modern UI Test"

SectionEnd