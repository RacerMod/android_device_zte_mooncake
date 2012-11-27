LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),mooncake)
    include $(call all-makefiles-under,$(LOCAL_PATH))
endif
