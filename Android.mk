LOCAL_PATH := $(call my-dir)
# TODO:  Find a better way to separate build configs for ADP vs non-ADP devices
ifneq ($(TARGET_BOARD_AUTO),true)

ifneq ($(wildcard $(LOCAL_PATH)/$(TARGET_BOARD_PLATFORM)),)
  include $(call all-named-subdir-makefiles,$(TARGET_BOARD_PLATFORM))
endif

endif
