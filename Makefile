#
# proxy makefile for Crispy-Life 3 on Linux
# (C) 2019 modeco80
#

.PHONY: all clean test

all:
	pushd dll_src/os/linux && $(MAKE)
	cp dll_src/os/linux/hl_map.txt cl3/dlls/
	cp dll_src/os/linux/hl_cdll_map.txt cl3/cl_dlls/

clean:
# remove the build remnants from the base hl1 tree itself
	-rm -rf dll_src/os/linux/release
	-rm -f dll_src/os/linux/hl_map.txt
	-rm -f dll_src/os/linux/hl_cdll_map.txt
# remove from game tree
	-rm -rf cl3/cl_dlls/client.so
	-rm -rf cl3/cl_dlls/client.so.dbg
	-rm -rf cl3/cl_dlls/hl_cdll_map.txt
# remove hldll
	-rm -rf cl3/dlls/hl.so
	-rm -rf cl3/dlls/hl.so.dbg
	-rm -rf cl3/dlls/hl_map.txt

# test the game
test: all
	./test.sh
