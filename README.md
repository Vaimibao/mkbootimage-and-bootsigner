# mkbootimg_tools and bootsigner

===============

# Thanks to mkbootimage@Xiaolu bootimg.exe@cofface bootsigner@ZJL 

# 本工具请在英文目录下运行


HOW TO USE:
-----------

### FOR Linux


### Linux bootsigner By ZJL 
    
        sh boot.sh

## Unpack/Repack img 
1. Unpack boot/recovery(.img) support dtb(dt.img):
		./mkboot name.img namefolder

	EXAMPLE
		./mkboot boot.img boot
		
2. Repack boot/recovery(.img) support dtb(dt.img):
		./mkboot namefolderout newimgname.img

	EXAMPLE
		./mkboot boot boot.img

### Create a dt.img:
		yourkernelsources/scripts/dtbTool -s 2048 -o arch/arm/boot/dt.img -p scripts/dtc/ arch/arm/boot/

	EXAMPLE
		SHV-E330S_JB_Opensource/Kernel$ scripts/dtbTool -s 2048 -o arch/arm/boot/dt.img -p scripts/dtc/ arch/arm/boot/

dtbToolCM support dt-tag & dtb v2/3(https://github.com/CyanogenMod/android_device_qcom_common/tree/cm-13.0/dtbtool):

 	dtbToolCM -s 2048 -d "htc,project-id = <" -o arch/arm/boot/dt.img -p scripts/dtc/ arch/arm/boot/

===========================================================================================================================

### For Windows
            If you want simple operation,you can double-click the bat file.
       OR
==============

1. WIN + R

2. Input "cmd"

3. First 
  
    You have to switch to the directory of bootimg.exe

    EXAMPLE

            cd C:\xiyan\

   THEN

### Unpack boot/recovery(.img) support dtb(dt.img):

            bootimg.exe --unpack-bootimg

### Repack boot/recovery(.img) support dtb(dt.img):

            bootimg.exe --repack-bootimg

If you want to know more command statements,you can run "bootimg.exe" in DOS.

### Windows bootsigner by xiyan

    You can double-click bootsign.bat to sign the boot.
    Then you will see the new boot : "boot-new.img"
