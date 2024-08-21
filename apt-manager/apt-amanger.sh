#!/bin/bash
# apt-manager.sh

reset;

export a="sudo apt-get "
export i="sudo apt-get install -y "
export u="sudo apt-get update"
export r="sudo apt-get remove --purge "
export g="sudo apt-get upgrade -y "
export gd="sudo apt-get dist-upgrade -y"
export ar="sudo apt-get autoremove -y "
export c="sudo apt-get autoclean"




echo -e "APT-Manager > Updating PackageList!"
$u 

remove() {
    while true;
    do
    read -p "APT-Manager > Remove > " pkg
    case $pkg in 
            q|Q) break; exit;;
            m|M) main; exit;;
            *) $r $pkg; continue;;
    esac
    done
}


install() {
    while true;
    do
    read -p "APT-Manager > Install > " pkg
    case $pkg in 
            q|Q) break; exit;;
            m|M) main; exit;;
            *) $i $pkg; continue;;
    esac
    done
}



menu() {

while true; 
do

    echo "================================================"
    echo "== APT Manager || v0.1 || (c)alvin            =="
    echo "================================================"
    echo "== 1|i|Install || 2|u|Upgrade  || 3|r|Remove  =="
    echo "================================================"
    echo "== m|Main || q|Quit  || non-profit-org        =="
    echo "================================================"


read -p "Console > " x

case $x in

        1|I|i) install; continue;;
        2|u|U) $g; continue;;
        3|r|R) remove; continue;;
        *) $x; continue;;
    
esac

done
    
}



while true;
do
menu;
done