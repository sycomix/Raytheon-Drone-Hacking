.class public Lcom/parrot/freeflight3/update/McuUpdateManager;
.super Ljava/lang/Object;
.source "McuUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;,
        Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;,
        Lcom/parrot/freeflight3/update/McuUpdateManager$State;
    }
.end annotation


# static fields
.field private static final AFTER_MAGIC_DELAY_MS:I = 0x3e8

.field private static final ANSWER_BYTE:B = 0x5at

.field private static final BUFFER_SIZE:I = 0x14

.field private static final MAGIC_BYTE_ARRAY:[B

.field private static final RX_UUID:Ljava/util/UUID;

.field private static final START_OTA_ARRAY:[B

.field private static final TAG:Ljava/lang/String; = "McuUpdateManager"

.field private static final TX_DESCRIPTOR:Ljava/util/UUID;

.field private static final TX_UUID:Ljava/util/UUID;

.field public static final UPDATE_SERVICE_UUID:Ljava/util/UUID;


# instance fields
.field private mBleDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mContext:Landroid/content/Context;

.field private mCrc:I

.field private mFilePath:Ljava/lang/String;

.field private mFileUploader:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

.field private final mGattCallback:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLength:I

.field private final mMagicNumberRunnable:Ljava/lang/Runnable;

.field private mRemoteLsbCrc:B

.field private mState:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field private mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

.field private mUpdateService:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "9e35fb00-4344-44d4-a2e2-0c7f6046878b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager;->UPDATE_SERVICE_UUID:Ljava/util/UUID;

    .line 33
    const-string v0, "9e35fb01-4344-44d4-a2e2-0c7f6046878b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager;->RX_UUID:Ljava/util/UUID;

    .line 34
    const-string v0, "9e35fb02-4344-44d4-a2e2-0c7f6046878b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager;->TX_UUID:Ljava/util/UUID;

    .line 36
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager;->TX_DESCRIPTOR:Ljava/util/UUID;

    .line 41
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0x57aa707a

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager;->START_OTA_ARRAY:[B

    .line 42
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, -0x5c3b

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager;->MAGIC_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "updateListener"    # Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mHandler:Landroid/os/Handler;

    .line 348
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight3/update/McuUpdateManager$2;-><init>(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mMagicNumberRunnable:Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mFilePath:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    .line 84
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;-><init>(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mGattCallback:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->computeLengthAndCrc(Ljava/lang/String;)Z

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight3/update/McuUpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->runSateMachine()V

    return-void
.end method

.method static synthetic access$102(Lcom/parrot/freeflight3/update/McuUpdateManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager;->TX_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight3/update/McuUpdateManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mMagicNumberRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager;->RX_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight3/update/McuUpdateManager;)B
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-byte v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mRemoteLsbCrc:B

    return v0
.end method

.method static synthetic access$1402(Lcom/parrot/freeflight3/update/McuUpdateManager;B)B
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;
    .param p1, "x1"    # B

    .prologue
    .line 26
    iput-byte p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mRemoteLsbCrc:B

    return p1
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight3/update/McuUpdateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mCrc:I

    return v0
.end method

.method static synthetic access$1600()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager;->TX_DESCRIPTOR:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight3/update/McuUpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight3/update/McuUpdateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mLength:I

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mGattCallback:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBleDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mState:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$State;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;
    .param p1, "x1"    # Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mState:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/UpdateState;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;
    .param p1, "x1"    # Lcom/parrot/freeflight3/update/UpdateState;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->notifyStateChange(Lcom/parrot/freeflight3/update/UpdateState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothGattService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mUpdateService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight3/update/McuUpdateManager;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mUpdateService:Landroid/bluetooth/BluetoothGattService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight3/update/McuUpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->refreshServiceCache()V

    return-void
.end method

.method private computeLengthAndCrc(Ljava/lang/String;)Z
    .locals 12
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 359
    const-string v9, "McuUpdateManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "computeLengthAndCrc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput v8, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mCrc:I

    .line 362
    iput v8, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mLength:I

    .line 365
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v4, "file":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 368
    .local v1, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 369
    .local v2, "crc":I
    const/4 v6, 0x0

    .line 372
    .local v6, "totalLength":I
    const/16 v9, 0x14

    new-array v0, v9, [B

    .line 374
    .local v0, "buffer":[B
    :goto_0
    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-virtual {v1, v0, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .local v5, "length":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_0

    .line 375
    add-int/2addr v6, v5

    .line 376
    invoke-static {v2, v0, v5}, Lcom/parrot/freeflight3/update/CrcCalculator;->crc16_accumulate(I[BI)I

    move-result v2

    goto :goto_0

    .line 379
    :cond_0
    rem-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_1

    .line 380
    const-string v9, "McuUpdateManager"

    const-string v10, "computeLengthAndCrc: not even"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, v0, v9

    .line 383
    const/4 v9, 0x1

    invoke-static {v2, v0, v9}, Lcom/parrot/freeflight3/update/CrcCalculator;->crc16_accumulate(I[BI)I

    move-result v2

    .line 384
    add-int/lit8 v6, v6, 0x1

    .line 387
    :cond_1
    iput v2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mCrc:I

    .line 389
    iput v6, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mLength:I

    .line 390
    const-string v9, "McuUpdateManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "computeLengthAndCrc: mCrc "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mCrc:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v9, "McuUpdateManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "computeLengthAndCrc: mLength "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mLength:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    .end local v0    # "buffer":[B
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v2    # "crc":I
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "length":I
    .end local v6    # "totalLength":I
    :goto_1
    return v7

    .line 396
    :catch_0
    move-exception v3

    .line 397
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v7, "McuUpdateManager"

    const-string v9, "File not found "

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v7, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-direct {p0, v7}, Lcom/parrot/freeflight3/update/McuUpdateManager;->notifyStateChange(Lcom/parrot/freeflight3/update/UpdateState;)V

    move v7, v8

    .line 399
    goto :goto_1

    .line 400
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 401
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "McuUpdateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can not read file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget-object v7, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-direct {p0, v7}, Lcom/parrot/freeflight3/update/McuUpdateManager;->notifyStateChange(Lcom/parrot/freeflight3/update/UpdateState;)V

    move v7, v8

    .line 403
    goto :goto_1
.end method

.method private notifyStateChange(Lcom/parrot/freeflight3/update/UpdateState;)V
    .locals 2
    .param p1, "state"    # Lcom/parrot/freeflight3/update/UpdateState;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight3/update/McuUpdateManager$3;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight3/update/McuUpdateManager$3;-><init>(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/UpdateState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    :cond_0
    return-void
.end method

.method private refreshServiceCache()V
    .locals 4

    .prologue
    .line 112
    const-string v0, "McuUpdateManager"

    const-string v1, "refreshServiceCache: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lcom/parrot/freeflight3/BleCacheRefresher;->refresh(Landroid/bluetooth/BluetoothGatt;)Z

    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight3/update/McuUpdateManager$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight3/update/McuUpdateManager$1;-><init>(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void
.end method

.method private runSateMachine()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 125
    const-string v3, "McuUpdateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runSateMachine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mState:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v3, Lcom/parrot/freeflight3/update/McuUpdateManager$4;->$SwitchMap$com$parrot$freeflight3$update$McuUpdateManager$State:[I

    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mState:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-virtual {v4}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 132
    :pswitch_1
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mUpdateService:Landroid/bluetooth/BluetoothGattService;

    sget-object v4, Lcom/parrot/freeflight3/update/McuUpdateManager;->RX_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 133
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v1, v6}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 134
    sget-object v3, Lcom/parrot/freeflight3/update/McuUpdateManager;->TX_DESCRIPTOR:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 135
    .local v2, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 136
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 137
    sget-object v3, Lcom/parrot/freeflight3/update/UpdateState;->STARTED:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight3/update/McuUpdateManager;->notifyStateChange(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto :goto_0

    .line 140
    .end local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v2    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :pswitch_2
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mUpdateService:Landroid/bluetooth/BluetoothGattService;

    sget-object v4, Lcom/parrot/freeflight3/update/McuUpdateManager;->TX_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 141
    .restart local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    sget-object v3, Lcom/parrot/freeflight3/update/McuUpdateManager;->START_OTA_ARRAY:[B

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 142
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0

    .line 145
    .end local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :pswitch_3
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mUpdateService:Landroid/bluetooth/BluetoothGattService;

    sget-object v4, Lcom/parrot/freeflight3/update/McuUpdateManager;->TX_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 146
    .restart local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    sget-object v3, Lcom/parrot/freeflight3/update/McuUpdateManager;->MAGIC_BYTE_ARRAY:[B

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 147
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0

    .line 150
    .end local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :pswitch_4
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mMagicNumberRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mUpdateService:Landroid/bluetooth/BluetoothGattService;

    sget-object v4, Lcom/parrot/freeflight3/update/McuUpdateManager;->TX_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 153
    .restart local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 154
    .local v0, "array":[B
    const/4 v3, 0x0

    iget v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mLength:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 155
    iget v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mLength:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    .line 156
    const/4 v3, 0x2

    iget v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mCrc:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 157
    const/4 v3, 0x3

    iget v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mCrc:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 159
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 160
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_0

    .line 164
    .end local v0    # "array":[B
    .end local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :pswitch_5
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mFileUploader:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    if-nez v3, :cond_1

    .line 165
    sget-object v3, Lcom/parrot/freeflight3/update/UpdateState;->UPLOADING:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight3/update/McuUpdateManager;->notifyStateChange(Lcom/parrot/freeflight3/update/UpdateState;)V

    .line 167
    new-instance v3, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;-><init>(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    iput-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mFileUploader:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mFileUploader:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    invoke-virtual {v3}, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mFileUploader:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    invoke-virtual {v3}, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->send()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    sget-object v3, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->CHECK_LSB_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    iput-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mState:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 90
    const-string v0, "McuUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBleDevice:Landroid/bluetooth/BluetoothDevice;

    .line 95
    sget-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->IDLE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mState:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBleDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mGattCallback:Lcom/parrot/freeflight3/update/McuUpdateManager$RemoteBluetoothGattCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mFileUploader:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    .line 99
    sget-object v0, Lcom/parrot/freeflight3/update/UpdateState;->CONNECTING:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->notifyStateChange(Lcom/parrot/freeflight3/update/UpdateState;)V

    .line 100
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    sget-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->IDLE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mState:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 105
    :cond_0
    iput-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 106
    iput-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    .line 107
    iput-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager;->mBleDevice:Landroid/bluetooth/BluetoothDevice;

    .line 108
    return-void
.end method
