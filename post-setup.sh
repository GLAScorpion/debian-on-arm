#/bin/bash
mkdir /mnt/arm-debian
modprobe nbd max_part=16
qemu-nbd -c /dev/nbd0 armdisk.img
mount /dev/nbd0p1 /mnt/arm-debian
mkdir boot
cp /mnt/arm-debian/* boot/
chmod 777 boot
umount /mnt/arm-debian
qemu-nbd -d /dev/nbd0
rm -r /mnt/arm-debian
