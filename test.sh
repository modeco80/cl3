GAME_NAME=cl3

cd $GAME_NAME
SRT_PATH=$HOME/.steam/steam/ubuntu12_32/steam-runtime

cp -rv . ~/.steam/steam/steamapps/common/Half-Life/$GAME_NAME/

# launch the game
cd ~/.steam/steam/steamapps/common/Half-Life
export LD_LIBRARY_PATH=$PWD

echo "Launching Half-Life."
$SRT_PATH/run.sh ./hl_linux -dev -windowed -w 1024 -h 768 -game $GAME_NAME +developer 102 +sv_cheats 1
echo "Half-Life exited"
