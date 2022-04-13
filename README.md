# debian-on-arm
Files needed to create a simple vm running on emulated arm using qemu on linux x86 (not tested on Windows)
Qemu is supposedly already installed on the system when running the setup
#
# Usage
1. Clone repository 
2. Run `setup.sh`
3. The first thing the setup does is creating a virtual drive for the vm (size 8G)
4. Then it will start the debian installer
5. Follow the installer until it asks to select from which nation it should search for mirrors
    - Because this is an old version of debian none of the mirrors are usable
    - So choose, on top of the list, to enter the mirror manually
    - The mirror which should be used is `archive.debian.org`
6. Follow the installer until the end (It may take quite a lot)
7. Run `post-setup.sh` with root privileges (`sudo`)
    - This script should copy the boot files from the .img to a `boot` folder in the working directory
    - If it fails those files (named like `vmlinuz-3.2.0-4-vexpress` and `initrd.img-3.2.0-4-vexpress`) have to 
      be retrieved manually (search for `qemu-nbd`)
7. Now it shuold be possible to start the vm from the `start.sh` script

# Suggestion
Unfortunately I've been unable to find a working kernel + initrd for newer versions of debian that 
are able to start an installer. In particular those need to be compatible with the emulated device
which is a vexpress-a9 running on a cortex-a9. If anyone else is able to find something else I'm happy
to update and expand the repo.
