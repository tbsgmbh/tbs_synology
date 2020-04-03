#!/bin/bash

./patch-kernel.sh
make distclean

# Enable some staging drivers
make stagingconfig

echo "V4L drivers building..."
make -j5

echo "V4L drivers installing..."
rm -rf /lib/modules/$(uname -r)/kernel/drivers/media
rm -rf /lib/modules/$(uname -r)/kernel/drivers/staging/media
rm -rf /lib/modules/$(uname -r)/kernel/drivers/linux
rm -rf /lib/modules/$(uname -r)/extra


make install
echo "V4L drivers installation done"
echo "You need to reboot..."
