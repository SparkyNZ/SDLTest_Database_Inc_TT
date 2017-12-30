LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

TT_PATH := C:/work/TT_AndroidTest
SRC_SQLITE := $(TT_PATH)/SQLite/sqlite3.c

LOCAL_CFLAGS += -Wno-write-strings

LOCAL_MODULE    := SQLite
LOCAL_SRC_FILES := $(SRC_SQLITE)

include $(BUILD_STATIC_LIBRARY)