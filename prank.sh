#!/data/data/com.termux/files/usr/bin/bash
#  ___       _
# / _ \__  _| |   _   _ _ __ __  __
#| | | \ \/ / |  | | | | '_ \\ \/ /
#| |_| |>  <| |__| |_| | | | |>  <
# \___//_/\_\_____\__, |_| |_/_/\_\
#                 |___/

troll(){
    clear
    echo "\033[1;32m"
    sleep 0.3
    echo " »»»»»»»»»»»»»»»»«««««««««««««««« "
    sleep 0.3
    echo " [+]   « SELAMAT ★ DATANG »   [+] "
    sleep 0.3
    echo " »»»»»»»»»»»»»»»»«««««««««««««««« "
    sleep 0.3
    echo " ★★  Whatsapp : 6285850252221  ★★ "
    sleep 0.3
    echo " ★★     Facebook : Bagus P     ★★ "
    sleep 0.3
    echo " ★★      Youtube : OxLynx      ★★ "
    sleep 0.3
    echo " »»»»»»»»»»»»»»»»«««««««««««««««« "
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/sms.php)
get_call=$(curl -s http://zlucifer.com/api/call.php)
mulai (){
    echo "Arep ngeprank neh?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»"
            echo "♥ Matursuwun Sudah Menggunakan Tools Ini ♥"
            echo "««««««««««««««««««««««««««««««««««««««««««"
    fi
}
#spam
spam(){
    clear
    troll
    echo
    echo "×××××××××××××××××"
    echo "[1] Spam SMS  [1]"
    echo "[2] Spam TELP [2]"
    echo "[3] Keluar    [3]"
    echo "×××××××××××××××××"
    echo
    echo "================="
    echo "|| [1] [2] [3] ||"
    echo "================="
    echo
    read pilih
    if [ $pilih = "1" ]; then
            echo "[+] Spam SMS [+]"
            #function spam
            echo
            echo "Berapa Nomer e Cuk"
            echo contoh 085xxxxxxxxx
            read target # masukin no telp
            echo
            echo "Berapa SMS Yang Mau Dikirim?"
            read paket
            echo
            echo Apa Nomer e $target "dan SMS dikirim "$paket" Sudah Benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan spam SMS ke nomor $target
                    echo
                    echo "================================================"
                    echo "[!] Jangan Tutup Termux Sebelum Spam Selesai [!]"
                    echo "================================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan Tools Dengan Bijak Njeng"
                    echo
                    echo "   ___       _ "
                    echo "  / _ \__  _| |   _   _ _ __ __  __ "
                    echo " | | | \ \/ / |  | | | | '_  \\ \/ / "
                    echo " | |_| |>  <| |__| |_| | | | |>  < "
                    echo "  \___//_/\_\_____\__, |_| |_/_/\_\ "
                    echo "                  |___/ "
       		    echo

            else
                    echo "Kesalahan"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "[+] Spam TELP [+]"
            #function spam
            echo
            echo "Berapa Nomer e Cuk?"
            echo Contoh : 085xxxxxxxxx
            read target # masukin no telp
            echo
            echo "»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»"
            echo "[?] Mau Spam Grab/Toko Pedia [?]"
            echo "================================"
            echo "[1]           GRAB           [1]"
            echo "[2]        TOKO PEDIA        [2]"
            echo "================================"
            echo "[?]          [1][2]          [?]"
            echo "««««««««««««««««««««««««««««««««"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="tokopedia"
            fi
            echo Apa Nomer e $target kui $api_spam "Sudah Bener?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo [!] MELAKUKAN SPAM KE NOMOR [!] $target
                  echo
    		  echo "××××××××××××××××××××××××××××××××××××××××××××××××"
                  echo "[!] Jangan Tutup Termux Sebelum Spam Selesai [!]"
                  echo "××××××××××××××××××××××××××××××××××××××××××××××××"
   		  echo
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo
                  echo "[+] Gunakan Tools Dengan Bijak Njeng [+]"
                  echo
                  echo "   ___       _ "
		  echo "  / _ \__  _| |   _   _ _ __ __  __ "
		  echo " | | | \ \/ / |  | | | | '_  \\ \/ / "
		  echo " | |_| |>  <| |__| |_| | | | |>  < "
 		  echo "  \___//_/\_\_____\__, |_| |_/_/\_\ "
                  echo "                  |___/ "
		  echo
            else
                  echo Kesalahan, silahkan coba lagi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "[+] Matursuwun Sudah Menggunakan Tools Ini [+]"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
}
close(){
    exit
}
clear
echo "Loading.."
load
clear
troll
echo Sopo Jenengmu Su? #tulisan keluar
read nick #membaca yang ditulis
clear
troll
echo Woy $nick "Koyok e Koe Jomblo"
echo
echo "Mulai Spam Nggak?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
