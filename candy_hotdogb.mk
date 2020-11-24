#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogb device
$(call inherit-product, device/oneplus/hotdogb/device.mk)

# Inherit some common Candy stuff.
$(call inherit-product, vendor/candy/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := candy_hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7T
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := normal
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7T \
    PRODUCT_NAME=OnePlus7T \
    PRIVATE_BUILD_DESC="hotdogb-user 10 QKQ1.190716.003 2011052234 release-keys"
PRODUCT_GMS_CLIENTID_BASE := android-oneplus

BUILD_FINGERPRINT := google/coral/coral:11/RQ1A.201205.008/6943376:user/release-keys
