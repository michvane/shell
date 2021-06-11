#! /bin/bash

clear

function TimStudio {
	cd ~/Documents/TANGENT && cd TIM\ Studio && code . && cd ../Tim%20Studio%20GraphQL/ && code .
}

function CryptoTradingAssist {
	cd ~/Documents/PERSONAL/crypto-trade-assist && code . && cd ../crypto-trade-assist-server && code .
}

function Import {
	CHOICE=$(
	whiptail --title "Menu" --menu "Make your choice" 16 100 9 \
		"1)" "TIM Studio"   \
		"2)" "Crypto Trading Assist"  \
		"3)" "Import projects"
		"9)" "End script"  3>&2 2>&1 1>&3	
	)
}

state=1

while [ $state = 1 ]
do
CHOICE=$(
whiptail --title "Menu" --menu "Make your choice" 16 100 9 \
	"1)" "TIM Studio"   \
	"2)" "Crypto Trading Assist"  \
	"3)" "Import projects" \
	"9)" "End script"  3>&2 2>&1 1>&3	
)


case $CHOICE in
	"1)")   
		TimStudio
		echo "Opening Tim Studio.."
		exit
	;;
	"2)")   
	    CryptoTradingAssist
		echo "Opening Crypto Trade Assist.."
		exit
	;;
	"3)")
		state=2
	;;

	"9)")
		exit
	;;
esac
done

while [ $state = 2 ]
do

CHOICE=$(
whiptail --title "Menu" --menu "Make your choice" 16 100 9 \
	"1)" "Clone TIM Studio"   \
	"2)" "Clone Crypto Trading Assist"  \
	"3)" "Back" \
	"9)" "End script"  3>&2 2>&1 1>&3	
)


case $CHOICE in
	"1)")   
		cd ~/Documents/test/ &&
		git clone https://TangentWorksNV@dev.azure.com/TangentWorksNV/TIM%20Clients/_git/TIM%20Studio && mv TIM%20Studio TIM\ Studio &&
		git clone https://TangentWorksNV@dev.azure.com/TangentWorksNV/TIM%20Clients/_git/Tim%20Studio%20GraphQL
		echo "Cloning Tim Studio.."
	;;
	"2)")   
	    CryptoTradingAssist
		echo "Opening Crypto Trade Assist.."
		exit
	;;
	"3)")
		state=1
	;;

	"9)")
		exit
	;;
esac
done

exit
