# WarpnixOS

### A little nostalgia. A little speed. A whole lot of Linux.

**Website:** https://warpnix-os.lovable.app/  
**GitHub:** https://github.com/Warpnix-Software/WarpnixOS

> **WarpnixOS 2.0 "Bellatrix" is planned for January 20, 2027. Stay tuned!**

WarpnixOS is a Linux distribution built around a simple idea: **make Linux feel familiar, run well on older hardware, and keep things fun.**

Released on July 20, 2026, WarpnixOS brings together the XFCE desktop, a Windows-inspired look, and the freedom of open-source software. It targets both Intel and AMD systems, including older computers that deserve a little more life.

No unnecessary bloat. No Snap packages. Just a lightweight desktop, APT, Flatpak, and room to make the system your own.

And yes, we actually want your old computer to run it. :D

![WarpnixOS desktop](https://github.com/user-attachments/assets/25a64c05-f36c-476c-b6a7-21a904349418)

---

## ✨ What Makes WarpnixOS Different?

- **A familiar desktop.** A Windows-inspired interface that feels comfortable without pretending to be Windows.
-  **Lightweight by design.** XFCE keeps the desktop responsive without demanding a monster PC.
- **Your packages, your choice.** APT and Flatpak support, with no Snap packages included by default.
- **Older hardware welcome.** WarpnixOS is designed with modest systems in mind.
- **It's still Linux.** Customize it, explore it, break things in a VM, fix them, and make it yours.
- **Open-source roots.** Built on existing open-source projects rather than reinventing every wheel.

WarpnixOS isn't trying to win a benchmark contest. It's trying to make using your computer enjoyable.

## System Requirements

These are the project's target requirements. Actual compatibility depends on your hardware, drivers, and the release you're installing.

| Component | Minimum target | Recommended |
| Processor | 1.3 GHz Intel or AMD CPU | A newer dual-core or better |
| Example CPUs | Intel Pentium SU4100, AMD Athlon II Neo K325, or equivalent | Any compatible newer CPU |
| RAM | 3 GB | 4 GB or more |
| Graphics | Compatible GPU; 512 MB VRAM target | Supported graphics hardware with working drivers |
| Storage | 20 GB available space | More room for apps and files |

**A quick note:** Meeting the minimum requirements doesn't guarantee that every graphics card, Wi-Fi adapter, or other device will work out of the box. Hardware compatibility varies.

---

## 🚀 Getting Started

### What You'll Need

Before installing, grab these:

- A USB flash drive with at least 16 GB of storage.
- Another computer to create the installer.
- An internet connection.
- A backup of anything you care about on the target computer.

**Back up your files first.** Installing an operating system can erase data, and creating a bootable USB will erase the USB drive itself.

### 1. Download WarpnixOS

Visit the [WarpnixOS GitHub repository](https://github.com/Warpnix-Software/WarpnixOS) and download the ISO for the release you want to try.

Make sure you're downloading a release intended for your hardware and boot configuration.

### 2. Create a Bootable USB

#### On Windows

1. Download [Rufus](https://rufus.ie/).
2. Plug in your USB drive.
3. Open Rufus and select the correct USB device.
4. Select the WarpnixOS ISO.
5. Choose the boot settings appropriate for the ISO and your computer.
6. Click **Start** and follow the prompts.

Rufus may offer different writing modes. Use the mode recommended for your ISO; if one doesn't boot correctly, check the release documentation before trying another.

#### On Linux

You can use a compatible USB imaging tool. One option is [mkusb](https://help.ubuntu.com/community/mkusb).

Follow its documentation, select the WarpnixOS ISO, and double-check the destination device before writing.

> [!CAUTION]
> Selecting the wrong USB or disk can wipe the wrong device. Check the device name and capacity before confirming.

### 3. Boot Into WarpnixOS

1. Plug the USB into the computer you want to use.
2. Restart the computer.
3. Open its boot menu. Common keys include `F8`, `F9`, `F11`, `F12`, or `Esc`, depending on the manufacturer.
4. Select your USB drive.
5. Choose the appropriate WarpnixOS boot option.
6. Give the system a moment to load.

You're in! Explore the desktop before deciding whether you want to install it.

---

## 🧪 Live USB or Full Installation?

You've got two main ways to try WarpnixOS.

### Live USB

Run WarpnixOS directly from your USB drive without installing it to your internal storage.

This is a good way to check whether the desktop, graphics, Wi-Fi, and other hardware work before committing.

Keep in mind that USB performance can vary, and files or settings may not survive a reboot unless persistence is supported and configured.

### Full Installation

Install WarpnixOS to internal storage for everyday use.

This generally provides a more permanent setup and may perform better than running from a slow USB drive.

**Important:** The installer may erase or repartition the selected disk. Read every storage prompt carefully before confirming.

---

## Installing WarpnixOS

The exact installer screens can differ between releases, so follow the instructions shipped with your ISO.

If your release uses the Penguins' Eggs/Krill installer workflow, the documented launch command is:

```bash
sudo eggs krill
```

From there, follow the prompts for the installation process. Depending on the release, these may include:

- Language and regional settings.
- Time zone and keyboard layout.
- User account and password.
- Network connection.
- Installation destination.
- Bootloader configuration.

Before the installer makes changes, review its summary and make sure the proposed operations match what you intended.

> [!WARNING]
> **If the installer offers only to erase the entire disk, do not proceed if you need to preserve an existing operating system.** Cancel and verify whether your WarpnixOS release supports the installation layout you want.

Don't assume every version of the installer has the same options or defaults.

---

## Dual-Booting With Windows

Want Windows and WarpnixOS on the same computer? That's a reasonable goal, but partitioning is where you really want to slow down and double-check everything.

Dual-boot support depends on the WarpnixOS release, its installer, your partition layout, and whether your computer boots in UEFI or legacy BIOS mode.

### Step 1: Back Up Your Files

Back up anything important before changing partitions or installing another operating system.

Seriously. This is the part you don't want to skip.

### Step 2: Make Room in Windows

1. Boot into Windows.
2. Press `Windows + R`.
3. Type `diskmgmt.msc` and press Enter.
4. Right-click your Windows partition, usually `C:`.
5. Choose **Shrink Volume**.
6. Enter how much space you want to free up.
7. Complete the operation.

You should now see **unallocated space** on the disk.

Leave that space unallocated. Don't create a new Windows volume there unless the installation instructions specifically require it.

At least 20 GB is the project's minimum storage target; more is recommended for everyday use.

### Step 3: Disable Fast Startup

Windows Fast Startup can complicate access to shared disks in dual-boot setups.

In Windows, open:

**Control Panel → Hardware and Sound → Power Options → Choose what the power buttons do**

Select **Change settings that are currently unavailable**, disable **Turn on fast startup** if the option is available, and save your changes.

### Step 4: Boot the WarpnixOS USB

Create your installer, boot from it, and open a terminal if needed.

To inspect your storage devices, run:

```bash
lsblk
```

For filesystem details, use:

```bash
lsblk -f
```

Example output:

```text
NAME          SIZE TYPE FSTYPE
nvme0n1     476.9G disk
├─nvme0n1p1   100M part vfat
├─nvme0n1p2   350G part ntfs
├─nvme0n1p3    16M part
└─nvme0n1p4 126.9G part
```

Your output will probably look different.

A quick distinction:

- `/dev/nvme0n1` is an entire disk.
- `/dev/nvme0n1p2` is one partition on that disk.

**Don't guess which device is which.** Identify your Windows partition, EFI System Partition, and the space you created before proceeding.

### Step 5: Check the Installer Before Continuing

If your release uses Krill, the command may be:

```bash
sudo eggs krill
```

However, **do not assume that the installer supports installing into existing unallocated space while preserving Windows**.

Before confirming anything, verify:

- Which disk the installer will modify.
- Which partitions it will format.
- Whether it will erase the entire disk.
- Whether it supports the intended dual-boot layout.
- How it handles the existing EFI System Partition.

If the installer only offers a whole-disk erase, cancel. Do not continue hoping it will preserve Windows.

### Step 6: Protect the EFI System Partition

On most UEFI Windows installations, the EFI System Partition contains boot files used to start Windows.

It is often a small FAT32 partition, but its exact size and location vary.

**Do not format or delete the Windows EFI System Partition.**

Only proceed if you understand how the installer will handle the existing boot files and have verified that your intended setup is supported.

### Step 7: Finish Carefully

Once you've verified that the installer can safely perform your intended installation:

1. Review the proposed partition changes.
2. Confirm that Windows and recovery partitions will be preserved.
3. Verify the bootloader configuration.
4. Proceed only if everything matches your plan.
5. Reboot when installation finishes.

A correctly configured dual-boot setup may show entries such as:

```text
WarpnixOS
Advanced options for WarpnixOS
Windows Boot Manager
```

The actual menu depends on your bootloader and firmware.

### If Windows Disappears From the Boot Menu

Don't panic, and don't immediately reinstall Windows or delete partitions.

Boot into WarpnixOS if possible and check:

```bash
lsblk -f
```

If the Windows partitions still exist, the issue may be related to bootloader configuration or Windows detection. Investigate that separately before making more disk changes.

### Dual-Boot Checklist

- [ ] My important files are backed up.
- [ ] I have created unallocated space in Windows.
- [ ] I know which disk contains Windows.
- [ ] I have checked the storage layout with `lsblk -f`.
- [ ] I know which partitions the installer will modify.
- [ ] The installer supports my intended dual-boot setup.
- [ ] I will not format the Windows partition.
- [ ] I will not erase the entire Windows disk.
- [ ] I will not format or delete the Windows EFI System Partition.
- [ ] I have reviewed the final installation summary.

**Not sure about a step? Stop and ask for help before confirming.** A few extra minutes of checking beat losing an entire Windows installation.

---

## Frequently Asked Questions

### When is WarpnixOS 2 coming out?

WarpnixOS 2.0 **"Bellatrix"** is planned for January 20, 2027.

The next major release is planned to move to a heavily debloated KDE Plasma 6 desktop while keeping the project's focus on speed and familiar design.

### Can I use a different desktop environment?

WarpnixOS has been tested for compatibility with desktop environments and window managers including:

- XFCE
- KDE Plasma
- LXQt
- Openbox

Compatibility, installation steps, and resource usage vary. Installing another desktop environment may also introduce additional packages and services.

### Will it run on my old computer?

That's the idea!

The project targets older hardware, with roughly 2010-era systems as a starting point and 2012–2013-era systems or newer recommended for a smoother experience.

Those dates are only rough guidelines. The CPU, graphics hardware, RAM, storage, and available drivers matter much more than the release year alone.

### How long will each major version be supported?

The project plans a **two-year support lifespan for each major release**. Check the release announcements for the specific dates and details.

### Does WarpnixOS use Snap?

Snap packages are not included by default. WarpnixOS focuses on APT and Flatpak for package management.

### Is WarpnixOS open source?

Yes! WarpnixOS is built on open-source software, and the project is released under the GNU General Public License, version 3.0. See the repository for the applicable license files and third-party notices.

---

## Find Us Around the Internet

- **Website:** https://warpnix-os.lovable.app/
- **GitHub:** https://github.com/Warpnix-Software/WarpnixOS
- **YouTube:** https://www.youtube.com/@WarpdevOfficial
- **Scratch:** https://scratch.mit.edu/studios/51273178/

A Discord server is planned. Stay tuned for updates!

---

## 👨‍💻 About

WarpnixOS is created by **Therizinosaurus720**.

The project began in late 2024, with early development taking place in a VirtualBox virtual machine running on Zorin OS, with a ThinkPad T410 also part of the project's development story.

WarpnixOS uses [Penguins' Eggs](https://penguins-eggs.net/) as its remastering foundation, including the Krill CLI installer framework.

The goal is straightforward: give older and modestly equipped computers a lightweight, familiar, and enjoyable Linux experience without taking away the freedom to customize the system.

### A Little Thanks

WarpnixOS wouldn't exist without the work of the open-source community. A huge thank-you to the developers and maintainers behind Linux, XFCE, Debian and Ubuntu ecosystem tools, Penguins' Eggs, and the many other projects that make this possible.

And thanks to everyone who's checked out WarpnixOS, tested it, reported bugs, or just stopped by to see what we're building.

This project has been a long time coming. We're still learning, still building, and still figuring things out as we go.

**Thanks for giving WarpnixOS a look. Hope you enjoy the ride! :D**

---

*WarpnixOS is an independent community project and is not affiliated with or endorsed by Microsoft. Windows is a trademark of Microsoft Corporation.*

*WarpnixOS is distributed under the GNU General Public License, version 3.0 (GPL-3.0), subject to the terms of the project's license and any applicable third-party licenses.*
