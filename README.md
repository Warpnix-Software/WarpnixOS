## WarpnixOS 

WarpnixOS is an XFCE Linux distribution that combines speed, older hardware compatibility, and nostalgic design language for a fun and intuitive desktop experience. It was originally released on July 20th, 2026.

Major features include full APT and FlatPak support built in, an easy and familiar Windows-like UI, and low system requirements, needing just a 1.3 GHz processor and 3 GB RAM. 
I hope you enjoy!! :-D

<img width="1600" height="900" alt="Screenshot_2026-07-19_12-38-14" src="https://github.com/user-attachments/assets/25a64c05-f36c-476c-b6a7-21a904349418" />


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
WarpnixOS can be run in two different configurations:

   1. Hard Disk Installation (Recommended): Overwrites or partitions your internal drive for permanent use and maximum performance.
   2. Live media Mode: Runs directly off the flashed drive without changing your local computer files. Performance depends on your flash drive speed.

 
      --------------------------------
## Installation Guide (To Hard Disk)

   1. Shut down the target computer completely.
   2. Insert your bootable WarpnixOS USB flash drive or DVD.
   3. Turn on the computer while repeatedly pressing your manufacturer's boot menu key (Common keys: Fn, F8, F9, F11, or F12).
   4. Select your USB drive from the startup boot menu using the arrow keys and press Enter.
   5. Select the first option from the system bootloader menu.
   6. Wait for the desktop taskbar and environment icons to completely finish loading.
   7. Initialize the installer by opening the Terminal and running the following command:
   
     sudo eggs krill
   
   9. If prompted for an administrative password, input: evolution.
   10. Follow the Krill CLI setup prompt menus:
   * Choose your system language.
   * Select your regional Time Zone.
   * Configure your keyboard layout map (US English is default).
   * Create a lowercase user account name (no spaces) and password.
   * Define a separate administrative Root Password (You can also set the same password for both Root and Login, but making seperate ones is safer).
   * Connect to the internet.
   * Select your target storage disk and Confirm Erase (Warning: This wipes all existing disk data).
   * Select Yes to install the GNU|GRUB bootloader if prompted.
   11. Review the final summary screen and press Enter to copy system files.
   12. Once the process completes, type this command:
     
      sudo reboot
     
   13. Unplug the USB drive as the screen turns black to prevent looping the installer.

------------------------------
## Live Media Guide
If running directly from the USB drive without installing:

   1. Power down the computer and insert your persistent USB flash drive.
   2. Boot while tapping your manufacturer's boot key (e.g., F11 or F12).
   3. Select the USB drive, choose the first boot choice, and wait for the desktop environment to load.
   4. You can now safely manage files, search using pre-installed applications, or manage extra packages via the Terminal or the Discover Software Center.

--------------------------------

## FAQ

1: When will WarpnixOS 2 be released?
   Early 2027.

2: Can I install other desktop environments on WarpnixOS?
   Yes. WarpnixOS is officially tested and confirmed to be compatible with Openbox, KDE Plasma, XFCE, and LxQt.

3: How new does my computer have to be to run WarpnixOS smoothly? 
   To run WarpnixOS at bare minimum speed, you will require a computer from around 2010 or later. To run it smoothly, you will need a computer from around 2012-2013 or later.

4: How long will major WarpnixOS versions be supported?
   Each WarpnixOS major release will have a 2 year lifespan.

## And that's it! WarpnixOS is a long journey nearly 2 years in the making. So thank you for looking at it (and hopefully) trying it out!
## And of course, like all good stuff should be, WarpnixOS is FOSS, open sourced under the GNU GPL 3.0 license


## About the Project

Creator: Yusuf Ali 

Initial Release Date: 2026

Initial development machine: VirtualBox VM on Zorin OS/Thinkpad T410

Remaster Engine: Penguins' Eggs (Krill CLI Installer Framework) 

Target Environment: Light-to-medium spec computers running over standard hardware infrastructures.

You can find me on Scratch @Therizinosaurus720. It would be great to give me a follow :-)

Comment any bugs or errors you find at the WarpnixOS studio on Scratch: https://scratch.mit.edu/studios/51273178/

Find me on Youtube: https://www.youtube.com/@WarpdevOfficial

