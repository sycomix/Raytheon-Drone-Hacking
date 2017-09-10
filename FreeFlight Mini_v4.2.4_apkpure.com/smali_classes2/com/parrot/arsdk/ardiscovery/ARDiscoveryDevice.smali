.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;
.super Ljava/lang/Object;
.source "ARDiscoveryDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;
    }
.end annotation


# static fields
.field public static ROLLINGSPIDER_CONTROLLER_TO_DEVICE_ACK_ID:I

.field public static ROLLINGSPIDER_CONTROLLER_TO_DEVICE_EMERGENCY_ID:I

.field public static ROLLINGSPIDER_CONTROLLER_TO_DEVICE_NONACK_ID:I

.field public static ROLLINGSPIDER_DEVICE_TO_CONTROLLER_EVENT_ID:I

.field public static ROLLINGSPIDER_DEVICE_TO_CONTROLLER_NAVDATA_ID:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

.field private initOk:Z

.field private nativeARDiscoveryDevice:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const-string v0, "ARDiscoveryDevice"

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->TAG:Ljava/lang/String;

    .line 15
    sput v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_NONACK_ID:I

    .line 16
    sput v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_ACK_ID:I

    .line 17
    sput v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_EMERGENCY_ID:I

    .line 18
    sput v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_NAVDATA_ID:I

    .line 19
    sput v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_EVENT_ID:I

    .line 44
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeStaticInit()V

    .line 46
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeGetCToDNonAckId()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_NONACK_ID:I

    .line 47
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeGetCToDAckId()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_ACK_ID:I

    .line 48
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeGetCToDEmergencyId()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_EMERGENCY_ID:I

    .line 49
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeGetDToCNavDataId()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_NAVDATA_ID:I

    .line 50
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeGetDToCEventId()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_EVENT_ID:I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->TAG:Ljava/lang/String;

    const-string v1, "ARDiscoveryDevice ..."

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    .line 62
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    .line 63
    iget-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    .line 67
    :cond_0
    return-void
.end method

.method private native nativeDelete(J)V
.end method

.method private static native nativeGetCToDAckId()I
.end method

.method private static native nativeGetCToDEmergencyId()I
.end method

.method private static native nativeGetCToDNonAckId()I
.end method

.method private static native nativeGetDToCEventId()I
.end method

.method private static native nativeGetDToCNavDataId()I
.end method

.method private native nativeInitBLE(JILcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;)I
.end method

.method private native nativeInitUsb(JIJ)I
.end method

.method private native nativeInitWifi(JILjava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeNew()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/ardiscovery/ARDiscoveryException;
        }
    .end annotation
.end method

.method private static native nativeStaticInit()V
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 74
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->TAG:Ljava/lang/String;

    const-string v2, "dispose ..."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 77
    .local v0, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 81
    iget-wide v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeDelete(J)V

    .line 82
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    .line 85
    :cond_0
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getNativeDevice()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    return-wide v0
.end method

.method public initBLE(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 7
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bleDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    .line 130
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 131
    .local v1, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    if-ne v3, v4, :cond_0

    .line 135
    if-eqz p1, :cond_1

    .line 139
    new-instance v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    invoke-direct {v3, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;)V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    .line 141
    sget v3, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_BLE_ID_MAX:I

    div-int/lit8 v0, v3, 0x2

    .line 142
    .local v0, "ackOffset":I
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    sget v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_NAVDATA_ID:I

    aput v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_DEVICE_TO_CONTROLLER_EVENT_ID:I

    aput v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_ACK_ID:I

    add-int/2addr v6, v0

    aput v6, v4, v5

    const/4 v5, 0x3

    sget v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->ROLLINGSPIDER_CONTROLLER_TO_DEVICE_EMERGENCY_ID:I

    add-int/2addr v6, v0

    aput v6, v4, v5

    iput-object v4, v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->bleNotificationIDs:[I

    .line 143
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    iput-object p2, v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->context:Landroid/content/Context;

    .line 144
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    iput-object p3, v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;->bleDevice:Landroid/bluetooth/BluetoothDevice;

    .line 146
    iget-wide v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v3

    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->blePart:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeInitBLE(JILcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice$BLEPart;)I

    move-result v2

    .line 147
    .local v2, "nativeError":I
    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v1

    .line 154
    .end local v0    # "ackOffset":I
    .end local v2    # "nativeError":I
    :cond_0
    :goto_0
    monitor-exit p0

    .line 156
    return-object v1

    .line 151
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public initUSB(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/mux/Mux;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 9
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "mux"    # Lcom/parrot/mux/Mux;

    .prologue
    .line 161
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 162
    .local v6, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    monitor-enter p0

    .line 164
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p2}, Lcom/parrot/mux/Mux;->newMuxRef()Lcom/parrot/mux/Mux$Ref;

    move-result-object v7

    .line 169
    .local v7, "muxRef":Lcom/parrot/mux/Mux$Ref;
    iget-wide v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v3

    invoke-virtual {v7}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeInitUsb(JIJ)I

    move-result v8

    .line 170
    .local v8, "nativeError":I
    invoke-virtual {v7}, Lcom/parrot/mux/Mux$Ref;->release()V

    .line 171
    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v6

    .line 178
    .end local v7    # "muxRef":Lcom/parrot/mux/Mux$Ref;
    .end local v8    # "nativeError":I
    :cond_0
    :goto_0
    monitor-exit p0

    .line 180
    return-object v6

    .line 175
    :cond_1
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initWifi(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 9
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 106
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->TAG:Ljava/lang/String;

    const-string v2, "initWifi ..."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 109
    .local v0, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->initOk:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 113
    if-eqz p1, :cond_1

    .line 115
    iget-wide v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeARDiscoveryDevice:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v4

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDevice;->nativeInitWifi(JILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 116
    .local v8, "nativeError":I
    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v0

    .line 123
    .end local v8    # "nativeError":I
    :cond_0
    :goto_0
    monitor-exit p0

    .line 125
    return-object v0

    .line 120
    :cond_1
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
