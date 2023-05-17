LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SRC_PATH := .
SDL_PATH := ../SDL
SDL_IMAGE_PATH := ../SDL2_image
SDL_MIXER_PATH := ../SDL2_mixer
SDL_TTF_PATH := ../SDL2_ttf
SDL_NET_PATH := ../SDL2_net

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../headers \
	$(LOCAL_PATH)/$(SDL_PATH)/include \
	$(LOCAL_PATH)/$(SDL_IMAGE_PATH)/include \
	$(LOCAL_PATH)/$(SDL_MIXER_PATH)/include \
	$(LOCAL_PATH)/$(SDL_TTF_PATH)/include \
	$(LOCAL_PATH)/$(SDL_NET_PATH)/include \
	$(LOCAL_PATH)/../supernova/src \
	$(LOCAL_PATH)/$(SRC_PATH) \

LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/$(SRC_PATH)/*.cpp)

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image SDL2_mixer SDL2_ttf SDL2_net supernova

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -lOpenSLES -llog -landroid

include $(BUILD_SHARED_LIBRARY)