;--------------------------------
;Include Modern UI

  !include "MUI2.nsh"
  !include "LogicLib.nsh"


;--------------------------------
;General

  ;Name and file
  Name "Tournament Patch Mod"
  OutFile "TPModInstaller.exe"
  Unicode True

  ;Default installation folder
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
  !insertmacro MUI_PAGE_COMPONENTS
  !insertmacro MUI_PAGE_DIRECTORY
  !insertmacro MUI_PAGE_INSTFILES
  
  !insertmacro MUI_UNPAGE_CONFIRM
  !insertmacro MUI_UNPAGE_INSTFILES


;--------------------------------
;Languages
 
  !insertmacro MUI_LANGUAGE "English"


;--------------------------------
;Variables

  Var /GLOBAL CAMERA_FIX
  Var /GLOBAL TP_MOD_KEY


;--------------------------------
;Installer Sections

Section "-TP mod" SecTPmod

  ReadRegStr $TP_MOD_KEY HKCU "Software\TournamentPatchMod" "installlocation"
  ${If} $TP_MOD_KEY != ""
    MessageBox MB_OK "Tournament Patch Mod is already installed"
    Abort "Tournament Patch Mod is already installed"
  ${EndIf}
  
  ;ADD YOUR OWN FILES HERE...
  SetOutPath $INSTDIR\TournamentPatch
  File /r "Files\TournamentPatch\*"
  SetOutPath $INSTDIR
  File Files\TournamentPatch.module

  ;Store installation folder
  WriteRegStr HKCU "Software\TournamentPatchMod" "installlocation" $INSTDIR

  ;Registry keys for "Programs and features" app
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\TournamentPatchMod" \
                 "DisplayName" "Tournament Patch Mod"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\TournamentPatchMod" \
                 "UninstallString" "$\"$INSTDIR\TPUninstall.exe$\""
  ;Create uninstaller
  WriteUninstaller $INSTDIR\TPUninstall.exe

SectionEnd

Section "Camera Fix" SecCameraFix

  StrCpy $CAMERA_FIX $INSTDIR\Engine\Data
  SetOutPath $CAMERA_FIX
  File Files\CameraFix\camera_high.lua
  File Files\CameraFix\camera_low.lua
  File Files\CameraFix\camera_ed.lua
  WriteRegStr HKCU "Software\TournamentPatchMod" "camerafix" $CAMERA_FIX

SectionEnd

Section /o "Set QWERTY Hotkeys by default" SecQwertyHotkeys

  SetOutPath $INSTDIR\Profiles\Profile1\tournamentpatch
  File Files\QwertyHotkeys\KEYDEFAULTS.LUA

SectionEnd


;--------------------------------
;Uninstaller Section

Section "Uninstall"

  ;ADD YOUR OWN FILES HERE...
  ReadRegStr $CAMERA_FIX HKCU "Software\TournamentPatchMod" "camerafix"
  ${If} $CAMERA_FIX != ""
    Delete $CAMERA_FIX\camera_high.lua
    Delete $CAMERA_FIX\camera_low.lua
    Delete $CAMERA_FIX\camera_ed.lua
  ${EndIf}
  
  RMDir /r $INSTDIR\TournamentPatch
  Delete $INSTDIR\TournamentPatch.module
  Delete $INSTDIR\TPUninstall.exe
  
  DeleteRegKey HKCU "Software\TournamentPatchMod"
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\TournamentPatchMod"

SectionEnd