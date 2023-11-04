#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from G512 device
$(call inherit-product, device/general/G512/device.mk)

PRODUCT_DEVICE := G512
PRODUCT_NAME := omni_G512
PRODUCT_BRAND := GM
PRODUCT_MODEL := G512
PRODUCT_MANUFACTURER := general

PRODUCT_GMS_CLIENTID_BASE := android-general

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="G512-user 12 SP1A.210812.016 1680579714 release-keys"

BUILD_FINGERPRINT := GM/G512/G512:12/SP1A.210812.016/1680576716:user/release-keys
