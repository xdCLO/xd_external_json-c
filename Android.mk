LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := libjson
LOCAL_CFLAGS := -Werror -Wno-unused-parameter
ifeq ($(TARGET_COMPILE_WITH_MSM_KERNEL),true)
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
endif
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)
LOCAL_SRC_FILES := arraylist.c \
		debug.c \
		json_c_version.c \
		json_object.c \
		json_object_iterator.c \
		json_tokener.c \
		json_util.c \
		libjson.c \
		linkhash.c \
		printbuf.c \
		random_seed.c
LOCAL_SHARED_LIBRARIES := libcutils libutils
LOCAL_MODULE_TAG := optional
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)
