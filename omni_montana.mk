#
# Copyright (C) 2016 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from msm8937-common
$(call inherit-product-if-exists, device/motorola/msm8937-common/msm8937.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

ifeq ($(TARGET_PRODUCT),omni_montana_SAR)
   PRODUCT_DEVICE := montana_SAR
   PRODUCT_NAME := montana_hima_SAR
else
   PRODUCT_DEVICE := montana
   PRODUCT_NAME := omni_montana
endif
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto G5S
PRODUCT_MANUFACTURER := Motorola

ifeq ($(TARGET_PRODUCT),omni_montana_SAR)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.system_root_image=true
endif
