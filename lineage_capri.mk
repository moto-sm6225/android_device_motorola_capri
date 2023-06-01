#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/capri/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_capri
PRODUCT_DEVICE := capri
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(10)
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/capri_retail/capri:11/RRBS31.Q1-3-48-22/9edc93:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=capri_retail \
    PRIVATE_BUILD_DESC="capri_retail-user 11 RRBS31.Q1-3-48-22 9edc93 release-keys"
