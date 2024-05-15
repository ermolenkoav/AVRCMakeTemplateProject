# Software
- Compiler and debugger
```bash
brew install avrdude avr-gcc@14 avr-gdb
brew install --HEAD simavr
```

- AVaRICE hardware programmer interface
```bash
brew install autoconf automake
git clone --depth 1 --branch avarice-rel-2_14 https://github.com/avrdudes/avarice.git
autoreconf -vi
./configure
make
sudo make install # avarice: /usr/local/bin/avarice
```

# Optional
- Install VCP FTDI Driver
`port example: /dev/tty.usbserial-AH0356TT`
- Serial Port Monitor