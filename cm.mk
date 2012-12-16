# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-240x320

$(call inherit-product, device/zte/mooncake/mooncake.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mooncake BUILD_ID=IMM76D BUILD_FINGERPRINT=ZTE/P772A10D/atlas40:4.0.4/IMM76D/20120608.113547:user/release-keys PRIVATE_BUILD_DESC="P772A10D-user 4.0.4 IMM76D 20120608.113547 release-keys" BUILD_NUMBER=20120608.113547

PRODUCT_NAME := cm_mooncake
PRODUCT_DEVICE := mooncake
PRODUCT_RELEASE_NAME := Racer
