ifneq ($(filter tera_bullhead, $(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under, device/lge/bullhead/)

# Read WiFi MAC Address from persist partition
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/qca_cld ; \
	ln -sf /persist/wlan_mac.bin $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/wlan_mac.bin)

endif
