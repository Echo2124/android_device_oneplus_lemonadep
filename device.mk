# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2021-2022 The Evolution X Project
# SPDX-License-Identifier: Apache-2.0
# AAPT
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-evolution

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/sound_trigger_platform_info.xml

TARGET_SCREEN_HEIGHT := 3168
TARGET_SCREEN_WIDTH := 1440

# Device init scripts
PRODUCT_PACKAGES += \
    init.recovery.target.rc

# Overlays
PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSystemUIResTarget

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8350-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/lemonadep/lemonadep-vendor.mk)
