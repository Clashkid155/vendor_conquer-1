# BuildType
CONQUER_BUILDTYPE ?= UNOFFICIAL

CONQUER_BUILD_DATE := $(shell date +"%Y%m%d-%H%M")
TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CONQUER_BUILD))
CONQUER_NUMBER_VERSION := 3.2
CONQUER_VERSION := ConquerOS_X-$(CONQUER_NUMBER_VERSION)-$(CONQUER_BUILD)-$(CONQUER_BUILD_DATE)-$(CONQUER_BUILDTYPE)
CONQUER_MOD_VERSION := ConquerOS_X-$(CONQUER_NUMBER_VERSION)-$(CONQUER_BUILD)-$(CONQUER_BUILD_DATE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.conquer.version=$(CONQUER_VERSION) \
    ro.conquer.version.number=$(CONQUER_VERSION_NUMBER) \
    ro.conquer.build_date=$(CONQUER_BUILD_DATE) \
    ro.conquer.build_date_utc=$(CONQUER_BUILD_DATE_UTC) \
    ro.conquer.build_type=$(CONQUER_BUILD_TYPE)

ifeq ($(CONQUER_BUILDTYPE), OFFICIAL)
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/secure/releasekey
endif
