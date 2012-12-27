LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

TARGET_BOOTLOADER_BOARD_NAME := mooncake

BOARD_HAVE_BLUETOOTH := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4708

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME     := ar6000

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_EGL_CFG := device/zte/mooncake/prebuilt/lib/egl/egl.cfg

BOARD_GPS_LIBRARIES := libloc_api

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

BOARD_GPS_LIBRARIES := libloc
BOARD_USES_GPSSHIM := true
BOARD_GPS_NEEDS_XTRA := true

TARGET_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIBAUDIO := true

BOARD_CUSTOM_USB_CONTROLLER := ../../device/zte/mooncake/UsbController.cpp

BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

TARGET_KERNEL_SOURCE := kernel/zte/msm7x27
TARGET_KERNEL_CONFIG := cyanogen_mooncake_defconfig

BOARD_KERNEL_BASE := 0x02600000
BOARD_KERNEL_CMDLINE := androidboot.hardware=mooncake console=null

# # cat /proc/mtd
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

BOARD_LDPI_RECOVERY := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/mooncake/recovery/recovery_kernel
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/zte/mooncake/recovery/recovery_ui.c
TARGET_RECOVERY_INITRC := device/zte/mooncake/recovery/recovery.rc
