#Thanks to ZJL 
#Git:https://github.com/xiaognol
#Share by Xiyan
#Version：v1.0.0beta

java -Xmx512M -jar BootSignature.jar boot boot.img ./security/verity.pk8 ./security/verity.x509.pem boot-new.img
