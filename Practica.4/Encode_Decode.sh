#!/bin/bash
echo comprobando checksum...
sleep 5s

checksum_img1=5db9862819edb16f9ac0f3b1c406e79d\ mystery_img.txt 
checksum_img2=b091a841da98ca516635f4dfea1dbaf5\ mystery_img2.txt 
checksum_msg=40744679dff4bf36705c00f9cb815579\ msg.txt
checksum_fcfm=4260808329804b5f553cf3e3d5a446c6\ fcfm.png

confirm_sum1=$(md5sum mystery_img.txt)
echo $checksum_img1
echo $confirm_sum1
if test "$confirm_sum1" =  "5db9862819edb16f9ac0f3b1c406e79d  mystery_img.txt"
  
then
echo ok.
fi 
  
confirm_sum2=$(md5sum mystery_img2.txt)
echo $checksum_img2
echo $confirm_sum2
if test "$confirm_sum2" = "b091a841da98ca516635f4dfea1dbaf5  mystery_img2.txt"
then
echo ok.
fi

confirm_sum3=$(md5sum msg.txt)
echo $checksum_msg
echo $confirm_sum3
if test "$confirm_sum3" = "40744679dff4bf36705c00f9cb815579  msg.txt"
then
echo ok.
fi

confirm_sum4=$(md5sum fcfm.png)
echo $checksum_fcfm
echo $confirm_sum4
if test "$confirm_sum4" = "4260808329804b5f553cf3e3d5a446c6  fcfm.png"
then
echo ok.
fi
echo Codificando los Archivos...
sleep 4s
base64 < fcfm.png > fcfm_codificado.txt
base64 < msg.txt > msg_codificado.txt
echo Hecho.
sleep 2s
echo Decodificando los archivos...
sleep 4s
base64 --decode < mystery_img.txt > mystery_img_decoded.png
base64 --decode < mystery_img2.txt > mystery_img2_decoded.png
echo Hecho.
sleep 3s
echo Exit...
sleep 3s 
