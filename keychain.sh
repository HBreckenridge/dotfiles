KEYCHAIN=".KEYCHAIN"

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
    etag=$( tail -n 1 zshrc )
    if [ "$etag" = "# End of ZSHRC" ];
    then
        echo " $N Keychain Enabled!"
        cp zshrc zshrc_deactivated
            while IFS= read -r line;
        do
            echo $line >> zshrc
        done <$KEYCHAIN

        echo "# EOF" >> zshrc
        echo "Restarting Terminal for changes to take effect...."
    fi
    . ~/.bashrc
    resets
fi

if [ "$TOGGLE" = "disable" ];
then
    tag=$( tail -n 1 zshrc )
    if [ "$tag" = "# EOF" ];
    then
        for i in $(seq 1 $rlines); do sed -i '$d' zshrc; done;
        echo "$N Keychain Disabled"
        echo "Restarting Terminal for changes to take effect...."
    fi
    . ~/.bashrc
    reset
fi







