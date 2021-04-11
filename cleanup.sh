#echo "cleaning up......" >> test.txt
# Need to Finish
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

if [ "$TOGGLE" = "exit" ];
then
    tag=$( tail -n 1 $ZSHRC )
    if [ "$tag" = "# EOF" ];
    then
        for i in $(seq 1 $rlines); do sed -i '$d' $ZSHRC ; done;
        
    fi
    exit
fi





