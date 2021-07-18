cd build
cmake -DARM_NONE_EABI_TOOLCHAIN_PATH=/home/martin/gcc-arm-none-eabi-9-2020-q2-update -DNRF5_SDK_PATH=../../nRF5_SDK_15.3.0_59ac345 -DUSE_JLINK=1 -DNRFJPROG=/usr/bin/ ../
make -j pinetime-app
#nrfjprog -f nrf52 --program build/src/pinetime-app-1.2.0.hex --sectorerase