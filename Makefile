.PHONY : all clean

all:
	OvmfPkg/build.sh -a X64 -D DEBUG_ON_SERIAL_PORT

clean:
	export EDK_TOOLS_PATH="`pwd`/BaseTools"
	bash -c ". edksetup.sh BaseTools && build clean"
	make -C BaseTools clean
