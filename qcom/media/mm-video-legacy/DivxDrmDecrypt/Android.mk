LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := \
    -D_ANDROID_

LOCAL_SRC_FILES:=       \
    src/DivXDrmDecrypt.cpp

LOCAL_C_INCLUDES:= \
    $(LOCAL_PATH)/inc \
    $(TARGET_OUT_HEADERS)/mm-core/omxcore


LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE:= libdivxdrmdecrypt
LOCAL_MODULE_TAGS := optional

LOCAL_SHARED_LIBRARIES	:= liblog libdl

LOCAL_LDLIBS +=
include $(BUILD_SHARED_LIBRARY)
