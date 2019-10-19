#/bin/bash
##Part1
################Starx's Work###################
#####Blog:https://www.ioflow.xyz/
#####Github:https://github.com/SuzukiHonoka
if [ ! -f "./config.sub" ]
then
echo "Latest config.sub file does not exist!"
wget -O ./config.sub 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD'
fi
latestc_date=$(grep -m 1 'timestamp' ./config.sub)
guessc_str_sp=$(find . -name config.sub)
array_1=(${guessc_str_sp// / })
for var in ${array_1[@]}
do
current_date=$(grep -m 1 'timestamp' $var)
if [ $current_date = $latestc_date ]
then
echo "Location:"$var "config.sub file is up to date"
else
echo "Location:"$var "config.sub file is expired"
echo "Date:"$current_date
cp ./config.sub $var
echo "Replaced!"
fi
done
echo "Part1 Done!"
##Part2
if [ ! -f "./config.guess" ]
then
echo "Latest config.guess file does not exist!"
wget -O ./config.guess 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD'
fi
latestc_date=$(grep -m 1 'timestamp' ./config.guess)
guess_str_sp=$(find . -name config.guess)
array_2=(${guess_str_sp// / })
for var in ${array_2[@]}
do
current_date=$(grep -m 1 'timestamp' $var)
if [ $current_date = $latestc_date ]
then
echo "Location:"$var "config.guess file is up to date"
else
echo "Location:"$var "config.guess file is expired"
echo "Date:"$current_date
cp ./config.guess $var
echo "Replaced!"
fi
done
echo "Part2 Done!"