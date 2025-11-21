cd C:\Windows 8.1 updater\1
del * /S /Q
cd C:\Windows 8.1 updater\2
del * /S /Q
cd C:\Windows 8.1 updater\WPCabFilter
del InstalledPackages.csv /Q

cd C:\Program Files (x86)\Windows Kits\10\Tools\bin\i386
Getdulogs -o "C:\Windows 8.1 updater\1/DeviceLogs.cab"

cd C:\Windows 8.1 updater\1
expand DeviceLogs.cab -F:InstalledPackages.csv C:\Windows 8.1 updater\WPCabFilter

cd C:\Windows 8.1 updater\WPCabFilter
WPCabFilter "C:\Windows 8.1 updater\Cablist" "C:\Windows 8.1 updater\2" 

cd C:\Program Files (x86)\Windows Kits\10\Tools\bin\i386
iutool -v -p "C:\Windows 8.1 updater\2"
