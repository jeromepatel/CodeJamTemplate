#/bin/bash!

IFS=$'\n'
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P )"

rm -rf $DIR/A
rm -rf $DIR/B
rm -rf $DIR/C
rm -rf $DIR/D
rm -rf $DIR/E

bash $DIR/mainCreation.bash

mkdir $DIR/A
cp $DIR/Main.cpp $DIR/A/Main.cpp

mkdir $DIR/B
cp $DIR/Main.cpp $DIR/B/Main.cpp

mkdir $DIR/C
cp $DIR/Main.cpp $DIR/C/Main.cpp

mkdir $DIR/D
cp $DIR/Main.cpp $DIR/D/Main.cpp

mkdir $DIR/E
cp $DIR/Main.cpp $DIR/E/Main.cpp

TARGET_DIR="$1"
LETTER_1="$2"
LETTER_2="$3"
LETTER_3="$4"
LETTER_4="$5"
LETTER_5="$6"

if [[ $TARGET_DIR = "" ]]
then
    echo You must provide 1 argument and optional folder arguments:
    echo "  First: directory location"
    echo "  Optional: letters of problem folders to create!"
    exit
fi

mkdir "$TARGET_DIR"
mkdir "$TARGET_DIR/Inputs"
cp $DIR/dcj-runner.bash "$TARGET_DIR"/dcj-runner.bash
echo "  The following folders get created in "$TARGET_DIR

if [[ $LETTER_1 = "" ]]
then
    exit
fi
echo "    "$LETTER_1
cp -r $DIR/$LETTER_1 "$TARGET_DIR"

if [[ $LETTER_2 = "" ]]
then
    exit
fi
echo "    "$LETTER_2
cp -r $DIR/$LETTER_2 "$TARGET_DIR"

if [[ $LETTER_3 = "" ]]
then
    exit
fi
echo "    "$LETTER_3
cp -r $DIR/$LETTER_3 "$TARGET_DIR"

if [[ $LETTER_4 = "" ]]
then
    exit
fi
echo "    "$LETTER_4
cp -r $DIR/$LETTER_4 "$TARGET_DIR"

if [[ $LETTER_5 = "" ]]
then
    exit
fi
echo "    "$LETTER_5
cp -r $DIR/$LETTER_5 "$TARGET_DIR"
