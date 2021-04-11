#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_FACE_UNLOCK := true
HAVOC_MAINTAINER := Teamslow (Scissordragonboy)
HAVOC_GROUP_URL := https://t.me/lineage_vayu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="vayu" \
    TARGET_DEVICE="vayu"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
