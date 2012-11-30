# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
# Inherit from mooncake device
$(call inherit-product, device/zte/mooncake/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := mooncake
PRODUCT_DEVICE := mooncake
PRODUCT_BRAND := ZTE
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := Racer
