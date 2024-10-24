#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Inherit from common yaap configuration
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Gapps
TARGET_BUILD_GAPPS := true

# MIUI Camera
$(call inherit-product-if-exists, vendor/xiaomi/miuicamera-mondrian/miuicamera-mondrian-vendor.mk)

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="mondrian_global-user 14 UKQ1.230804.001 V816.0.8.0.UMNMIXM release-keys" \
#    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
#    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/mondrian_global/mondrian:14/UKQ1.230804.001/V816.0.8.0.UMNMIXM:user/release-keys

TARGET_HAS_UDFPS := true

EXTRA_UDFPS_ANIMATIONS := true

TARGET_ENABLE_BLUR := true

PRODUCT_NO_CAMERA := false

TARGET_NO_KERNEL := false

TARGET_BOARD_PLATFORM := taro

# Device identifier. This must come after all inclusions.

PRODUCT_NAME := yaap_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23013PC75G

PRODUCT_SYSTEM_NAME := mondrian_global
PRODUCT_SYSTEM_DEVICE := mondrian

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
