.PHONY : all clean

all:
	make -C BaseTools
	export EDK_TOOLS_PATH="`pwd`/BaseTools"
	bash -c ". edksetup.sh BaseTools && sed -e s/GCCxx/GCC`gcc -dumpversion | cut -d '.' -f 1``gcc -dumpversion | cut -d '.' -f 2`/g ovmf_target.txt > Conf/target.txt&& build -D DEBUG_ON_SERIAL_PORT"

clean:
	export EDK_TOOLS_PATH="`pwd`/BaseTools"
	bash -c ". edksetup.sh BaseTools && build clean"
	make -C BaseTools clean
