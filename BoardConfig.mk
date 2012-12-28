# Include mooncake common properties
-include device/zte/mooncake-common/BoardConfigCommon.mk

# Use the non-open-source parts, if they're present
-include vendor/zte/mooncake/BoardConfigVendor.mk

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME     := ar6000

# Kernel
TARGET_KERNEL_CONFIG := cyanogen_mooncake_defconfig

# Recovery
TARGET_RECOVERY_INITRC := device/zte/mooncake/prebuilt/recovery.rc
