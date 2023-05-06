# Copyright (C) 2021-2023 The LineageOS Project
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

$(call inherit-product, build/target/product/sdk_phone_x86.mk)

include vendor/lineage/build/target/product/lineage_generic_target.mk

include vendor/gapps/x86/x86-vendor.mk

# Always build modules from source
PRODUCT_MODULE_BUILD_FROM_SOURCE := true

# Enable mainline checking
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
   system/addon.d/70-velvet.sh \
   system/app/Development/Development.apk \
   system/app/Development/oat/x86/Development.odex \
   system/app/Development/oat/x86/Development.vdex \
   system/app/FlipendoPrebuilt/FlipendoPrebuilt.apk \
   system/app/GoogleExtShared/GoogleExtShared.apk \
   system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk \
   system/etc/init/smartcharge-init.rc \
   system/etc/permissions/com.android.development.xml \
   system/etc/permissions/game-overlay.xml \
   system/etc/permissions/privapp-permissions-google.xml \
   system/fonts/CutiveMono.ttf \
   system/fonts/DroidSans-Bold.ttf \
   system/fonts/DroidSans.ttf \
   system/fonts/NotoSerif-Bold.ttf \
   system/fonts/NotoSerif-BoldItalic.ttf \
   system/fonts/NotoSerif-Italic.ttf \
   system/fonts/NotoSerif-Regular.ttf \
   system/fonts/Roboto-Regular.ttf \
   system/fonts/RobotoFallback-VF.ttf \
   system/fonts/RobotoStatic-Regular.ttf \
   system/lib/lib7z.so \
   system/lib/libblasV8.so \
   system/lib/librsjni.so \
   system/lib/libRSSupport.so \
   system/xbin/7z \
   system/xbin/pigz \
   system/xbin/unrar \
   system/xbin/zip \
    system/bin/unzstd \
    system/bin/zstd \
    system/bin/zstdcat \
    system/bin/zstdgrep \
    system/bin/zstdless \
    system/bin/zstdmt \
    system/lib/libzstd.so

# Overrides
PRODUCT_NAME := lineage_sdk_phone_x86
PRODUCT_MODEL := LineageOS Android SDK built for x86

PRODUCT_PACKAGES += Remove_Packages

PRODUCT_SDK_ADDON_NAME := lineage
PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := $(LOCAL_PATH)/source.properties
