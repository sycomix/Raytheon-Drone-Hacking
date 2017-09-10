.class public Lcom/csr/btsmart/BtSmartService;
.super Landroid/app/Service;
.source "BtSmartService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;,
        Lcom/csr/btsmart/BtSmartService$LocalBinder;,
        Lcom/csr/btsmart/BtSmartService$BtSmartUuid;
    }
.end annotation


# static fields
.field public static final APPEARANCE_UNKNOWN:I = 0x0

.field public static final EXTRA_APPEARANCE_ICON:Ljava/lang/String; = "APPEARICON"

.field public static final EXTRA_APPEARANCE_KEY:Ljava/lang/String; = "APPEARKEY"

.field public static final EXTRA_APPEARANCE_NAME:Ljava/lang/String; = "APPEARNAME"

.field public static final EXTRA_CHARACTERISTIC_UUID:Ljava/lang/String; = "CHARUUID"

.field public static final EXTRA_CHARACTERISTIC_UUID_ARRAY:Ljava/lang/String; = "CHARAUUID_ARRAY"

.field public static final EXTRA_CLIENT_REQUEST_ID:Ljava/lang/String; = "CLIENTREQUESTID"

.field public static final EXTRA_DESCRIPTOR_UUID:Ljava/lang/String; = "DESCUUID"

.field public static final EXTRA_DISCOVER_SERVICES_DELAY_MS:Ljava/lang/String; = "DISCOVER_SERVICES"

.field public static final EXTRA_REFRESH_ATTRIBUTES:Ljava/lang/String; = "REFRESH_ATTRIBUTE"

.field public static final EXTRA_REFRESH_ATTRIBUTES_DONE:Ljava/lang/String; = "REFRESH_ATTRIBUTE_DONE"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "REQUESTID"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "RSSI"

.field public static final EXTRA_SCAN_RECORD:Ljava/lang/String; = "SCANRECORD"

.field public static final EXTRA_SERVICE_UUID:Ljava/lang/String; = "SERVUUID"

.field public static final EXTRA_SERVICE_UUID_ARRAY:Ljava/lang/String; = "SERVUUID_ARRAY"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "CVALUE"

.field private static final GATT_AUTH_FAIL:S = 0x89s

.field private static final GATT_ERROR:S = 0x85s

.field private static final GATT_READ_NOT_PERMIT:S = 0x2s

.field private static final GATT_REQ_NOT_SUPPORTED:S = 0x6s

.field public static final MESSAGE_CHARACTERISTIC_READ:I = 0x6

.field public static final MESSAGE_CHARACTERISTIC_VALUE:I = 0x4

.field public static final MESSAGE_CHARACTERISTIC_WRITE:I = 0x7

.field public static final MESSAGE_CONNECTED:I = 0x2

.field public static final MESSAGE_DESCRIPTOR_READ:I = 0x8

.field public static final MESSAGE_DESCRIPTOR_VALUE:I = 0xa

.field public static final MESSAGE_DESCRIPTOR_WRITE:I = 0x9

.field public static final MESSAGE_DEVICE_BONDED:I = 0x11

.field public static final MESSAGE_DEVICE_BONDING:I = 0x10

.field public static final MESSAGE_DEVICE_BONDNONE:I = 0x12

.field public static final MESSAGE_DISCONNECTED:I = 0x3

.field public static final MESSAGE_GATT_STATUS_REQUEST_NOT_SUPPORTED:I = 0x13

.field public static final MESSAGE_INDICATION_REGISTERED:I = 0xc

.field public static final MESSAGE_NOTIFICATION_REGISTERED:I = 0xd

.field public static final MESSAGE_REQUEST_FAILED:I = 0x5

.field public static final MESSAGE_REQUEST_NULL_CHARACTERISTIC:I = 0xe

.field public static final MESSAGE_REQUEST_NULL_SERVICE:I = 0xf

.field public static final MESSAGE_SCAN_RESULT:I = 0x1

.field public static final MESSAGE_WRITE_COMPLETE:I = 0xb


