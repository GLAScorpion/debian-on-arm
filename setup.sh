#/bin/bash
qemu-img create -f raw armdisk.img 8G
qemu-system-arm -m 1024M -sd armdisk.img \
                -M vexpress-a9 -cpu cortex-a9 \
                -kernel vmlinuz-3.2.0-4-vexpress -initrd initrd.gz \
                -append "root=/dev/ram"  -no-reboot
