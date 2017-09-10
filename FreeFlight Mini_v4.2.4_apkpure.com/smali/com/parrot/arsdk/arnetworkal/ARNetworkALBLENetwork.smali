.class public Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;
.super Ljava/lang/Object;
.source "ARNetworkALBLENetwork.java"

# interfaces
.implements Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;
    }
.end annotation


# static fields
.field private static ARNETWORKAL_BLENETWORK_BW_NB_ELEMS:I = 0x0

.field private static ARNETWORKAL_BLENETWORK_BW_PROGRESS_EACH_SEC:I = 0x0

.field public static ARNETWORKAL_BLENETWORK_HEADER_SIZE:I = 0x0

.field public static ARNETWORKAL_BLENETWORK_MEDIA_MTU:I = 0x0

.field private static ARNETWORKAL_BLENETWORK_NOTIFICATIONS_KEY:Ljava/lang/String; = null

.field private static ARNETWORKAL_BLENETWORK_PARROT_CHARACTERISTIC_PREFIX_UUID_FTP_21:Ljava/lang/String; = null

.field private static ARNETWORKAL_BLENETWORK_PARROT_CHARACTERISTIC_PREFIX_UUID_FTP_51:Ljava/lang/String; = null

.field public static final ARNETWORKAL_BLENETWORK_PARROT_CHARACTERISTIC_PREFIX_UUID_RFCOMM_READ:Ljava/lang/String; = "fe02"

.field public static final ARNETWORKAL_BLENETWORK_PARROT_CHARACTERISTIC_PREFIX_UUID_RFCOMM_WRITE:Ljava/lang/String; = "fe01"

.field private static ARNETWORKAL_BLENETWORK_PARROT_SERVICE_PREFIX_UUID:Ljava/lang/String; = null

.field public static final ARNETWORKAL_BLENETWORK_PARROT_SERVICE_PREFIX_UUID_RFCOMM:Ljava/lang/String; = "fe00"

.field private static final BASIC_TEST_SLEEP:J = 0x7d0L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

.field private bwCurrentDown:I

.field private bwCurrentUp:I

