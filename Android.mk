LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES:= \
	source/connection.cc \
	source/helpers.cc \
	source/restclient.cc

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic
LOCAL_C_INCLUDES += external/stlport/stlport
LOCAL_SHARED_LIBRARIES += libstlport libdl
endif

LOCAL_SHARED_LIBRARIES += libcurl

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE := librestclient

include $(BUILD_SHARED_LIBRARY)
