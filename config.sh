#!/bin/bash

# Device
export FOX_BRANCH="fox_12.1"
export DT_LINK="https://github.com/Jayeudypdx/android_device_samsung_gta8wifi.git -b twrp-12.1"

export DEVICE="gta8wifi"
export OEM="samsung"

# Build Target
## "recoveryimage" - for A-Only Devices without using Vendor Boot
## "bootimage" - for A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher)
export TARGET="recoveryimage"

export OUTPUT="OrangeFox*.zip"

# Additional Dependencies (eg: Kernel Source)
# Format: "repo dest"
DEPS=(
    "https://github.com/OrangeFoxRecovery/Avatar.git misc"
   )

# Extra Command
export EXTRA_CMD="export OF_MAINTAINER=JayPDX"
# OF build flags
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/by-name/recovery"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/by-name/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/by-name/vendor"
export FOX_RECOVERY_BOOT_PARTITION="/dev/block/by-name/boot"
export FOX_USE_NANO_EDITOR=1
export FOX_USE_BASH_SHELL=1
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export OF_MAINTAINER=JayPDX
export FOX_DELETE_INITD_ADDON=1
export FOX_ASH_IS_BASH=1
export OF_KEEP_DM_VERITY=1
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1


# Magisk
## Use the Latest Release of Magisk for the OrangeFox addon
export OF_USE_LATEST_MAGISK=true

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
