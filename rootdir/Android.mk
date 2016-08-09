LOCAL_PATH:= $(call my-dir)

# fstab

include $(CLEAR_VARS)
LOCAL_MODULE          := fstab.p6601
LOCAL_MODULE_TAGS     := optional eng
LOCAL_MODULE_CLASS    := ETC
LOCAL_SRC_FILES       := etc/fstab.p6601
LOCAL_MODULE_PATH     := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Init scripts

include $(CLEAR_VARS)
LOCAL_MODULE          := init.recovery.p6601.rc
LOCAL_MODULE_TAGS     := optional eng
LOCAL_MODULE_CLASS    := ETC
LOCAL_SRC_FILES       := etc/init.recovery.p6601.rc
LOCAL_MODULE_PATH     := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
