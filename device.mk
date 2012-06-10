DEVICE_PACKAGE_OVERLAYS := device/zte/mooncake/overlay
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_AAPT_CONFIG := normal ldpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Graphics
PRODUCT_PACKAGES := \
        gralloc.msm7x27 \
        copybit.msm7x27 \
        hwcomposer.msm7x27

# OMX
PRODUCT_PACKAGES += \
        libmm-omxcore \
        libOmxCore \
        libstagefrighthw

# Camera
PRODUCT_PACKAGES += \
        camera.msm7x27

# GPS
PRODUCT_PACKAGES += \
        librpc \
        gps.mooncake

# Racer specific
PRODUCT_PACKAGES += \
        lights.mooncake \
        sensors.mooncake \
        RacerParts

# Audio
PRODUCT_PACKAGES += \
        audio.primary.mooncake \
        audio_policy.mooncake \
        audio.a2dp.default \
        libaudioutils

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapersPicker \
        librs_jni

#        LiveWallpapers \
#        VisualizationWallpapers \

# Other
PRODUCT_PACKAGES += \
        dexpreopt

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += send_bug

PRODUCT_COPY_FILES += \
         system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
         system/extras/bugmailer/send_bug:system/bin/send_bug
endif

DISABLE_DEXPREOPT := false

PRODUCT_TAGS += dalvik.gc.type-precise

# Enable repeatable keys in CWM
PRODUCT_PROPERTY_OVERRIDES += \
        ro.cwm.enable_key_repeat=true

PRODUCT_COPY_FILES := \
        device/zte/mooncake/prebuilt/init.mooncake.rc:root/init.mooncake.rc \
        device/zte/mooncake/prebuilt/init.mooncake.usb.rc:root/init.mooncake.usb.rc \
        device/zte/mooncake/prebuilt/ueventd.mooncake.rc:root/ueventd.mooncake.rc \
        device/zte/mooncake/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
        device/zte/mooncake/prebuilt/usr/keylayout/mooncake-keypad.kl:/system/usr/keylayout/mooncake-keypad.kl \
        device/zte/mooncake/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
        device/zte/mooncake/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
        device/zte/mooncake/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
        device/zte/mooncake/prebuilt/etc/start_usb0.sh:system/etc/start_usb0.sh \
        device/zte/mooncake/prebuilt/etc/gps.conf:system/etc/gps.conf \
        device/zte/mooncake/releasetools/extras.sh:system/bin/extras.sh

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
        device/zte/mooncake/prebuilt/etc/init.bt.sh:system/etc/init.bt.sh \
        system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# WiFi
PRODUCT_COPY_FILES += \
        device/zte/mooncake/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
        device/zte/mooncake/prebuilt/wifi/ar6000.ko:system/wifi/ar6000.ko \
        device/zte/mooncake/prebuilt/wifi/regcode:system/wifi/regcode \
        device/zte/mooncake/prebuilt/wifi/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
        device/zte/mooncake/prebuilt/wifi/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
        device/zte/mooncake/prebuilt/wifi/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
        device/zte/mooncake/prebuilt/wifi/device.bin:system/wifi/device.bin \
        device/zte/mooncake/prebuilt/wifi/eeprom.bin:system/wifi/eeprom.bin \
        device/zte/mooncake/prebuilt/wifi/eeprom.data:system/wifi/eeprom.data

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
         frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
         frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
         frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
         frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
         frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
         frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
         frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

$(call inherit-product, frameworks/base/build/phone-hdpi-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/zte/mooncake/mooncake-vendor.mk)
