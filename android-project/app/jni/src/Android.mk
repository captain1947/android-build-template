LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SRC_PATH := ../../../../src
SDL_PATH := ../SDL
SDL_IMAGE_PATH := ../SDL2_image
SDL_TTF_PATH := ../SDL2_ttf
SDL_NET_PATH := ../SDL2_net

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/$(SDL_PATH)/include \
	$(LOCAL_PATH)/$(SDL_IMAGE_PATH)/include \
	$(LOCAL_PATH)/$(SDL_TTF_PATH)/include \
	$(LOCAL_PATH)/$(SDL_NET_PATH)/include \
	$(LOCAL_PATH)/$(SRC_PATH) \

LOCAL_SRC_FILES :=  \
	../../../../src/main.cpp \
	../../../../src/engine.cpp

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image SDL2_ttf SDL2_net

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -lOpenSLES -llog -landroid

include $(BUILD_SHARED_LIBRARY)
