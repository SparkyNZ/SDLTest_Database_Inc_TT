LOCAL_PATH := $(call my-dir)

MYLIBS := C:/androidlib

include $(CLEAR_VARS)
LOCAL_MODULE := libSDL2
LOCAL_SRC_FILES := $(MYLIBS)/SDL2-prebuilt/$(TARGET_ARCH_ABI)/libSDL2.so
include $(PREBUILT_SHARED_LIBRARY)

# --------------------------------------------------------------------------------------------------

include $(CLEAR_VARS)
LOCAL_MODULE := libfreetype2
LOCAL_SRC_FILES := $(MYLIBS)/FreeType2/$(TARGET_ARCH_ABI)/libfreetype2-static.a
include $(PREBUILT_STATIC_LIBRARY)

# --------------------------------------------------------------------------------------------------

include $(CLEAR_VARS)

LOCAL_MODULE := Startup

MYLIBS := C:/androidlib

SDL_PATH := $(MYLIBS)/SDL2-prebuilt
GLM_PATH := $(MYLIBS)/glm

FT2_INCLUDES  := C:/androidlib/FreeType2/include

TT_PATH := C:/work/TT_AndroidTest
TT_INCLUDES := $(TT_PATH) $(TT_PATH)/SQLite $(TT_PATH)/TinyXML 

LOCAL_C_INCLUDES := $(TT_INCLUDES) $(SDL_PATH)/include $(GLM_PATH) $(FT2_INCLUDES)

MY_CFLAGS     := -DANDROID_PDS -mfloat-abi=softfp -mfpu=neon

#ifeq ($(TARGET_ARCH_ABI),$(filter $(TARGET_ARCH_ABI), armeabi-v7a x86))
    LOCAL_CFLAGS := -DHAVE_NEON=1 $(MY_CFLAGS) -Wno-write-strings -Wno-trigraphs -Wnonportable-include-path
    LOCAL_CPPFLAGS := -Wno-conversion-null -fno-permissive -Wno-format-security -Wnonportable-include-path
    LOCAL_ARM_MODE := arm
    LOCAL_ARM_NEON := true
#endif

LOCAL_LDFLAGS += -v

# Add your application source files here...

LOCAL_SRC_FILES := $(TT_PATH)/Android_Utils.cpp \
    $(TT_PATH)/FTP.cpp \
    $(TT_PATH)/LightWeightVector.cpp \
    $(TT_PATH)/Utils.cpp \
    $(TT_PATH)/XUnzip.cpp \
    $(TT_PATH)/ZIPDelete.cpp \
    $(TT_PATH)/Vector.cpp \
    $(TT_PATH)/TimerTasks.cpp \
    $(TT_PATH)/main.cpp

LOCAL_STATIC_LIBRARIES := libfreetype2 libSDL2 SQLite Database TinyXML

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog -lm -landroid

include $(BUILD_SHARED_LIBRARY)





