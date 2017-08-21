# Copyright 2013 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_PREBUILT_KERNEL := device/hopebay/tera_bullhead/kernel/Image.gz-dtb:kernel

# base on bullhead
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# build hcfs binary and library
# BUILD_HCFS := true

$(call inherit-product, vendor/tera/config/common.mk)
BOARD_SEPOLICY_DIRS += device/hopebay/tera_bullhead/sepolicy

PRODUCT_NAME := tera_bullhead
#PRODUCT_DEVICE := tera_bullhead
PRODUCT_MODEL := Tera on BullHead

# not check vendor owner
PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product-if-exists, device/hopebay/tera_bullhead/thirdparty_app.mk)

PRODUCT_COPY_FILES += \
    device/hopebay/tera_bullhead/tera_permissions.xml:system/etc/default-permissions/tera_permissions.xml
