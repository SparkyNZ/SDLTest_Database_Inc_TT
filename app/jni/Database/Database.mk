LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

MYLIBS := C:/androidlib

SDL_PATH := $(MYLIBS)/SDL2-prebuilt
GLM_PATH := $(MYLIBS)/glm

LOCAL_C_INCLUDES := ../SQLite $(SDL_PATH)/include $(GLM_PATH)

MY_CFLAGS     := -DANDROID_PDS -mfloat-abi=softfp -mfpu=neon
LOCAL_CFLAGS := -DHAVE_NEON=1 $(MY_CFLAGS) -Wno-write-strings -Wno-trigraphs -Wnonportable-include-path
LOCAL_CPPFLAGS := -Wno-conversion-null -fno-permissive -Wno-format-security -Wnonportable-include-path
LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := true

LOCAL_MODULE    := Database

SRC_DATABASE := Database.cpp


LOCAL_SRC_FILES := $(SRC_DATABASE)

include $(BUILD_STATIC_LIBRARY)

