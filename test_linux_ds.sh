cd cl3
GAME_NAME=$(basename $PWD)
cp -rv . ../rehlds/$GAME_NAME/
cd ../rehlds
export LD_LIBRARY_PATH=$PWD

./hlds_linux -dev -condebug -nomaster -insecure -game game +sv_cheats 1 +maxplayers 8 +map c1a0 +port 27016
