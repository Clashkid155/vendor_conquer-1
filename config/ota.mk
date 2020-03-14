ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)

CONQUER_OTA_VERSION_CODE := 3.x

CONQUER_PROPERTIES += \
    ro.conquer.ota.version_code=$(CONQUER_OTA_VERSION_CODE)

PRODUCT_PACKAGES += \
    Updates

PRODUCT_COPY_FILES += \
    vendor/conquer/config/permissions/org.pixelexperience.ota.xml:system/etc/permissions/org.pixelexperience.ota.xml

endif
