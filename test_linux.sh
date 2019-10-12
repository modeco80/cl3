cd cl3
GAME_NAME=$(basename $PWD)
SRT_PATH=$HOME/.steam/steam/ubuntu12_32/steam-runtime

cp -rv . ~/.steam/steam/steamapps/common/Half-Life/$GAME_NAME/
cd ~/.steam/steam/steamapps/common/Half-Life
export LD_LIBRARY_PATH=$PWD
$SRT_PATH/run.sh ./hl_linux -windowed -w 1024 -h 768 -game $GAME_NAME +developer 102 +sv_cheats 1
