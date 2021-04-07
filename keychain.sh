exec &> logfile.txt
WD=$PZ/dotfiles
KEYCHAIN=$WD/".KEYCHAIN"
ZSHRC=$WD/'zshrc'
n=$(wc -l < $KEYCHAIN)
buffer=1

rlines=$(($n + $buffer))


while getopts n:T: option
do
case "${option}"
in
T) TOGGLE=${OPTARG};;
n) N=${OPTARG};;
esac
done

if [ "$TOGGLE" = "enable" ];
then
    etag=$( tail -n 1 $ZSHRC )
    if [ "$etag" = "# End of ZSHRC" ];
    then
        echo " $N Keychain Enabled!"
            while IFS= read -r line;
        do
            echo $line >> $ZSHRC
        done <$KEYCHAIN

        echo "# EOF" >> $ZSHRC
        echo "Restarting Terminal for changes to take effect...."
    fi
    source ~/.zshrc
    alacritty & disown
    PPPID=$(awk '{print $4}' "/proc/$PPID/stat")
    kill $PPPID
fi

if [ "$TOGGLE" = "disable" ];
then
    tag=$( tail -n 1 $ZSHRC )
    if [ "$tag" = "# EOF" ];
    then
        for i in $(seq 1 $rlines); do sed -i '$d' $ZSHRC ; done;
        echo "$N Keychain Disabled"
        echo "Restarting Terminal for changes to take effect...."
    fi
    source  ~/.zshrc
    alacritty & disown
    PPPID=$(awk '{print $4}' "/proc/$PPID/stat")
    kill $PPPID
fi

if [ "$TOGGLE" = "exit" ];
then
    tag=$( tail -n 1 $ZSHRC )
    if [ "$tag" = "# EOF" ];
    then
        for i in $(seq 1 $rlines); do sed -i '$d' $ZSHRC ; done;
        echo "$N Keychain Disabled"
        echo "Restarting Terminal for changes to take effect...."
    fi
    # $PZ/dotfiles/cleanup.sh 
    #disown
    PPPID=$(awk '{print $4}' "/proc/$PPID/stat")
    kill $PPPID
    
fi


#  getting the window size to open it back in the same spot
# wininfo -id $WINDOWID
# wininfo -id $WINDOWID | grep "upper-left X"
# wininfo -id $WINDOWID | grep "upper-left Y"
# wininfo -id $WINDOWID | grep "Width"
# wininfo -id $WINDOWID | grep "Height"
# wininfo -id $WINDOWID | grep "Corners"
# PARENT_COMMAND=$(ps -o comm= $PPID)
# echo $PARENT_COMMAND >> test.txt



