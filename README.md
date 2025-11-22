# Windows-8.1-updater
Batch script to automatically push the update for Windows 8.1 Update 2 (GDR2)
This is simply an automatic script that follows this tutorial: https://www.youtube.com/watch?v=xSK-RiMDenM

**I do not take any responsibility if using this script causes harm to your devices**

**Prerequisites**
To be able to use this script you must have:
1. The dotnet runtime installed. You can find that here: https://dotnet.microsoft.com/en-us/download
2. The Windows Phone common packaging tools. You can find the installer here: https://mega.nz/file/7I5GyDTJ#P_-fRVi3oQsfsVecLD_6w5FLH5xhVFDS7AEC9V73qgA
3. Git. You can get that here: https://git-scm.com/install/windows
4. Git lfs. Should be automatically installed with git for Windows. If not get it through the chocolatey package manager: https://chocolatey.org/

**Usage**
1. Clone the repo
`git clone https://github.com/jannisioannidis/Windows-8.1-updater.git`
2.Install lfs
`git lfs install`
3. Pull the larger lfs files
`cd Windows-8.1-updater`
`git lfs pull`
4. Connect your phone to your computer

5. Run the update.bat file
`update.bat`
6. Open your phone's update page in setttings and install the update!
