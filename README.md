# Mkbootimg_tools and Bootsigner

===============

Thanks to mkbootimage@Xiaolu  bootimg.exe@cofface  bootsigner@ZJL 

# 本工具请在英文目录下运行

HOW TO USE:
-----------

### FOR Linux


1.Linux bootsigner By ZJL
                Terminal runs：
    
        sh boot.sh

  Then you will see the new boot : "boot-new2.img"

2.Unpack/Repack img 
   (1)Unpack boot/recovery(.img) support dtb(dt.img):
		./mkboot name.img namefolder

	EXAMPLE
		
		./mkboot boot.img boot
		
   (2)Repack boot/recovery(.img) support dtb(dt.img):
		./mkboot namefolderout newimgname.img

	EXAMPLE
		
		./mkboot boot boot.img

3.Create a dt.img:
yourkernelsources/scripts/dtbTool -s 2048 -o arch/arm/boot/dt.img -p scripts/dtc/ arch/arm/boot/

EXAMPLE
		
	SHV-E330S_JB_Opensource/Kernel$ scripts/dtbTool -s 2048 -o arch/arm/boot/dt.img -p scripts/dtc/ arch/arm/boot/

dtbToolCM support dt-tag & dtb v2/3(https://github.com/CyanogenMod/android_device_qcom_common/tree/cm-13.0/dtbtool):

EXAMPLE

 	dtbToolCM -s 2048 -d "htc,project-id = <" -o arch/arm/boot/dt.img -p scripts/dtc/ arch/arm/boot/

===========================================================================================================================

### For Windows
            
	    If you want simple operation,you can double-click the bat file.
       OR use cmd.exe 
       
==============

   (1)WIN + R

   (2)Input "cmd"

   (3)First 
  
      You have to switch to the directory of bootimg.exe

   EXAMPLE

      cd C:\xiyan\

   (4)THEN

   Unpack boot/recovery(.img) support dtb(dt.img):

      bootimg.exe --unpack-bootimg

   Repack boot/recovery(.img) support dtb(dt.img):

      bootimg.exe --repack-bootimg

   If you want to know more command statements,you can run "bootimg.exe" in DOS.

### Windows bootsigner by xiyan

    You can double-click the bootsign.bat to sign the boot.
    
   Then you will see the new boot : "boot-new2.img"
   
### Copyright owner Xiyan
