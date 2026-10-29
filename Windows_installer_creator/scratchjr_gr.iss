[Setup]
; App Details
AppName=ScratchJr_GR
AppVersion=1.3.3
DefaultDirName={autopf}\ScratchJr
DefaultGroupName=ScratchJr
DisableProgramGroupPage=yes
OutputDir=userdocs:Inno Setup Examples Output
OutputBaseFilename=ScratchJr_Installer
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; IMPORTANT: Replace "C:\Path\To\Your\ScratchJrApp\*" with the actual path to your application folder
Source: "C:\Program Files (x86)\ScratchJrGr\ScratchJr-win32-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
; Start Menu Shortcut (Always created)
Name: "{group}\ScratchJr"; Filename: "{app}\ScratchJr.exe"
Name: "{group}\Uninstall ScratchJr"; Filename: "{uninstallexe}"

; Desktop Shortcut (Optional - tied to a task checkbox)
Name: "{autodesktop}\ScratchJr"; Filename: "{app}\ScratchJr.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Run]
; Option to launch the app immediately after installation finishes
Filename: "{app}\ScratchJr.exe"; Description: "{cm:LaunchProgram,ScratchJr}"; Flags: nowait postinstall skipifsilent