.class public Lcom/parrot/freeflight/UserRemoteCtrl;
.super Ljava/lang/Object;
.source "UserRemoteCtrl.java"


# static fields
.field private static final JSON_NAME_NAME:Ljava/lang/String; = "name"

.field private static final JSON_NAME_PRODUCT_ID:Ljava/lang/String; = "productId"

.field private static final JSON_NAME_UID:Ljava/lang/String; = "uid"


# instance fields
.field private mDescription:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private final mUid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 57
    iput-object p2, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mName:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mUid:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 3
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 42
    iget-object v2, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductNetworkFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 43
    .local v1, "productNetwork":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_NSNETSERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v1, v2, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 45
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mUid:Ljava/lang/String;

    .line 53
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    :goto_0
    return-void

    .line 46
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_USBSERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v1, v2, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    .line 48
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->getSerial()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mUid:Ljava/lang/String;

    goto :goto_0

    .line 50
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 51
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mUid:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static create(Ljava/lang/String;)Lcom/parrot/freeflight/UserRemoteCtrl;
    .locals 9
    .param p0, "droneInfo"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 64
    .local v5, "stringReader":Ljava/io/StringReader;
    new-instance v4, Landroid/util/JsonReader;

    invoke-direct {v4, v5}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 65
    .local v4, "reader":Landroid/util/JsonReader;
    const/4 v2, 0x0

    .line 66
    .local v2, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 67
    .local v6, "uid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 69
    .local v3, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :try_start_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    .line 70
    :goto_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    if-eqz v2, :cond_1

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    .line 95
    new-instance v7, Lcom/parrot/freeflight/UserRemoteCtrl;

    invoke-direct {v7, v3, v2, v6}, Lcom/parrot/freeflight/UserRemoteCtrl;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_2
    return-object v7

    .line 75
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "attributeName":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    :goto_3
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 79
    goto :goto_0

    .line 76
    :sswitch_0
    const-string v8, "name"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x0

    goto :goto_3

    :sswitch_1
    const-string/jumbo v8, "uid"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :sswitch_2
    const-string v8, "productId"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x2

    goto :goto_3

    .line 81
    :pswitch_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 82
    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    invoke-static {v7}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 85
    goto :goto_0

    .line 91
    .end local v0    # "attributeName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 76
    :sswitch_data_0
    .sparse-switch
        -0x3eb1a996 -> :sswitch_2
        0x1c450 -> :sswitch_1
        0x337a8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    iget-object v3, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mDescription:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 137
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 138
    .local v1, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 139
    .local v2, "writer":Landroid/util/JsonWriter;
    const-string v3, "  "

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 141
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 142
    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 143
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 144
    const-string v3, "productId"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 145
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 155
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mDescription:Ljava/lang/String;

    .line 157
    .end local v1    # "stringWriter":Ljava/io/StringWriter;
    .end local v2    # "writer":Landroid/util/JsonWriter;
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mDescription:Ljava/lang/String;

    return-object v3

    .line 146
    .restart local v1    # "stringWriter":Ljava/io/StringWriter;
    .restart local v2    # "writer":Landroid/util/JsonWriter;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :try_start_3
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v3

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 150
    :try_start_4
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 153
    :goto_1
    throw v3

    .line 151
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z
    .locals 5
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v4

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 116
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v4, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v1, v4, :cond_0

    .line 117
    const/4 v4, 0x0

    .line 131
    :goto_0
    return v4

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductNetworkFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    .line 121
    .local v2, "productNetwork":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_NSNETSERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v2, v4, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 123
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v3

    .line 131
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    .local v3, "uid":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/parrot/freeflight/UserRemoteCtrl;->mUid:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 124
    .end local v3    # "uid":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_USBSERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v2, v4, :cond_2

    .line 125
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;

    .line 126
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;->getSerial()Ljava/lang/String;

    move-result-object v3

    .line 127
    .restart local v3    # "uid":Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceUsbService;
    .end local v3    # "uid":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 129
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "uid":Ljava/lang/String;
    goto :goto_1
.end method
