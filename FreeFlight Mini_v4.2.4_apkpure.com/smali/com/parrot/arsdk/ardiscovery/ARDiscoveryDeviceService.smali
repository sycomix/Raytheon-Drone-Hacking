.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
.super Ljava/lang/Object;
.source "ARDiscoveryDeviceService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;


# instance fields
.field private device:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private productID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "ARDiscoveryDevice"

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$1;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$1;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->setDevice(Ljava/lang/Object;)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    .line 91
    const-class v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    .line 93
    .local v0, "type":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$2;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE:[I

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    .line 109
    :goto_0
    return-void

    .line 96
    :pswitch_0
    const-class v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    goto :goto_0

    .line 99
    :pswitch_1
    const-class v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    goto :goto_0

    .line 102
    :pswitch_2
    const-class v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "device"    # Ljava/lang/Object;
    .param p3, "productID"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    .line 82
    invoke-virtual {p0, p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->setDevice(Ljava/lang/Object;)V

    .line 83
    iput p3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    .line 84
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 114
    const/4 v3, 0x1

    .line 116
    .local v3, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v8, p1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v8, :cond_2

    .line 118
    :cond_0
    const/4 v3, 0x0

    .line 184
    :cond_1
    :goto_0
    return v3

    .line 120
    :cond_2
    if-ne p1, p0, :cond_3

    .line 122
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move-object v4, p1

    .line 127
    check-cast v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 129
    .local v4, "otherDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_8

    .line 131
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 134
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 136
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v8, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 140
    .local v1, "deviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 142
    .local v6, "otherDeviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    invoke-virtual {v1, v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 144
    const/4 v3, 0x0

    goto :goto_0

    .line 147
    .end local v1    # "deviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    .end local v6    # "otherDeviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :cond_4
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-eqz v8, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 151
    .local v0, "deviceBLEService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 153
    .local v5, "otherDeviceBLEService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    invoke-virtual {v0, v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 155
    const/4 v3, 0x0

    goto :goto_0

    .line 159
    .end local v0    # "deviceBLEService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    .end local v5    # "otherDeviceBLEService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    :cond_5
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    if-eqz v8, :cond_6

    .line 161
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    .line 162
    .local v2, "deviceUsbService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;
    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    .line 163
    .local v7, "otherDeviceUsbService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 165
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 170
    .end local v2    # "deviceUsbService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;
    .end local v7    # "otherDeviceUsbService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 175
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 180
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public getDevice()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    return v0
.end method

.method public setDevice(Ljava/lang/Object;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/Object;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setProductID(I)V
    .locals 0
    .param p1, "productID"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 232
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->productID:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "type":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    instance-of v1, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-eqz v1, :cond_1

    .line 239
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    .line 254
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 256
    if-eqz v0, :cond_0

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_MAX:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 260
    :cond_0
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    instance-of v1, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-eqz v1, :cond_2

    .line 243
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    goto :goto_0

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->device:Ljava/lang/Object;

    instance-of v1, v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    if-eqz v1, :cond_3

    .line 247
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_USB:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    goto :goto_0

    .line 251
    :cond_3
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_MAX:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    goto :goto_0
.end method
