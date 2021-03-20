KEYCHAIN=".KEYCHAIN"
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
    echo " $N Keychain Enabled!"
    cp zshrc zshrc_deactivated
        while IFS= read -r line;
    do
        echo $line >> zshrc

    done <$KEYCHAIN
    echo "Restarting Terminal for changes to take effect...."
fi

if [ "$TOGGLE" = "disable" ];
then
    echo "$N Keychain Disabled"
    rm zshrc
    cp zshrc_deactivated zshrc
    rm zshrc_deactivated
    echo "Restarting Terminal for changes to take effect...."
fi



