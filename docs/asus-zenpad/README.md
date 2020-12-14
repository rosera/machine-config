# Asus ZenPad Z500M

Instructions to install Twrp and unlock the bootloader

## Software Information

* Kernel Version: 3.18.35+ androind@mcrd1-13 #1 Thu Jun 21 19:26:39 CST 2018
* Build Number: NRD90M.WW_ZenPad-14.0210.1806.33-20180621070010992_201703220333

Linux Host

Install ADB + Fastboot
```
sudo apt install adb fastboot
```

#### Developer Mode

Enable on the Android Device

- [x] Enable `Developer options` mode i.e. System Settings -> Software information -> Build number. Hit 7 times
- [x] In developer options enable `USB debugging`
- [x] Connect the device to the Linux host
- [x] Check connection using `adb devices -l` to display the active connection
- [x] First connection should ask to verify debug connection
- [x] Install a terminal app e.g. Termux
- [x] Install zip into the terminal e.g. pkg install zip


### [Unlock the Bootloader](https://forum.xda-developers.com/t/tool-unlock-bootloader-in-asus-zenpad-3s-10-z500m-p027.3730909/)

On the Linux Host connect the Android device

Use the Linux Host to reboot into the Android bootloader

```
adb reboot bootloader
```

Change to root
```
sudo su
```

Copy across the files to `/tmp`
```
adb push [local file] /[remote file]
```

* unlockbl.sh
* tool_bin_arc

The bootloader is now unlocked


### Load TWRP

```
sudo fastboot boot twrp-3.2.1-0.z500m.img
```

Mount the system as __Read-Only__

Connect to the Android device with adb shell
```
adb shell
```


### [Install TWRP](https://forum.xda-developers.com/t/twrp-recovery-asus-zenpad-3s-10-z500m.3758333/)

On the Linux Host

Download the [twrp software](https://forum.xda-developers.com/attachment.php?attachmentid=4436470) for Asus Zenpad Z500M

Reboot the Android device into fastboot

```
adb reboot fastboot
```

Boot the device using the twrp image

```
sudo fastboot boot twrp-3.2.1-0-z500m.img
```
