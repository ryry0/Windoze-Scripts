"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm "bdd9b8a1-7571-4a47-bf10-a687a930d621" --type "headless"
start /b "xserver" "C:\Program Files (x86)\Xming\Xming.exe" :0 -clipboard -multiwindow
start /b bash -c "~/xaeth.sh; bash"

:: if you need to figure out uuid again run "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" showhdinfo nyx.vdi

