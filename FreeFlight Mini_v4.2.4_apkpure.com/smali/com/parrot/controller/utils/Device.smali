.class public Lcom/parrot/controller/utils/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final skycontrollerModelName:Ljava/lang/String; = "SkyController"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/parrot/controller/utils/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/utils/Device;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceSerial(Lcom/parrot/controller/devicecontrollers/DeviceController;)Ljava/lang/String;
    .locals 11
    .param p0, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 34
    const/4 v6, 0x0

    .line 35
    .local v6, "serial":Ljava/lang/String;
    const/4 v1, 0x0

    .line 36
    .local v1, "incomingBundle":Lcom/parrot/controller/devicecontrollers/ARBundle;
    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v1

    .line 41
    :cond_0
    if-eqz v1, :cond_1

    .line 43
    instance-of v8, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    if-eqz v8, :cond_2

    .line 44
    const-string v8, "SkyControllerDeviceControllerSettingsStateProductSerialChangedNotification"

    invoke-virtual {v1, v8}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 45
    .local v7, "skySerialNotification":Landroid/os/Bundle;
    if-eqz v7, :cond_1

    .line 47
    const-string v8, "SkyControllerDeviceControllerSettingsStateProductSerialChangedNotificationSerialNumberKey"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .end local v7    # "skySerialNotification":Landroid/os/Bundle;
    :cond_1
    :goto_0
    sget-object v8, Lcom/parrot/controller/utils/Device;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "device serial = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-object v6

    .line 52
    :cond_2
    const-string v8, "DeviceControllerSettingsStateProductVersionChangedNotification"

    invoke-virtual {v1, v8}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 53
    .local v5, "productVersionNotification":Landroid/os/Bundle;
    const-string v8, "DeviceControllerSettingsStateProductSerialLowChangedNotification"

    invoke-virtual {v1, v8}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 54
    .local v4, "productSerialLowNotification":Landroid/os/Bundle;
    const-string v8, "DeviceControllerSettingsStateProductSerialHighChangedNotification"

    invoke-virtual {v1, v8}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 55
    .local v3, "productSerialHighNotification":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 57
    const-string v8, "DeviceControllerSettingsStateProductSerialLowChangedNotificationLowKey"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "lowSerial":Ljava/lang/String;
    const-string v8, "DeviceControllerSettingsStateProductSerialHighChangedNotificationHighKey"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "highSerial":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static isHDMIPlugged()Z
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->hasScreen()Z

    move-result v0

    return v0
.end method

.method public static isJSEvo(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z
    .locals 3
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 78
    if-eqz p0, :cond_0

    .line 80
    sget-object v1, Lcom/parrot/controller/utils/Device$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 85
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSkycontroller()Z
    .locals 2

    .prologue
    .line 24
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SkyController"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
