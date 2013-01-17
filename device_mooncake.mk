# Copyright (C) 2011-2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
