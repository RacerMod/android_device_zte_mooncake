# This variable is set first, so it can be overriden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use the non-open source parts, if they're present
-include vendor/zte/mooncake/BoardConfigVendor.mk

# CPU
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp

# Target and board properties
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_PROVIDES_LIBRIL := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOOTLOADER_BOARD_NAME := mooncake
TARGET_SPECIFIC_HEADER_PATH := device/zte/mooncake/include

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"../../bootable/recovery/minui/font_7x16.h\"
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/zte/mooncake/recovery/recovery_keys.c
TARGET_RECOVERY_INITRC := device/zte/mooncake/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/zte/mooncake/recovery/recovery.fstab

# Kernel
TARGET_KERNEL_SOURCE := kernel/zte/msm7x27
TARGET_KERNEL_CONFIG := cyanogen_mooncake_defconfig
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/mooncake/recovery/recovery_kernel
BOARD_KERNEL_BASE := 0x02600000
BOARD_KERNEL_CMDLINE := androidboot.hardware=mooncake console=null

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := AR6000
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := wlan0
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME     := ar6000

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# GPS
BOARD_GPS_LIBRARIES := libloc
BOARD_USES_GPSSHIM := true
BOARD_GPS_NEEDS_XTRA := true

# USB mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Browser
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome

# Webkit
ENABLE_WEBGL := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
COMMON_GLOBAL_FLAGS += -DQCOM_HARDWARE

# Graphics
TARGET_USES_GENLOCK := true
BOARD_EGL_CFG := device/zte/mooncake/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
COMMON_GLOBAL_FLAGS += -DREFRESH_RATE=60
TARGET_FORCE_CPU_UPLOAD := true

ENABLE_WEBGL := true

# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "recovery"
# mtd1: 00500000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00080000 00020000 "misc"
# mtd4: 02580000 00020000 "cache"
# mtd5: 0dc00000 00020000 "system"
# mtd6: 0a280000 00020000 "userdata"
# mtd7: 01500000 00020000 "oem"
# mtd8: 00180000 00020000 "persist"

BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0dc00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a280000
BOARD_FLASH_BLOCK_SIZE := 131072
