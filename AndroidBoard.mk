LOCAL_PATH := device/zte/mooncake/

ifeq ($(SENSORS_COMPASS_AK8973),true)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/racer_kernel
else
ifeq ($(SENSORS_COMPASS_AK8962),true)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/carl_kernel
endif # SENSORS_COMPASS_AK8962
endif # SENSORS_COMPASS_AK8973

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)




