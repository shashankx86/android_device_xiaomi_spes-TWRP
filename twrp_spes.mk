#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
BOARD_VENDOR := Redmi
PRODUCT_BRAND := Redmi

PRODUCT_DEVICE := spes
PRODUCT_NAME := twrp_spes
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_RELEASE_NAME := spes

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
