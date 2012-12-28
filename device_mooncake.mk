# proprietary side of the device
$(call inherit-product-if-exists, vendor/zte/mooncake/mooncake-vendor.mk)

DEVICE_PACKAGE_OVERLAYS := device/zte/mooncake/overlay

$(call inherit-product, device/zte/mooncake-common/mooncake.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := zte_mooncake
PRODUCT_DEVICE := mooncake
PRODUCT_MODEL := Racer

PRODUCT_PACKAGES += \
    sensors.mooncake

# Init
PRODUCT_COPY_FILES += \
    device/zte/mooncake/prebuilt/init.mooncake.rc:root/init.mooncake.rc\
    device/zte/mooncake/prebuilt/ueventd.mooncake.rc:root/ueventd.mooncake.rc
