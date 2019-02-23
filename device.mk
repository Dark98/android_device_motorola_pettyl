#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/motorola/pettyl/pettyl-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/mot_gc2375h_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_gc2375h_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_hi556_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_hi556_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_hi556_hlt_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_hi556_hlt_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k4h8_pettyl_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/mot_s5k4h8_pettyl_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/msm8917_mot_pettyl_camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/msm8917_mot_pettyl_camera.xml \
    $(LOCAL_PATH)/configs/camera/s5k3l8_jetertr_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k3l8_jetertr_chromatix.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/keylayout/uinput-egis.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-egis.kl

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-egis.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-egis.idc
