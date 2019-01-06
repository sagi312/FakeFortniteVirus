Outfile "FakeFortniteVirus.exe"

InstallDir C:\FakeVirus
RequestExecutionLevel user
 
# default section
Section
 
	SetOutPath $INSTDIR

	File Epic_Games_Launcher.bat
	FIle Anti-Virus.bat
	File Anti-Virus-Alert.vbs
	File fortnite-icon-2.ico
	CreateShortCut "$DESKTOP\Epic Games Launcher.lnk" "$INSTDIR\Epic_Games_Launcher.bat" " " "$INSTDIR\fortnite-icon-2.ico" 0
	WriteUninstaller "$INSTDIR\uninstall.exe"
	MessageBox MB_OK "The files are at C:\FakeVirus, there is an uninstaller there. To open the fake virus just click on the shortcut in your desktop. If you have suggestions/bugs, contact me at sagi@kushner.co.il"

 
SectionEnd

Section "uninstall"
	Delete "$INSTDIR\uninstall.exe"
	Delete "$INSTDIR\Epic_Games_Launcher.bat"	
	Delete "$INSTDIR\Anti-Virus.bat"
	Delete "$INSTDIR\Anti-Virus-Alert.vbs"
	Delete "$INSTDIR\fortnite-icon-2.ico"
	Delete "$DESKTOP\Epic Games Launcher.lnk"
	Delete "$INSTDIR"

Sectionend