qemu-system-arm -m 1024M -M vexpress-a9  \
                -kernel boot/vmlinuz-3.2.0-4-vexpress \
                -initrd boot/initrd.img-3.2.0-4-vexpress \
                -append "root=/dev/mmcblk0p2" -sd armdisk.img

