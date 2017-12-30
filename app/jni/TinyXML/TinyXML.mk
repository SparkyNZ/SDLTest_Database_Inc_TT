LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

TT_PATH := C:/work/TT_AndroidTest

SRC_TINYXML := $(TT_PATH)/TinyXML/TinyStr.cpp \
    $(TT_PATH)/TinyXML/TinyXML.cpp \
    $(TT_PATH)/TinyXML/TinyXMLError.cpp \
    $(TT_PATH)/TinyXML/TinyXMLParser.cpp

LOCAL_CFLAGS += -Wno-write-strings -Wnonportable-include-path

LOCAL_MODULE    := TinyXML
LOCAL_SRC_FILES := $(SRC_TINYXML)

include $(BUILD_STATIC_LIBRARY)


