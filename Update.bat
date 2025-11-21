#Creates the 1 and 2 folders
echo Creating 1 and 2 folders...
mkdir 1
mkdir 2

#Deletes all previously used InstalledPackages.csv files and filtered files if there were any
echo Deleting any previously used files
cd C:\Windows-8.1-updater\1
del * /S /Q
cd C:\Windows-8.1-updater\2
del * /S /Q
cd C:\Windows-8.1-updater\WPCabFilter
del InstalledPackages.csv /Q

#Creates the DeviceLogs.cab file in the "1" folder which contains the InstalledPackages.csv file
echo Grabbing DeviceLogs.cab from phone...
cd C:\Program Files (x86)\Windows Kits\10\Tools\bin\i386
Getdulogs -o "C:\Windows-8.1-updater\1\DeviceLogs.cab"

#Extracts the InstalledPackages.csv from the DeviceLogs.cab file created in the "1" folder to the 'WPCabFilter' folder
echo Extracting InstalledPackages.csv...
cd C:\Windows-8.1-updater\1
expand DeviceLogs.cab -F:InstalledPackages.csv C:\Windows-8.1-updater\WPCabFilter

#Filters the InstalledPackages.csv files and puts the filtered files in the "2" folder
echo Filtering files...
cd C:\Windows-8.1-updater\WPCabFilter
WPCabFilter "C:\Windows-8.1-updater\Cablist\8.10.15153.165 - BASE" "C:\Windows 8.1 updater\2"

#Pushes the files to your phone
echo Pushing files to phone...
cd C:\Program Files (x86)\Windows Kits\10\Tools\bin\i386
iutool -v -p "C:\Windows-8.1-updater\2"
