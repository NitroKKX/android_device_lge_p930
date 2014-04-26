LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := firmware_init
LOCAL_MODULE_TAGS := optional

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9310; \
        ln -sf /data/misc/audio/wcd9310_anc.bin $(TARGET_OUT_ETC)/firmware/wcd9310/wcd9310_anc.bin; \
        ln -sf /data/misc/audio/mbhc.bin $(TARGET_OUT_ETC)/firmware/wcd9310/wcd9310_mbhc.bin; \
        ln -sf /modem/image/amss.mbn $(TARGET_OUT_ETC)/firmware/amss.mbn; \
        ln -sf /modem/image/dsp1.mbn $(TARGET_OUT_ETC)/firmware/dsp1.mbn; \
        ln -sf /modem/image/dsp2.mbn $(TARGET_OUT_ETC)/firmware/dsp2.mbn; \
        ln -sf /modem/image/dbl.mbn $(TARGET_OUT_ETC)/firmware/dbl.mbn; \
        ln -sf /modem/image/osbl.mbn $(TARGET_OUT_ETC)/firmware/osbl.mbn; \
        ln -sf /modem/image/efs1.mbn $(TARGET_OUT_ETC)/firmware/efs1.mbn; \
        ln -sf /modem/image/efs2.mbn $(TARGET_OUT_ETC)/firmware/efs2.mbn; \
        ln -sf /modem/image/efs3.mbn $(TARGET_OUT_ETC)/firmware/efs3.mbn; \
        ln -sf /firmware/image/modem.mdt $(TARGET_OUT_ETC)/firmware/modem.mdt; \
        ln -sf /firmware/image/modem.b00 $(TARGET_OUT_ETC)/firmware/modem.b00; \
        ln -sf /firmware/image/modem.b01 $(TARGET_OUT_ETC)/firmware/modem.b01; \
        ln -sf /firmware/image/modem.b02 $(TARGET_OUT_ETC)/firmware/modem.b02; \
        ln -sf /firmware/image/modem.b03 $(TARGET_OUT_ETC)/firmware/modem.b03; \
        ln -sf /firmware/image/modem.b04 $(TARGET_OUT_ETC)/firmware/modem.b04; \
        ln -sf /firmware/image/modem.b05 $(TARGET_OUT_ETC)/firmware/modem.b05; \
        ln -sf /firmware/image/modem.b06 $(TARGET_OUT_ETC)/firmware/modem.b06; \
        ln -sf /firmware/image/modem.b07 $(TARGET_OUT_ETC)/firmware/modem.b07; \
        ln -sf /firmware/image/modem.b08 $(TARGET_OUT_ETC)/firmware/modem.b08; \
        ln -sf /firmware/image/modem.b09 $(TARGET_OUT_ETC)/firmware/modem.b09; \
        ln -sf /firmware/image/modem.b10 $(TARGET_OUT_ETC)/firmware/modem.b10; \
        ln -sf /firmware/image/q6.mdt $(TARGET_OUT_ETC)/firmware/q6.mdt; \
        ln -sf /firmware/image/q6.b00 $(TARGET_OUT_ETC)/firmware/q6.b00; \
        ln -sf /firmware/image/q6.b01 $(TARGET_OUT_ETC)/firmware/q6.b01; \
        ln -sf /firmware/image/q6.b02 $(TARGET_OUT_ETC)/firmware/q6.b02; \
        ln -sf /firmware/image/q6.b03 $(TARGET_OUT_ETC)/firmware/q6.b03; \
        ln -sf /firmware/image/q6.b04 $(TARGET_OUT_ETC)/firmware/q6.b04; \
        ln -sf /firmware/image/q6.b05 $(TARGET_OUT_ETC)/firmware/q6.b05; \
        ln -sf /firmware/image/q6.b06 $(TARGET_OUT_ETC)/firmware/q6.b06; \
        ln -sf /firmware/image/q6.b07 $(TARGET_OUT_ETC)/firmware/q6.b07; \
        ln -sf /firmware/image/playrdy.mdt $(TARGET_OUT_ETC)/firmware/playrdy.mdt; \
        ln -sf /firmware/image/playrdy.b00 $(TARGET_OUT_ETC)/firmware/playrdy.b00; \
        ln -sf /firmware/image/playrdy.b01 $(TARGET_OUT_ETC)/firmware/playrdy.b01; \
        ln -sf /firmware/image/playrdy.b02 $(TARGET_OUT_ETC)/firmware/playrdy.b02)

include $(BUILD_SHARED_LIBRARY)
