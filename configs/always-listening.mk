
# Local path for prebuilts
LOCAL_PATH:= vendor/frank/prebuilts/always-listening/system

# Common build prop overrides 
#PRODUCT_PROPERTY_OVERRIDES += \

# Needed Packages
#PRODUCT_PACKAGES += \

# Proprietary apps for always listening
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/priv-app/TriggerEnroll/TriggerEnroll.apk:/priv-app/TriggerEnroll/TriggerEnroll.apk \
    $(LOCAL_PATH)/priv-app/TriggerTrainingService/TriggerTrainingService.apk:/priv-app/TriggerTrainingService/TriggerTrainingService.apk 

# permission file needed for always listening
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/etc/permissions/com.motorola.triggerenroll.xml:/etc/permissions/com.motorola.triggerenroll.xml 
        
# libs needed for always listening
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libtrainingcheck.so:/lib/libtrainingcheck.so
       


