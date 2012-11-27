LOCAL_PATH := device/zte/mooncake/

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)




