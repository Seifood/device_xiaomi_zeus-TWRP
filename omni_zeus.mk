#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from zeus device
$(call inherit-product, device/xiaomi/zeus/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
#$(call inherit-product, vendor/twrp/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zeus
PRODUCT_NAME := omni_zeus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201122G
PRODUCT_MANUFACTURER := xiaomi
