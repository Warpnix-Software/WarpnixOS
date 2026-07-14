## WarpnixOS 

NOTICE: WARPNIXOS 1 IS NOT RELEASED YET NOR IS THE SOURCE CODE. WATCH THIS SPACE, THOUGH!

WarpnixOS is an XFCE Linux distribution that combines speed, older hardware compatibility, and nostalgic design language for a fun and intuitive desktop experience. 
Major features include full APT and FlatPak support built in, an easy and familiar Windows-like UI, and low system requirements, needing just a 1.3 GHz processor and 3 GB RAM. 
I hope you enjoy!! :-D
------------------------------
## Minimum System Requirements
Before installing, ensure your target hardware meets these minimum standards:

* Processor: Intel Pentium SU4100, AMD Athlon II Neo K325, or equivalent 1.3 GHz processor
* Memory: 3 GB RAM minimum (DDR3 or newer recommended)
* Graphics: Dedicated or integrated GPU with at least 512 MB VRAM (NVIDIA GeForce 8800 GT, AMD Radeon HD 5450 or equivalent)
* Storage: 20 GB available disk space (required for hard disk installation)

------------------------------
## Prerequisites for Installation
To prepare your installation media, you will need:

   1. A USB flash drive with a minimum capacity of 16 GB (USB 3.0 or USB-C preferred for installation speed).
   2. A secondary computer running an existing OS (Windows 8+ or a Debian-based Linux distro).
   3. An active internet connection.

------------------------------
## Creating the Bootable USB
## On Microsoft Windows

   1. Download Rufus from rufus.ie.
   2. Insert your USB flash drive.
   3. Select your drive in the Device field and give it a volume label.
   4. Choose the downloaded WarpnixOS ISO in the Boot Selection field.
   5. Optional: If using Live Media with persistence, adjust the Persistent Partition Size slider (keep at least 5 GB for the installer).
   6. Set Partition Scheme to MBR.
   7. Set Target System to BIOS or UEFI.
   8. Set File System to FAT32.
   9. Click START. If prompted by an "ISOHybrid image detected" popup, select Write in ISO Image mode (Switch to DD Image mode only if the USB fails to boot).

## On Linux 
   1. Ensure you have a modern terminal window and package manager.
   2. Download the MKUSB tool.
   3. Follow the official MKUSB Quick-Start Manual instructions to flash your WarpnixOS ISO.

------------------------------
## Deployment Modes
WarpnixOS can be run in three different configurations:

   1. Hard Disk Installation (Recommended): Overwrites or partitions your internal drive for permanent use and maximum performance.
   2. Live Media Mode: Runs directly off the flashed USB drive without changing your local computer files. Performance depends on your flash drive speed.
   3. Load to RAM (Not Recommended): Loads the entire OS workspace directly into memory. This heavily restricts memory for apps to run smoothly and requires a minimum of 8 GB RAM to operate.