# instance fields
.field currentRequest:Lcom/csr/btsmart/BtSmartRequest;

.field private final mBinder:Landroid/os/IBinder;

.field private mBluetoothReceiver:Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtManager:Landroid/bluetooth/BluetoothManager;

.field private mClientDeviceHandler:Landroid/os/Handler;

.field private mCurrentGattStatus:I

.field private mDelayTime:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

.field private mGattClient:Landroid/bluetooth/BluetoothGatt;

.field private mNotificationHandlers:Lcom/csr/btsmart/CharacteristicHandlersContainer;

.field private mPendingCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mPreGattStatus:I

.field private mRefreshCachedAttributes:Z

.field private mRefreshCachedAttributesDone:Z

.field requestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/csr/btsmart/BtSmartRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 192
    new-instance v0, Lcom/csr/btsmart/BtSmartService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/csr/btsmart/BtSmartService$LocalBinder;-><init>(Lcom/csr/btsmart/BtSmartService;)V

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mBinder:Landroid/os/IBinder;

    .line 198
    iput v2, p0, Lcom/csr/btsmart/BtSmartService;->mDelayTime:I

    .line 201
    iput v2, p0, Lcom/csr/btsmart/BtSmartService;->mPreGattStatus:I

    .line 203
    iput v2, p0, Lcom/csr/btsmart/BtSmartService;->mCurrentGattStatus:I

    .line 205
    iput-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mClientDeviceHandler:Landroid/os/Handler;

    .line 206
    iput-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mBtManager:Landroid/bluetooth/BluetoothManager;

    .line 207
    iput-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 208
    iput-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    .line 210
    new-instance v0, Lcom/csr/btsmart/CharacteristicHandlersContainer;

    invoke-direct {v0}, Lcom/csr/btsmart/CharacteristicHandlersContainer;-><init>()V

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mNotificationHandlers:Lcom/csr/btsmart/CharacteristicHandlersContainer;

    .line 213
    iput-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mPendingCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 218
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    .line 221
    iput-object v1, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    .line 224
    iput-boolean v2, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributes:Z

    .line 227
    iput-boolean v2, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributesDone:Z

    .line 559
    new-instance v0, Lcom/csr/btsmart/BtSmartService$1;

    invoke-direct {v0, p0}, Lcom/csr/btsmart/BtSmartService$1;-><init>(Lcom/csr/btsmart/BtSmartService;)V

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mPendingCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/csr/btsmart/BtSmartService;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/csr/btsmart/BtSmartService;->enableNotification(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/csr/btsmart/BtSmartService;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/csr/btsmart/BtSmartService;->enableIndication(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/csr/btsmart/BtSmartService;)V
    .locals 0
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    return-void
.end method

.method static synthetic access$1400(Lcom/csr/btsmart/BtSmartService;)I
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    iget v0, p0, Lcom/csr/btsmart/BtSmartService;->mPreGattStatus:I

    return v0
.end method

.method static synthetic access$1402(Lcom/csr/btsmart/BtSmartService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/csr/btsmart/BtSmartService;->mPreGattStatus:I

    return p1
.end method

.method static synthetic access$1500(Lcom/csr/btsmart/BtSmartService;)I
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    iget v0, p0, Lcom/csr/btsmart/BtSmartService;->mCurrentGattStatus:I

    return v0
.end method

.method static synthetic access$1502(Lcom/csr/btsmart/BtSmartService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/csr/btsmart/BtSmartService;->mCurrentGattStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/csr/btsmart/BtSmartService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$300(Lcom/csr/btsmart/BtSmartService;)I
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    iget v0, p0, Lcom/csr/btsmart/BtSmartService;->mDelayTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/csr/btsmart/BtSmartService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributesDone:Z

    return v0
.end method

.method static synthetic access$402(Lcom/csr/btsmart/BtSmartService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributesDone:Z

    return p1
.end method

.method static synthetic access$500(Lcom/csr/btsmart/BtSmartService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mClientDeviceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/csr/btsmart/BtSmartService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributes:Z

    return v0
.end method

.method static synthetic access$800(Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/CharacteristicHandlersContainer;
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mNotificationHandlers:Lcom/csr/btsmart/CharacteristicHandlersContainer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/csr/btsmart/BtSmartService;Landroid/os/Handler;II)V
    .locals 0
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    return-void
.end method

.method private enableIndication(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x0

    .line 1144
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_0

    .line 1145
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "GATT client not started."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1147
    :cond_0
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p2, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1161
    :cond_1
    :goto_0
    return v1

    .line 1150
    :cond_2
    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CCC:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->access$1600(Lcom/csr/btsmart/BtSmartService$BtSmartUuid;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 1151
    .local v0, "clientConfig":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v0, :cond_1

    .line 1154
    if-eqz p1, :cond_3

    .line 1155
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 1161
    :goto_1
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    goto :goto_0

    .line 1158
    :cond_3
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_1
.end method

.method private enableNotification(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x0

    .line 1114
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_0

    .line 1115
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "GATT client not started."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1117
    :cond_0
    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p2, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1131
    :cond_1
    :goto_0
    return v1

    .line 1120
    :cond_2
    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CCC:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-static {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->access$1600(Lcom/csr/btsmart/BtSmartService$BtSmartUuid;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 1121
    .local v0, "clientConfig":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v0, :cond_1

    .line 1124
    if-eqz p1, :cond_3

    .line 1125
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 1131
    :goto_1
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    goto :goto_0

    .line 1128
    :cond_3
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_1
.end method

.method public static getAppearanceFromScanRecord([B)I
    .locals 11
    .param p0, "scanRecord"    # [B

    .prologue
    .line 311
    const/4 v5, 0x0

    .line 312
    .local v5, "STATE_LENGTH":I
    const/4 v3, 0x1

    .line 313
    .local v3, "STATE_AD_TYPE":I
    const/4 v4, 0x2

    .line 315
    .local v4, "STATE_APPEARANCE_DATA":I
    const/16 v0, 0x19

    .line 317
    .local v0, "AD_TYPE_APPEARANCE":I
    const/4 v8, 0x0

    .line 319
    .local v8, "state":I
    const/4 v7, 0x0

    .line 321
    .local v7, "length":B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, p0

    if-ge v6, v9, :cond_1

    .line 322
    packed-switch v8, :pswitch_data_0

    .line 321
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 324
    :pswitch_0
    aget-byte v7, p0, v6

    .line 325
    add-int/lit8 v8, v8, 0x1

    .line 326
    goto :goto_1

    .line 329
    :pswitch_1
    aget-byte v9, p0, v6

    const/16 v10, 0x19

    if-ne v9, v10, :cond_0

    .line 330
    const/4 v8, 0x2

    goto :goto_1

    .line 334
    :cond_0
    add-int/lit8 v9, v7, -0x1

    add-int/2addr v6, v9

    .line 335
    const/4 v8, 0x0

    .line 337
    goto :goto_1

    .line 340
    :pswitch_2
    add-int/lit8 v9, v6, 0x1

    aget-byte v9, p0, v9

    shl-int/lit8 v2, v9, 0x8

    .line 341
    .local v2, "MSB":I
    aget-byte v1, p0, v6

    .line 342
    .local v1, "LSB":I
    add-int v9, v2, v1

    .line 346
    .end local v1    # "LSB":I
    .end local v2    # "MSB":I
    :goto_2
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performCharacValueRequest(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "service"    # Ljava/util/UUID;
    .param p3, "characteristic"    # Ljava/util/UUID;
    .param p4, "valueHandler"    # Landroid/os/Handler;

    .prologue
    .line 998
    new-instance v0, Lcom/csr/btsmart/BtSmartRequest;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/csr/btsmart/BtSmartRequest;-><init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    .line 1001
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v8

    .line 1002
    .local v8, "serviceObject":Landroid/bluetooth/BluetoothGattService;
    if-eqz v8, :cond_2

    .line 1003
    invoke-virtual {v8, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v7

    .line 1004
    .local v7, "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v7, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/4 v1, 0x5

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 1007
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    .line 1019
    .end local v7    # "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_0
    :goto_0
    return-void

    .line 1011
    .restart local v7    # "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v1, 0xe

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 1012
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    goto :goto_0

    .line 1016
    .end local v7    # "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v1, 0xf

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 1017
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    goto :goto_0
.end method

.method private performCharacWrite(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;[B)V
    .locals 10
    .param p1, "requestId"    # I
    .param p2, "service"    # Ljava/util/UUID;
    .param p3, "characteristic"    # Ljava/util/UUID;
    .param p4, "msgHandler"    # Landroid/os/Handler;
    .param p5, "value"    # [B

    .prologue
    .line 1080
    new-instance v0, Lcom/csr/btsmart/BtSmartRequest;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->WRITE_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/csr/btsmart/BtSmartRequest;-><init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;[B)V

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    .line 1083
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v9

    .line 1084
    .local v9, "serviceObject":Landroid/bluetooth/BluetoothGattService;
    if-eqz v9, :cond_2

    .line 1085
    invoke-virtual {v9, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v8

    .line 1086
    .local v8, "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v8, :cond_1

    .line 1087
    invoke-virtual {v8, p5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 1088
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/4 v1, 0x5

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 1090
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    .line 1102
    .end local v8    # "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_0
    :goto_0
    return-void

    .line 1094
    .restart local v8    # "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v1, 0xe

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 1095
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    goto :goto_0

    .line 1099
    .end local v8    # "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v1, 0xf

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 1100
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    goto :goto_0
.end method

.method private performDescValueRequest(ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    .locals 10
    .param p1, "requestId"    # I
    .param p2, "service"    # Ljava/util/UUID;
    .param p3, "characteristic"    # Ljava/util/UUID;
    .param p4, "descriptor"    # Ljava/util/UUID;
    .param p5, "valueHandler"    # Landroid/os/Handler;

    .prologue
    .line 1039
    new-instance v0, Lcom/csr/btsmart/BtSmartRequest;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/csr/btsmart/BtSmartRequest;-><init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    .line 1042
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v9

    .line 1043
    .local v9, "serviceObject":Landroid/bluetooth/BluetoothGattService;
    if-eqz v9, :cond_2

    .line 1044
    invoke-virtual {v9, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v7

    .line 1045
    .local v7, "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v7, :cond_0

    .line 1046
    invoke-virtual {v7, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v8

    .line 1047
    .local v8, "descriptorObject":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v8, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/4 v1, 0x5

    invoke-direct {p0, p5, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 1050
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    .line 1063
    .end local v7    # "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v8    # "descriptorObject":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 1054
    .restart local v7    # "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v8    # "descriptorObject":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v1, 0xe

    invoke-direct {p0, p5, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 1055
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    goto :goto_0

    .line 1060
    .end local v7    # "characteristicObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v8    # "descriptorObject":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_2
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v1, 0xf

    invoke-direct {p0, p5, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 1061
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    goto :goto_0
.end method

.method private performIndicationRequest(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "service"    # Ljava/util/UUID;
    .param p3, "characteristic"    # Ljava/util/UUID;
    .param p4, "notifyHandler"    # Landroid/os/Handler;

    .prologue
    .line 955
    new-instance v0, Lcom/csr/btsmart/BtSmartRequest;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_INDICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/csr/btsmart/BtSmartRequest;-><init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    .line 958
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v1, v1, Lcom/csr/btsmart/BtSmartRequest;->serviceUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v8

    .line 959
    .local v8, "serviceObject":Landroid/bluetooth/BluetoothGattService;
    if-eqz v8, :cond_3

    .line 960
    invoke-virtual {v8, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mPendingCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 961
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mPendingCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_2

    .line 962
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mPendingCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CCC:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 963
    invoke-static {v1}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->access$1600(Lcom/csr/btsmart/BtSmartService$BtSmartUuid;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v7

    .line 965
    .local v7, "clientCharacteristicConfig":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/4 v1, 0x5

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 969
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    .line 981
    .end local v7    # "clientCharacteristicConfig":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    :goto_0
    return-void

    .line 973
    :cond_2
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v1, 0xe

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 974
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    goto :goto_0

    .line 978
    :cond_3
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v1, 0xf

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 979
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    goto :goto_0
.end method

.method private performNotificationRequest(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "service"    # Ljava/util/UUID;
    .param p3, "characteristic"    # Ljava/util/UUID;
    .param p4, "notifyHandler"    # Landroid/os/Handler;

    .prologue
    .line 911
    new-instance v0, Lcom/csr/btsmart/BtSmartRequest;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_NOTIFICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/csr/btsmart/BtSmartRequest;-><init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    .line 915
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget-object v1, v1, Lcom/csr/btsmart/BtSmartRequest;->serviceUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v8

    .line 916
    .local v8, "serviceObject":Landroid/bluetooth/BluetoothGattService;
    if-eqz v8, :cond_3

    .line 917
    invoke-virtual {v8, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mPendingCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 918
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mPendingCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_2

    .line 919
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mPendingCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CCC:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 920
    invoke-static {v1}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->access$1600(Lcom/csr/btsmart/BtSmartService$BtSmartUuid;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v7

    .line 922
    .local v7, "clientCharacteristicConfig":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/4 v1, 0x5

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 926
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    .line 938
    .end local v7    # "clientCharacteristicConfig":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    :goto_0
    return-void

    .line 930
    :cond_2
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v1, 0xe

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 931
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    goto :goto_0

    .line 935
    :cond_3
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    iget v0, v0, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    const/16 v1, 0xf

    invoke-direct {p0, p4, v0, v1}, Lcom/csr/btsmart/BtSmartService;->sendMessage(Landroid/os/Handler;II)V

    .line 936
    invoke-direct {p0}, Lcom/csr/btsmart/BtSmartService;->processNextRequest()V

    goto :goto_0
.end method

.method private declared-synchronized processNextRequest()V
    .locals 7

    .prologue
    .line 865
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    :goto_0
    monitor-exit p0

    return-void

    .line 869
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/csr/btsmart/BtSmartRequest;

    .line 870
    .local v6, "request":Lcom/csr/btsmart/BtSmartRequest;
    sget-object v0, Lcom/csr/btsmart/BtSmartService$2;->$SwitchMap$com$csr$btsmart$BtSmartRequest$RequestType:[I

    iget-object v1, v6, Lcom/csr/btsmart/BtSmartRequest;->type:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    invoke-virtual {v1}, Lcom/csr/btsmart/BtSmartRequest$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 872
    :pswitch_0
    iget v0, v6, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    iget-object v1, v6, Lcom/csr/btsmart/BtSmartRequest;->serviceUuid:Ljava/util/UUID;

    iget-object v2, v6, Lcom/csr/btsmart/BtSmartRequest;->characteristicUuid:Ljava/util/UUID;

    iget-object v3, v6, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/csr/btsmart/BtSmartService;->performNotificationRequest(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 865
    .end local v6    # "request":Lcom/csr/btsmart/BtSmartRequest;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 876
    .restart local v6    # "request":Lcom/csr/btsmart/BtSmartRequest;
    :pswitch_1
    :try_start_2
    iget v0, v6, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    iget-object v1, v6, Lcom/csr/btsmart/BtSmartRequest;->serviceUuid:Ljava/util/UUID;

    iget-object v2, v6, Lcom/csr/btsmart/BtSmartRequest;->characteristicUuid:Ljava/util/UUID;

    iget-object v3, v6, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/csr/btsmart/BtSmartService;->performIndicationRequest(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    goto :goto_0

    .line 880
    :pswitch_2
    iget v0, v6, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    iget-object v1, v6, Lcom/csr/btsmart/BtSmartRequest;->serviceUuid:Ljava/util/UUID;

    iget-object v2, v6, Lcom/csr/btsmart/BtSmartRequest;->characteristicUuid:Ljava/util/UUID;

    iget-object v3, v6, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/csr/btsmart/BtSmartService;->performCharacValueRequest(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    goto :goto_0

    .line 884
    :pswitch_3
    iget v1, v6, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    iget-object v2, v6, Lcom/csr/btsmart/BtSmartRequest;->serviceUuid:Ljava/util/UUID;

    iget-object v3, v6, Lcom/csr/btsmart/BtSmartRequest;->characteristicUuid:Ljava/util/UUID;

    iget-object v4, v6, Lcom/csr/btsmart/BtSmartRequest;->descriptorUuid:Ljava/util/UUID;

    iget-object v5, v6, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->performDescValueRequest(ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    goto :goto_0

    .line 888
    :pswitch_4
    iget v1, v6, Lcom/csr/btsmart/BtSmartRequest;->requestId:I

    iget-object v2, v6, Lcom/csr/btsmart/BtSmartRequest;->serviceUuid:Ljava/util/UUID;

    iget-object v3, v6, Lcom/csr/btsmart/BtSmartRequest;->characteristicUuid:Ljava/util/UUID;

    iget-object v4, v6, Lcom/csr/btsmart/BtSmartRequest;->notifyHandler:Landroid/os/Handler;

    iget-object v5, v6, Lcom/csr/btsmart/BtSmartRequest;->value:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->performCharacWrite(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private sendMessage(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "msgId"    # I

    .prologue
    .line 531
    if-eqz p1, :cond_0

    .line 532
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 534
    :cond_0
    return-void
.end method

.method private sendMessage(Landroid/os/Handler;II)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "requestId"    # I
    .param p3, "msgId"    # I

    .prologue
    .line 547
    if-eqz p1, :cond_0

    .line 548
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 549
    .local v0, "messageBundle":Landroid/os/Bundle;
    invoke-static {p1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 550
    .local v1, "msg":Landroid/os/Message;
    const-string v2, "CLIENTREQUESTID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 552
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 554
    .end local v0    # "messageBundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearRequest()V
    .locals 3

    .prologue
    .line 1222
    const-string v0, "BtSmartLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear request ...requestQueue.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 1224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    .line 1225
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1227
    :cond_0
    return-void
.end method

.method public connectAsClient(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "deviceHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 358
    iput-object p2, p0, Lcom/csr/btsmart/BtSmartService;->mClientDeviceHandler:Landroid/os/Handler;

    .line 359
    iput-object p1, p0, Lcom/csr/btsmart/BtSmartService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 360
    const-string v0, "BtSmartService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectAsClient: mRefreshCachedAttributes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributes:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p0, v3, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    .line 362
    iput-boolean v3, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributes:Z

    .line 363
    return-void
.end method

.method public connectAsClient(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;Z)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "deviceHandler"    # Landroid/os/Handler;
    .param p3, "refresh"    # Z

    .prologue
    const/4 v1, 0x0

    .line 375
    iput-boolean p3, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributes:Z

    .line 376
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributesDone:Z

    .line 377
    iput-object p2, p0, Lcom/csr/btsmart/BtSmartService;->mClientDeviceHandler:Landroid/os/Handler;

    .line 378
    iput-object p1, p0, Lcom/csr/btsmart/BtSmartService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 379
    const-string v0, "BtSmartService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAsClient(refresh): mRefreshCachedAttributes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributes:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/csr/btsmart/BtSmartService;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    .line 381
    return-void

    :cond_0
    move v0, v1

    .line 376
    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "BtSmartService"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 390
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    .line 392
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 393
    iput v2, p0, Lcom/csr/btsmart/BtSmartService;->mPreGattStatus:I

    .line 394
    iput v2, p0, Lcom/csr/btsmart/BtSmartService;->mCurrentGattStatus:I

    .line 395
    iput-boolean v2, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributesDone:Z

    .line 397
    :cond_0
    return-void
.end method

.method public discoverService(Z)V
    .locals 3
    .param p1, "refresh"    # Z

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 1174
    iput-boolean p1, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributesDone:Z

    .line 1175
    if-eqz p1, :cond_0

    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributes:Z

    .line 1177
    :cond_0
    const-string v0, "BtSmartService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverService: mRefreshCachedAttributes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributes:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    const-string v0, "DISCOVER_SERVICES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/csr/btsmart/BtSmartService;->mDelayTime:I

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 258
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/csr/btsmart/BtSmartService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    iput-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mBtManager:Landroid/bluetooth/BluetoothManager;

    .line 259
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mBtManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 261
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;-><init>(Lcom/csr/btsmart/BtSmartService;Lcom/csr/btsmart/BtSmartService$1;)V

    iput-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mBluetoothReceiver:Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;

    .line 265
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService;->mBluetoothReceiver:Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/csr/btsmart/BtSmartService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csr/btsmart/BtSmartService;->mRefreshCachedAttributes:Z

    .line 300
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 301
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mBluetoothReceiver:Lcom/csr/btsmart/BtSmartService$BluetoothReceiver;

    invoke-virtual {p0, v0}, Lcom/csr/btsmart/BtSmartService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    .line 287
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized requestCharacteristicIndication(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "serviceUuid"    # Ljava/util/UUID;
    .param p3, "characteristicUuid"    # Ljava/util/UUID;
    .param p4, "notifyHandler"    # Landroid/os/Handler;

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    if-nez v0, :cond_0

    .line 431
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/csr/btsmart/BtSmartService;->performIndicationRequest(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :goto_0
    monitor-exit p0

    return-void

    .line 434
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_INDICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/csr/btsmart/BtSmartRequest;-><init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    invoke-interface {v7, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestCharacteristicNotification(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "serviceUuid"    # Ljava/util/UUID;
    .param p3, "characteristicUuid"    # Ljava/util/UUID;
    .param p4, "notifyHandler"    # Landroid/os/Handler;

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/csr/btsmart/BtSmartService;->performNotificationRequest(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :goto_0
    monitor-exit p0

    return-void

    .line 421
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_NOTIFICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/csr/btsmart/BtSmartRequest;-><init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    invoke-interface {v7, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "service"    # Ljava/util/UUID;
    .param p3, "characteristic"    # Ljava/util/UUID;
    .param p4, "valueHandler"    # Landroid/os/Handler;

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/csr/btsmart/BtSmartService;->performCharacValueRequest(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :goto_0
    monitor-exit p0

    return-void

    .line 460
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/csr/btsmart/BtSmartRequest;-><init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    invoke-interface {v7, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestDescriptorValue(ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "service"    # Ljava/util/UUID;
    .param p3, "characteristic"    # Ljava/util/UUID;
    .param p4, "descriptor"    # Ljava/util/UUID;
    .param p5, "valueHandler"    # Landroid/os/Handler;

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    if-nez v0, :cond_0

    .line 487
    invoke-direct/range {p0 .. p5}, Lcom/csr/btsmart/BtSmartService;->performDescValueRequest(ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :goto_0
    monitor-exit p0

    return-void

    .line 490
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_DESCRIPTOR:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/csr/btsmart/BtSmartRequest;-><init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    invoke-interface {v7, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "service"    # Ljava/util/UUID;
    .param p3, "characteristic"    # Ljava/util/UUID;
    .param p4, "value"    # [B
    .param p5, "msgHandler"    # Landroid/os/Handler;

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService;->currentRequest:Lcom/csr/btsmart/BtSmartRequest;

    if-nez v0, :cond_0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    .line 514
    invoke-direct/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->performCharacWrite(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :goto_0
    monitor-exit p0

    return-void

    .line 517
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/csr/btsmart/BtSmartService;->requestQueue:Ljava/util/Queue;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->WRITE_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/csr/btsmart/BtSmartRequest;-><init>(Lcom/csr/btsmart/BtSmartRequest$RequestType;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;[B)V

    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