.field private bwElementDown:[I

.field private bwElementUp:[I

.field private bwIndex:I

.field private bwSem:Ljava/util/concurrent/Semaphore;

.field private bwThreadRunning:Ljava/util/concurrent/Semaphore;

.field private deviceBLEService:Landroid/bluetooth/BluetoothDevice;

.field private jniARNetworkALBLENetwork:J

.field private recvArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private recvService:Landroid/bluetooth/BluetoothGattService;

.field private sendService:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string v0, "ARNetworkALBLENetwork"

    sput-object v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    .line 56
    const-string v0, "ARNETWORKAL_BLENETWORK_NOTIFICATIONS_KEY"

    sput-object v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_NOTIFICATIONS_KEY:Ljava/lang/String;

    .line 57
    const-string v0, "f"

    sput-object v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_PARROT_SERVICE_PREFIX_UUID:Ljava/lang/String;

    .line 58
    const-string v0, "fd23"

    sput-object v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_PARROT_CHARACTERISTIC_PREFIX_UUID_FTP_21:Ljava/lang/String;

    .line 59
    const-string v0, "fd53"

    sput-object v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_PARROT_CHARACTERISTIC_PREFIX_UUID_FTP_51:Ljava/lang/String;

    .line 65
    sput v1, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_MEDIA_MTU:I

    .line 66
    sput v1, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_HEADER_SIZE:I

    .line 68
    const/4 v0, 0x1

    sput v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_BW_PROGRESS_EACH_SEC:I

    .line 69
    const/16 v0, 0xa

    sput v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_BW_NB_ELEMS:I

    .line 97
    invoke-static {}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->nativeGetMediaMTU()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_MEDIA_MTU:I

    .line 98
    invoke-static {}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->nativeGetHeaderSize()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_HEADER_SIZE:I

    .line 99
    invoke-static {}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->nativeJNIInit()V

    .line 100
    return-void
.end method

.method public constructor <init>(JLandroid/content/Context;)V
    .locals 3
    .param p1, "jniARNetworkALBLENetwork"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p3}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->recvArray:Ljava/util/ArrayList;

    .line 106
    iput-wide p1, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->jniARNetworkALBLENetwork:J

    .line 108
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_BW_NB_ELEMS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bwElementUp:[I

    .line 109
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_BW_NB_ELEMS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bwElementDown:[I

    .line 110
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bwSem:Ljava/util/concurrent/Semaphore;

    .line 111
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bwThreadRunning:Ljava/util/concurrent/Semaphore;

    .line 112
    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->deviceBLEService:Landroid/bluetooth/BluetoothDevice;

    .line 362
    iput-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->recvService:Landroid/bluetooth/BluetoothGattService;

    .line 363
    iput-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->sendService:Landroid/bluetooth/BluetoothGattService;

    .line 365
    iget-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->recvArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 366
    return-void
.end method

.method private static native nativeGetHeaderSize()I
.end method

.method private static native nativeGetMediaMTU()I
.end method

.method private static native nativeJNIInit()V
.end method

.method private static native nativeJNIOnDisconect(J)V
.end method

.method private popFrame()Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 390
    new-instance v1, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;-><init>(Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;)V

    .line 392
    .local v1, "dataPop":Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;
    sget-object v5, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_DEFAULT:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    .line 393
    .local v5, "result":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;
    const/4 v4, 0x0

    .line 397
    .local v4, "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    iget-object v6, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->recvArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 399
    sget-object v5, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_BUFFER_EMPTY:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    .line 402
    :cond_0
    sget-object v6, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_DEFAULT:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    if-ne v5, v6, :cond_1

    .line 404
    iget-object v6, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->recvArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    check-cast v4, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;

    .line 405
    .restart local v4    # "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    iget-object v6, v4, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->value:[B

    array-length v6, v6

    if-nez v6, :cond_1

    .line 407
    sget-object v5, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_BAD_FRAME:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    .line 411
    :cond_1
    sget-object v6, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_DEFAULT:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    if-ne v5, v6, :cond_2

    .line 413
    iget-object v0, v4, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->value:[B

    .line 416
    .local v0, "currentFrame":[B
    iget-object v6, v4, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v6}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "frameIdString":Ljava/lang/String;
    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 419
    .local v2, "frameId":I
    sget-object v6, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_DEFAULT:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    if-ne v5, v6, :cond_2

    .line 422
    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->setId(I)V

    .line 423
    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->setData([B)V

    .line 425
    iget v6, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bwCurrentDown:I

    array-length v7, v0

    add-int/2addr v6, v7

    iput v6, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bwCurrentDown:I

    .line 429
    .end local v0    # "currentFrame":[B
    .end local v2    # "frameId":I
    .end local v3    # "frameIdString":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_BUFFER_EMPTY:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    if-eq v5, v6, :cond_3

    .line 431
    iget-object v6, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->recvArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 434
    :cond_3
    invoke-virtual {v5}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->getValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$DataPop;->setResult(I)V

    .line 435
    return-object v1
.end method

.method private pushFrame(IIII[B)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "id"    # I
    .param p3, "seq"    # I
    .param p4, "size"    # I
    .param p5, "byteData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 440
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_DEFAULT:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    .line 442
    .local v2, "result":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;
    sget-object v3, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_DEFAULT:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    if-ne v2, v3, :cond_0

    .line 445
    array-length v3, p5

    sget v4, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_HEADER_SIZE:I

    add-int/2addr v3, v4

    new-array v1, v3, [B

    .line 448
    .local v1, "data":[B
    int-to-byte v3, p1

    aput-byte v3, v1, v5

    .line 451
    const/4 v3, 0x1

    int-to-byte v4, p3

    aput-byte v4, v1, v3

    .line 454
    const/4 v3, 0x2

    array-length v4, p5

    invoke-static {p5, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "characteristicToSend":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v3, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->sendService:Landroid/bluetooth/BluetoothGattService;

    if-eqz v3, :cond_3

    .line 461
    if-ltz p2, :cond_2

    iget-object v3, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->sendService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 463
    iget-object v3, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->sendService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "characteristicToSend":Landroid/bluetooth/BluetoothGattCharacteristic;
    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 466
    .restart local v0    # "characteristicToSend":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v3, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-virtual {v3, v1, v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->writeData([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 468
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_BAD_FRAME:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    .line 488
    .end local v0    # "characteristicToSend":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "data":[B
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->getValue()I

    move-result v3

    return v3

    .line 472
    .restart local v0    # "characteristicToSend":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v1    # "data":[B
    :cond_1
    iget v3, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bwCurrentUp:I

    array-length v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bwCurrentUp:I

    goto :goto_0

    .line 477
    :cond_2
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_BAD_PARAMETERS:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    goto :goto_0

    .line 483
    :cond_3
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_NETWORK_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    goto :goto_0
.end method

.method private receive()I
    .locals 5

    .prologue
    .line 377
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_DEFAULT:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    .line 380
    .local v0, "result":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;
    iget-object v1, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    iget-object v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->recvArray:Ljava/util/ArrayList;

    const v3, 0x7fffffff

    sget-object v4, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_NOTIFICATIONS_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->readDataNotificationData(Ljava/util/List;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->ARNETWORKAL_MANAGER_RETURN_NO_DATA_AVAILABLE:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;

    .line 385
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_MANAGER_RETURN_ENUM;->getValue()I

    move-result v1

    return v1
.end method

.method private unlock()V
    .locals 2

    .prologue
    .line 370
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlock"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->unlock()V

    .line 373
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->disconnect()V

    .line 325
    iget-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->reset()V

    .line 326
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;[I)I
    .locals 22
    .param p1, "deviceBLEService"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "notificationIDArray"    # [I

    .prologue
    .line 116
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 117
    .local v11, "result":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    const/4 v14, 0x0

    .line 118
    .local v14, "senderService":Landroid/bluetooth/BluetoothGattService;
    const/4 v10, 0x0

    .line 120
    .local v10, "receiverService":Landroid/bluetooth/BluetoothGattService;
    if-nez p1, :cond_0

    .line 122
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 125
    :cond_0
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-object/from16 v0, v17

    if-ne v11, v0, :cond_1

    .line 127
    const-wide/16 v18, 0x7d0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connect(Landroid/bluetooth/BluetoothDevice;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-result-object v12

    .line 130
    .local v12, "resultAL":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    sget-object v17, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_6

    .line 132
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 144
    .end local v12    # "resultAL":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    :cond_1
    :goto_0
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-object/from16 v0, v17

    if-ne v11, v0, :cond_2

    .line 146
    const-wide/16 v18, 0x7d0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverBLENetworkServices()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-result-object v12

    .line 148
    .restart local v12    # "resultAL":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    sget-object v17, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_8

    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 152
    .end local v12    # "resultAL":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    :cond_2
    :goto_1
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-object/from16 v0, v17

    if-ne v11, v0, :cond_c

    .line 154
    const-wide/16 v18, 0x7d0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    .line 158
    .local v3, "gatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v3, :cond_d

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getServices()Ljava/util/List;

    move-result-object v15

    .line 162
    .local v15, "serviesArray":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    if-eqz v15, :cond_9

    .line 164
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_a

    if-eqz v14, :cond_3

    if-nez v10, :cond_a

    .line 166
    :cond_3
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattService;

    .line 169
    .local v5, "gattService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_PARROT_SERVICE_PREFIX_UUID:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 172
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_5

    .line 174
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 176
    .local v4, "gattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v14, :cond_4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v17

    and-int/lit8 v17, v17, 0x4

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 178
    move-object v14, v5

    .line 181
    :cond_4
    if-nez v10, :cond_5

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v17

    and-int/lit8 v17, v17, 0x10

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 183
    move-object v10, v5

    .line 164
    .end local v4    # "gattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 134
    .end local v3    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v5    # "gattService":Landroid/bluetooth/BluetoothGattService;
    .end local v7    # "index":I
    .end local v15    # "serviesArray":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    .restart local v12    # "resultAL":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    :cond_6
    sget-object v17, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_STACK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_7

    .line 136
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_BLE_STACK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto/16 :goto_0

    .line 140
    :cond_7
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_BLE_CONNECTION:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto/16 :goto_0

    .line 148
    :cond_8
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_BLE_SERVICES_DISCOVERING:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto/16 :goto_1

    .line 195
    .end local v12    # "resultAL":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .restart local v3    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .restart local v15    # "serviesArray":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_9
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    const-string v18, "no service"

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_a
    if-eqz v14, :cond_b

    if-nez v10, :cond_c

    .line 200
    :cond_b
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_BLE_SERVICES_DISCOVERING:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 209
    .end local v3    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v15    # "serviesArray":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_c
    :goto_3
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-object/from16 v0, v17

    if-ne v11, v0, :cond_13

    .line 211
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "senderService: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "receiverService: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->deviceBLEService:Landroid/bluetooth/BluetoothDevice;

    .line 227
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->recvService:Landroid/bluetooth/BluetoothGattService;

    .line 228
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->sendService:Landroid/bluetooth/BluetoothGattService;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->setListener(Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;)V

    .line 232
    const/4 v9, 0x0

    .line 233
    .local v9, "notificationCharacteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz p2, :cond_f

    .line 235
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "notificationCharacteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .restart local v9    # "notificationCharacteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    aget v6, p2, v17

    .line 239
    .local v6, "id":I
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_e

    .line 241
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 205
    .end local v6    # "id":I
    .end local v9    # "notificationCharacteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .restart local v3    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_d
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    goto/16 :goto_3

    .line 245
    .end local v3    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .restart local v6    # "id":I
    .restart local v9    # "notificationCharacteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    :cond_e
    sget-object v19, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error receiverService.getCharacteristics().size(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " id to notify: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 251
    .end local v6    # "id":I
    :cond_f
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v9

    .line 255
    :cond_10
    sget-object v16, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 256
    .local v16, "setNotifCharacteristicResult":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    :pswitch_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 259
    .restart local v4    # "gattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v18

    and-int/lit8 v18, v18, 0x10

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v4}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-result-object v16

    .line 264
    :cond_11
    sget-object v18, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork$1;->$SwitchMap$com$parrot$arsdk$arsal$ARSAL_ERROR_ENUM:[I

    invoke-virtual/range {v16 .. v16}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 282
    sget-object v18, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " unexpected :  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 278
    :pswitch_1
    sget-object v11, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_BLE_CONNECTION:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 279
    goto :goto_6

    .line 287
    .end local v4    # "gattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_NOTIFICATIONS_KEY:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registerNotificationCharacteristics(Ljava/util/List;Ljava/lang/String;)V

    .line 290
    .end local v9    # "notificationCharacteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v16    # "setNotifCharacteristicResult":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    :cond_13
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-object/from16 v0, v17

    if-ne v11, v0, :cond_17

    .line 292
    sget-object v13, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 293
    .local v13, "resultSal":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getServices()Ljava/util/List;

    move-result-object v15

    .line 295
    .restart local v15    # "serviesArray":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    const/4 v7, 0x0

    .restart local v7    # "index":I
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_17

    sget-object v17, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-object/from16 v0, v17

    if-ne v13, v0, :cond_17

    .line 297
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattService;

    .line 298
    .restart local v5    # "gattService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 299
    .local v2, "characteristicsArray":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ARNetwork service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_16

    sget-object v17, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-object/from16 v0, v17

    if-ne v13, v0, :cond_16

    .line 303
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 304
    .restart local v4    # "gattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ARNetwork service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_PARROT_CHARACTERISTIC_PREFIX_UUID_FTP_21:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 307
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->ARNETWORKAL_BLENETWORK_PARROT_CHARACTERISTIC_PREFIX_UUID_FTP_51:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 308
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "fe02"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 310
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-result-object v13

    .line 311
    sget-object v17, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ARNetwork ====setCharacteristicNotification "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    .line 295
    .end local v4    # "gattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 317
    .end local v2    # "characteristicsArray":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v5    # "gattService":Landroid/bluetooth/BluetoothGattService;
    .end local v7    # "index":I
    .end local v8    # "j":I
    .end local v13    # "resultSal":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .end local v15    # "serviesArray":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_17
    invoke-virtual {v11}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getValue()I

    move-result v17

    return v17

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 330
    monitor-enter p0

    .line 334
    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnect()V

    .line 351
    invoke-direct {p0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->cleanup()V

    .line 352
    iget-object v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->setListener(Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;)V

    .line 355
    monitor-exit p0

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBLEDisconnect()V
    .locals 2

    .prologue
    .line 538
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->jniARNetworkALBLENetwork:J

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->nativeJNIOnDisconect(J)V

    .line 541
    invoke-direct {p0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALBLENetwork;->cleanup()V

    .line 542
    return-void
.end method
