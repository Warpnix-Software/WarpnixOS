## WarpnixOS 
## VISIT US ON THE WEB! https://warpnix-os.lovable.app/  
## STAY TUNED FOR OUR DISCORD SERVER, COMING SOON!
WarpnixOS is an XFCE Linux distribution that combines speed, older hardware compatibility, and nostalgic design language for a fun and intuitive desktop experience. It was originally released on July 20th, 2026, for AMD and Intel platforms.

Major features include full APT and FlatPak support built in (no Snap here lol), an easy and familiar Windows-like UI, and low system requirements, needing just a 1.3 GHz processor and 3 GB RAM. 
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

## Dual Booting WarpnixOS with Windows 

WarpnixOS can be installed alongside Windows. This allows you to choose between Windows and WarpnixOS when your computer starts.

> [!WARNING]
> **Back up your important files before partitioning or installing a new operating system.**
>
> Partitioning the wrong disk or selecting the wrong partition during installation can result in permanent data loss. If you are unsure about a partition, stop and verify it before continuing.

### 1. Create space for WarpnixOS

First, boot into Windows 10.

Open **Disk Management**:

1. Press `Windows + R`.
2. Enter `diskmgmt.msc`.
3. Press **Enter**.
4. Find your Windows partition, usually the `C:` drive.
5. Right-click the Windows partition.
6. Select **Shrink Volume**.
7. Enter the amount of space you want to use for WarpnixOS.
8. Complete the operation.

After shrinking the Windows partition, you should have **unallocated space** on the disk.

For example:

```text
+-------------------------------+-------------------+
|          Windows 10            |   Unallocated     |
|             C:                |      Space        |
+-------------------------------+-------------------+
```

Do **not** create a new Windows volume in the unallocated space. Leave it available for the WarpnixOS installation.

We recommend having at least **20 GB** available for WarpnixOS. More space is recommended if you plan to install applications, games, or store files.

### 2. Disable Windows Fast Startup

It is recommended to disable Windows Fast Startup before setting up a Windows/Linux dual boot.

Open:

**Control Panel → Hardware and Sound → Power Options → Choose what the power buttons do**

Click **Change settings that are currently unavailable**, disable **Turn on fast startup**, and save the changes.

### 3. Create a WarpnixOS USB installer

Download the latest WarpnixOS ISO from the [WarpnixOS GitHub repository](https://github.com/Warpnix-Software/WarpnixOS).

Create a bootable USB using a tool such as [Rufus](https://rufus.ie/).

> [!WARNING]
> Creating a bootable USB will erase the contents of the USB drive. Make sure the USB does not contain important files.

For Rufus, use:

```text
Partition scheme: MBR
Target system:    BIOS or UEFI
File system:      FAT32
```

When Rufus asks which writing mode to use, select **ISO Image mode**.

### 4. Boot the WarpnixOS USB

Insert the WarpnixOS USB and restart the computer.

Open the computer's boot menu. The key depends on the manufacturer. Common keys include:

```text
F12
F11
F9
F8
Esc
```

Select the WarpnixOS USB from the boot menu.

Once WarpnixOS has started, open a terminal.

### 5. Identify the correct installation target

Before running the installer, inspect the storage devices connected to your computer:

```bash
lsblk
```

For additional filesystem information, you can use:

```bash
lsblk -f
```

Example output:

```text
NAME        SIZE TYPE FSTYPE
nvme0n1   476.9G disk
├─nvme0n1p1  100M part vfat
├─nvme0n1p2  350G part ntfs
├─nvme0n1p3   16M part
└─nvme0n1p4 126.9G part
```

Your output will be different depending on your computer.

`lsblk` identifies the disks and partitions currently detected by Linux. Use it together with the partition layout you created in Windows to determine which storage should be used for WarpnixOS.

For example:

```text
/dev/nvme0n1
```

represents an entire disk, while:

```text
/dev/nvme0n1p2
```

represents a partition on that disk.

> [!WARNING]
> **Do not guess which disk or partition is Windows.**
>
> Verify the storage layout before continuing. Selecting the wrong disk or partition can erase Windows and your personal files.

### 6. Start the WarpnixOS installer

Start the installer with:

```bash
sudo eggs krill
```

Follow the installer prompts.

When the installer asks where WarpnixOS should be installed, select the **partition/installation target corresponding to the space you prepared for WarpnixOS**.

Do **not** select the Windows partition.

Do **not** select the entire disk if you intend to keep Windows.

Do **not** select the Windows recovery partition.

### 7. Be careful with the EFI System Partition

Windows systems using UEFI normally have a small **EFI System Partition**, usually formatted as FAT32.

It may look similar to:

```text
/dev/nvme0n1p1
```

with a size of around 100–500 MB.

This partition is used for boot files.

When dual booting, the existing EFI System Partition can be used by the bootloader. **Do not format or delete the Windows EFI System Partition.**

The Windows installation itself should remain untouched.

### 8. Complete the installation

After confirming that the correct WarpnixOS installation target has been selected, continue through the installer.

Allow the installer to configure the bootloader.

When installation is complete, reboot the computer and remove the installation USB.

### 9. Choose between Windows and WarpnixOS

After installation, the bootloader should provide an option to start either operating system.

Depending on the configuration, you may see entries similar to:


WarpnixOS
Advanced options for WarpnixOS
Windows Boot Manager

Select **WarpnixOS** to boot WarpnixOS.

Select **Windows Boot Manager** to boot Windows 10.

### Troubleshooting

#### Windows does not appear in the boot menu

If WarpnixOS starts but Windows is not listed, do not immediately reinstall Windows or delete any partitions.

First verify that the Windows partitions still exist:

```bash
lsblk -f
```

If the Windows partition and EFI System Partition are still present, the issue may be related to bootloader configuration or Windows detection.

#### You are unsure which partition to select

**STOP AND TAKE A BREATH. Do not continue with the installation.**

Run:

```bash
lsblk -f
```

and carefully identify the disks and partitions.

If you cannot determine which partition contains Windows and which space is intended for WarpnixOS, get help before continuing.

### Dual Boot Checklist

Before confirming the installation, make sure:

* [ ] Important Windows files are backed up.
* [ ] Windows has been safely shrunk.
* [ ] There is enough space available for WarpnixOS.
* [ ] The WarpnixOS USB has been created successfully.
* [ ] You have checked the storage layout with `lsblk`.
* [ ] You have identified the correct WarpnixOS installation target.
* [ ] You are **not** selecting the Windows partition.
* [ ] You are **not** erasing the entire Windows disk.
* [ ] You are **not** formatting the Windows EFI System Partition.
* [ ] You understand which partition the installer will modify.

> [!CAUTION]
> **If you are unsure, STOP AND ASK SOMEONE WHO IS MORE KNOWLEDGEABLE IN TECHNOLOGY OR SEARCH THE INTERNET FOR ANSWERS before confirming the installation.**
>
> Double-check the output of `lsblk` and make sure the installation target is the space you intentionally prepared for WarpnixOS.


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

