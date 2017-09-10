.class public Lcom/csr/uenergy/ota/model/OtaUpdateManager;
.super Ljava/lang/Object;
.source "OtaUpdateManager.java"


# static fields
.field private static final CONNECTION_DELAY_TIME_MS:I = 0xc8

.field static final DATA_LENGTH:I = 0x14

.field public static final ERROR_MESSAGE_ID_BL_TRANSFERCONTROL_NOTIFICATION:I = 0x8

.field public static final ERROR_MESSAGE_ID_CHALLENGE_RESPONSE:I = 0x5

.field public static final ERROR_MESSAGE_ID_ENABLE_OTA:I = 0x6

.field public static final ERROR_MESSAGE_ID_NULL_CHARACTERISTIC:I = 0x9

.field public static final ERROR_MESSAGE_ID_NULL_SERVICE:I = 0xa

.field public static final ERROR_MESSAGE_ID_READCSKEY_BTADDRESS:I = 0x1

.field public static final ERROR_MESSAGE_ID_READCSKEY_ENCROOT:I = 0x4

.field public static final ERROR_MESSAGE_ID_READCSKEY_IDROOT:I = 0x3

.field public static final ERROR_MESSAGE_ID_READCSKEY_XLST:I = 0x2

.field public static final ERROR_MESSAGE_ID_SET_APPLICATION_ID:I = 0xc

.field public static final ERROR_MESSAGE_ID_SET_TRANSFER_CONTROL_INPROGRESS:I = 0xb

.field public static final ERROR_MESSAGE_ID_WRITE_TO_TARGET:I = 0x7

.field public static final READ_CSKEY_BUILDID_LENGTH:B = 0x2t

.field public static final READ_CSKEY_BUILDID_OFFSET:B = 0x0t

.field public static final REQUEST_BL_TRANSFERCONTROL_NOTIFICATION:I = 0x8

.field public static final REQUEST_CANCEL_DOWNLOAD:I = 0x13

.field public static final REQUEST_DATATRANSFER_NOTIFICATION:I = 0x2

.field public static final REQUEST_ENABLE_OTA_MODE:I = 0x7

.field public static final REQUEST_GET_APPLCATION_ONCHIP:I = 0xd

.field public static final REQUEST_PAUSE_DOWNLOAD:I = 0x12

.field public static final REQUEST_READ_AUTHENTICATED_CHARACTERISTIC:I = 0x1e

.field public static final REQUEST_READ_BL_SOFTWARE_VERSION:I = 0x1b

.field public static final REQUEST_READ_BOOTLOADER_VERSION:I = 0xb

.field public static final REQUEST_READ_CSBLOCK:I = 0x14

.field public static final REQUEST_READ_CSKEYS_BT:I = 0x3

.field public static final REQUEST_READ_CSKEYS_BT_FROM_BL:I = 0x15

.field public static final REQUEST_READ_CSKEYS_ENCROOT:I = 0x6

.field public static final REQUEST_READ_CSKEYS_ENCROOT_FROM_BL:I = 0x18

.field public static final REQUEST_READ_CSKEYS_IDROOT:I = 0x5

.field public static final REQUEST_READ_CSKEYS_IDROOT_FROM_BL:I = 0x17

.field public static final REQUEST_READ_CSKEYS_XLST:I = 0x4

.field public static final REQUEST_READ_CSKEYS_XLST_FROM_BL:I = 0x16

.field public static final REQUEST_READ_CSR_OTA_VERSION:I = 0x1c

.field public static final REQUEST_READ_DATA_TRANSFER:I = 0x9

.field public static final REQUEST_READ_DEVICE_SOFTWARE_VERSION:I = 0x1d

.field public static final REQUEST_READ_TRANSFER_CONTROL_STATUS:I = 0x19

.field public static final REQUEST_SERVICE_CHANGED:I = 0x1

.field public static final REQUEST_SET_APPLCATION_ONCHIP:I = 0xc

.field public static final REQUEST_SET_TRANSFER_CONTROL_COMPLETE:I = 0x11

.field public static final REQUEST_SET_TRANSFER_CONTROL_FAILED:I = 0x1a

.field public static final REQUEST_SET_TRANSFER_CONTROL_INPROGRESS:I = 0xf

.field public static final REQUEST_SET_TRANSFER_CONTROL_READY:I = 0xe

.field public static final REQUEST_WRITE_BYTES_TO_TARGET:I = 0x10

.field public static final REQUEST_WRITE_DATA_TRANSFER:I = 0xa

.field public static final SET_TRANSFER_ABORT:S = 0x6s

.field public static final SET_TRANSFER_COMPLETED:S = 0x4s

.field public static final SET_TRANSFER_CONTROL_INIT:S = 0x0s

.field public static final SET_TRANSFER_CONTROL_INPROGRESS:S = 0x2s

.field public static final SET_TRANSFER_CONTROL_READY:S = 0x1s

.field public static final SET_TRANSFER_FAILED:S = 0x5s

.field public static final SET_TRANSFER_PAUSED:S = 0x3s

.field private static final TAG:Ljava/lang/String; = "OtaUpdateManager"

.field public static final USER_KEYS_CONFIGURATION:Ljava/lang/String;

.field public static final USER_KEY_BT_ADDRESS:I = 0x1

.field public static final USER_KEY_ENCRYPTION_ROOT:I = 0x12

.field public static final USER_KEY_IDENTITY_ROOT:I = 0x11

.field public static final USER_KEY_XTAL_TRIM:I = 0x2

.field private static mInstance:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

.field static mSharedSecretKeySdk:[B


# instance fields
.field private isAesEncryptionEnabled:Z

.field private isDownloadpaused:Z

.field private mBLEDevice:Landroid/bluetooth/BluetoothDevice;

.field private mCsBlockSupported:Z

.field private mCskeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/csr/uenergy/ota/model/CskeyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCsrOtaVersionSupported:Z

.field private mDeviceHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

.field private mGattClient:Lcom/csr/btsmart/BtSmartService;

.field private mImageData:[B

.field private mIsCancelDownload:Z

.field private mIsMeshdevice:Z

.field private mListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

.field private mMergedCsKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/csr/uenergy/ota/model/CskeyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressing:I

.field private mReadCskeyFromBootloader:Z

.field private mRefreshAttributesDone:Z

.field private mSentNum:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceListener:Landroid/content/ServiceConnection;

.field private mSoftwareVersionSupported:Z

.field private mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/csr/userkey.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->USER_KEYS_CONFIGURATION:Ljava/lang/String;

    .line 143
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSharedSecretKeySdk:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/ServiceConnection;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    .line 124
    iput-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mBLEDevice:Landroid/bluetooth/BluetoothDevice;

    .line 127
    iput-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCsBlockSupported:Z

    .line 128
    iput-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mReadCskeyFromBootloader:Z

    .line 129
    iput-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSoftwareVersionSupported:Z

    .line 130
    iput-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCsrOtaVersionSupported:Z

    .line 132
    iput v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mProgressing:I

    .line 135
    iput-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->isDownloadpaused:Z

    .line 136
    iput v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSentNum:I

    .line 137
    iput-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->isAesEncryptionEnabled:Z

    .line 139
    iput-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mIsCancelDownload:Z

    .line 140
    iput-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mRefreshAttributesDone:Z

    .line 141
    iput-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mIsMeshdevice:Z

    .line 150
    new-instance v0, Lcom/csr/uenergy/ota/model/OtaUpdateManager$1;

    invoke-direct {v0, p0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager$1;-><init>(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)V

    iput-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 176
    iput-object p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mServiceListener:Landroid/content/ServiceConnection;

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Lcom/csr/btsmart/BtSmartService;
    .locals 1
    .param p0, "x0"    # Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/csr/uenergy/ota/model/OtaUpdateManager;Lcom/csr/btsmart/BtSmartService;)Lcom/csr/btsmart/BtSmartService;
    .locals 0
    .param p0, "x0"    # Lcom/csr/uenergy/ota/model/OtaUpdateManager;
    .param p1, "x1"    # Lcom/csr/btsmart/BtSmartService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mServiceListener:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mBLEDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$300(Lcom/csr/uenergy/ota/model/OtaUpdateManager;)Lcom/csr/uenergy/ota/model/ConnectionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mDeviceHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mInstance:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/content/ServiceConnection;

    .prologue
    .line 186
    const-string v3, "bluetooth"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    .line 187
    .local v2, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-nez v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 192
    .local v1, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 196
    new-instance v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-direct {v3, p1}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;-><init>(Landroid/content/ServiceConnection;)V

    sput-object v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mInstance:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    .line 197
    sget-object v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mInstance:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    new-instance v4, Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    const-string v5, "OTA Update StateMachine"

    invoke-direct {v4, v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 198
    sget-object v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mInstance:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    new-instance v4, Lcom/csr/uenergy/ota/model/ConnectionHandler;

    const-string v5, "OTA Connection Handler"

    invoke-direct {v4, v5}, Lcom/csr/uenergy/ota/model/ConnectionHandler;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mDeviceHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/csr/btsmart/BtSmartService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "bindIntent":Landroid/content/Intent;
    const-string v3, "DISCOVER_SERVICES"

    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    sget-object v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mInstance:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    iget-object v3, v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 204
    sget-object v3, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_IDLE:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    invoke-static {v3}, Lcom/csr/uenergy/ota/model/State;->setState(Lcom/csr/uenergy/ota/model/State$ConnectionState;)V

    .line 205
    sget-object v3, Lcom/csr/uenergy/ota/model/State$ScanState;->STATE_SCAN_IDLE:Lcom/csr/uenergy/ota/model/State$ScanState;

    invoke-static {v3}, Lcom/csr/uenergy/ota/model/State;->setScanState(Lcom/csr/uenergy/ota/model/State$ScanState;)V

    .line 206
    sget-object v3, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_IDLE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static {v3}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 207
    sget-object v3, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BUILD_ID:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-static {v3}, Lcom/csr/uenergy/ota/model/State;->setReadCsBlockState(Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;)V

    .line 208
    sget-object v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mInstance:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mMergedCsKeyList:Ljava/util/ArrayList;

    .line 209
    sget-object v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mInstance:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mIsCancelDownload:Z

    goto :goto_0
.end method

.method private mergeKeys([BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "bb"    # [B
    .param p2, "bdaddr"    # Ljava/lang/String;
    .param p3, "xtalfreqtrim"    # I
    .param p4, "idRoot"    # Ljava/lang/String;
    .param p5, "encRoot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/csr/uenergy/ota/model/IncorrectImageException;,
            Ljava/lang/StringIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 836
    const-string v0, "OtaUpdateManager"

    const-string v1, "mergeKeys by bootloader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static {p1, p2, p3, p4, p5}, Lcom/csr/uenergy/ota/model/CsConfig;->mergeKeys([BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private mergeKeys([BLjava/util/List;)[B
    .locals 2
    .param p1, "bb"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lcom/csr/uenergy/ota/model/CskeyItem;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/csr/uenergy/ota/model/IncorrectImageException;,
            Ljava/lang/StringIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 852
    .local p2, "cskeyList":Ljava/util/List;, "Ljava/util/List<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    const-string v0, "OtaUpdateManager"

    const-string v1, "mergeKeys by application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {p1, p2}, Lcom/csr/uenergy/ota/model/CsConfig;->mergeKeys([BLjava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method private setTransferComplete()V
    .locals 7

    .prologue
    .line 521
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x11

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 523
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 524
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x4

    aput-byte v6, v4, v5

    iget-object v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 525
    invoke-virtual {v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 522
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 528
    :cond_0
    return-void
.end method

.method private writeBytesToTarget()I
    .locals 7

    .prologue
    .line 760
    const-string v0, "OtaUpdateManager"

    const-string v1, "Writing image data to the target"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v6, 0x14

    .line 762
    .local v6, "length":I
    iget v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mProgressing:I

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mImageData:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 763
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mImageData:[B

    array-length v0, v0

    iget v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mProgressing:I

    sub-int v6, v0, v1

    .line 766
    :cond_0
    new-array v4, v6, [B

    .line 768
    .local v4, "data":[B
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mImageData:[B

    iget v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mProgressing:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_1

    .line 771
    const-string v0, "OtaUpdateManager"

    const-string v1, "Begin to Write 20 bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x10

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_DATA_TRANSFER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 773
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 772
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 778
    .end local v6    # "length":I
    :goto_0
    return v6

    .line 777
    .restart local v6    # "length":I
    :cond_1
    const-string v0, "OtaUpdateManager"

    const-string v1, "Gatt client object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v6, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addMergedCskeyItem(Lcom/csr/uenergy/ota/model/CskeyItem;)V
    .locals 1
    .param p1, "cskey"    # Lcom/csr/uenergy/ota/model/CskeyItem;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mMergedCsKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    return-void
.end method

.method public cancelDownload()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 558
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 559
    iput-boolean v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mIsCancelDownload:Z

    .line 560
    new-array v4, v1, [B

    const/4 v0, 0x0

    const/4 v1, 0x6

    aput-byte v1, v4, v0

    .line 561
    .local v4, "data":[B
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x13

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 562
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 561
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 564
    .end local v4    # "data":[B
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    invoke-virtual {v0}, Lcom/csr/btsmart/BtSmartService;->clearRequest()V

    .line 1018
    :cond_0
    return-void
.end method

.method public connect()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mBLEDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mDeviceHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mBLEDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mDeviceHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

    invoke-virtual {v0, v1, v2}, Lcom/csr/btsmart/BtSmartService;->connectAsClient(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 264
    :cond_0
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;Lcom/csr/uenergy/ota/model/IOtaMessageListener;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "listener"    # Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    .prologue
    .line 243
    const-string/jumbo v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() called with: device = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], listener = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string/jumbo v0, "test"

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

    .line 245
    const-string/jumbo v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: mDeviceHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mDeviceHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string/jumbo v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: mGattClient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mDeviceHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_IDLE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static {v0}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 251
    iput-object p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mBLEDevice:Landroid/bluetooth/BluetoothDevice;

    .line 252
    iput-object p2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    .line 253
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mBLEDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mDeviceHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

    invoke-virtual {v0, v1, v2}, Lcom/csr/btsmart/BtSmartService;->connectAsClient(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 255
    :cond_0
    return-void
.end method

.method public connect(Z)V
    .locals 4
    .param p1, "refresh"    # Z

    .prologue
    .line 267
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mBLEDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mDeviceHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_1

    .line 268
    if-eqz p1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_RECONNECT_GATT:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-interface {v0, v1}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 272
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/csr/uenergy/ota/model/OtaUpdateManager$2;

    invoke-direct {v1, p0, p1}, Lcom/csr/uenergy/ota/model/OtaUpdateManager$2;-><init>(Lcom/csr/uenergy/ota/model/OtaUpdateManager;Z)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_1
    return-void
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 225
    sget-object v1, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mInstance:Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/csr/btsmart/BtSmartService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 229
    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    invoke-virtual {v1}, Lcom/csr/btsmart/BtSmartService;->disconnect()V

    .line 230
    iput-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    .line 231
    iput-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mServiceListener:Landroid/content/ServiceConnection;

    .line 233
    .end local v0    # "bindIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    invoke-virtual {v0}, Lcom/csr/btsmart/BtSmartService;->disconnect()V

    .line 289
    :cond_0
    return-void
.end method

.method public enableOTAMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 622
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/4 v1, 0x7

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CURRENT_APPLICATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 624
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [B

    aput-byte v5, v4, v5

    iget-object v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 623
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    const-string v0, "OtaUpdateManager"

    const-string v1, "null gatt client"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method encryptData([B)[B
    .locals 6
    .param p1, "value"    # [B

    .prologue
    .line 803
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSharedSecretKeySdk:[B

    const-string v5, "AES"

    invoke-direct {v0, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 804
    .local v0, "aesKey":Ljavax/crypto/SecretKey;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 805
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 806
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 811
    .end local v0    # "aesKey":Ljavax/crypto/SecretKey;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :goto_0
    return-object v3

    .line 809
    :catch_0
    move-exception v2

    .line 810
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 811
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getApplcationOnChip()V
    .locals 5

    .prologue
    .line 570
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0xd

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 572
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CURRENT_APPLICATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 573
    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 571
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 575
    :cond_0
    return-void
.end method

.method public getBootloaderSoftwareVersionSupported()Z
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSoftwareVersionSupported:Z

    return v0
.end method

.method public getCsBlockSupported()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCsBlockSupported:Z

    return v0
.end method

.method public getCskeyList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/csr/uenergy/ota/model/CskeyItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCskeyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getCsrOtaVersion()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCsrOtaVersionSupported:Z

    return v0
.end method

.method public getHostValidation()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->isAesEncryptionEnabled:Z

    return v0
.end method

.method public getIsMeshDevice()Z
    .locals 1

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mIsMeshdevice:Z

    return v0
.end method

.method getListener()Lcom/csr/uenergy/ota/model/IOtaMessageListener;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    return-object v0
.end method

.method public getReadCskeyFromBootloader()Z
    .locals 1

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mReadCskeyFromBootloader:Z

    return v0
.end method

.method public getRefreshAttributesDone()Z
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mRefreshAttributesDone:Z

    return v0
.end method

.method public getSoftwareVersion()V
    .locals 5

    .prologue
    .line 337
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x1d

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->DEVICE_INFORMATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 339
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SOFTWARE_REVISION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 340
    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 338
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 342
    :cond_0
    return-void
.end method

.method public increment()V
    .locals 2

    .prologue
    .line 735
    iget v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSentNum:I

    if-lez v0, :cond_0

    .line 736
    iget v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mProgressing:I

    iget v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSentNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mProgressing:I

    .line 737
    :cond_0
    return-void
.end method

.method public isBonded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 487
    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mBLEDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mBLEDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 490
    :cond_0
    return v0
.end method

.method public pauseDownload()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 546
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0, v1}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->pausedDownload(Z)V

    .line 548
    new-array v4, v1, [B

    const/4 v0, 0x0

    const/4 v1, 0x3

    aput-byte v1, v4, v0

    .line 549
    .local v4, "data":[B
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x12

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 550
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 549
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 552
    .end local v4    # "data":[B
    :cond_0
    return-void
.end method

.method public pausedDownload(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->isDownloadpaused:Z

    .line 753
    return-void
.end method

.method public readAuthenticatedCharacteristic()V
    .locals 5

    .prologue
    .line 591
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x1e

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_DATA_TRANSFER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 593
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 592
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 595
    :cond_0
    return-void
.end method

.method public readAuthenticatedCharacteristicInApp()V
    .locals 5

    .prologue
    .line 478
    const-string v0, "OtaUpdateManager"

    const-string v1, "readAuthenticatedCharacteristicInApp: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0xd

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CURRENT_APPLICATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 481
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 480
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 484
    :cond_0
    return-void
.end method

.method public readBootloadVersion()V
    .locals 5

    .prologue
    .line 313
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0xb

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 315
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CSR_OTA_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 316
    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 314
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 318
    :cond_0
    return-void
.end method

.method public readBootloaderSoftwareVersion()V
    .locals 5

    .prologue
    .line 321
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x1b

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 323
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SOFTWARE_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 324
    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 322
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 326
    :cond_0
    return-void
.end method

.method public readCSKeys(II)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "key"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    sget-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v1}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_READCSKEY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 355
    invoke-virtual {v1}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [B

    const/4 v1, 0x0

    int-to-byte v5, p2

    aput-byte v5, v4, v1

    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 356
    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move v1, p1

    .line 354
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 358
    :cond_0
    return-void
.end method

.method public readCSKeysFromBootloaderService(II)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "key"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    sget-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v1}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_READCSKEY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 372
    invoke-virtual {v1}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [B

    const/4 v1, 0x0

    int-to-byte v5, p2

    aput-byte v5, v4, v1

    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 373
    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move v1, p1

    .line 371
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 375
    :cond_0
    return-void
.end method

.method public readCsrOtaVersion()V
    .locals 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x1c

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 331
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CSR_OTA_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 332
    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 330
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 334
    :cond_0
    return-void
.end method

.method public readDataTransferCharacteristic()V
    .locals 5

    .prologue
    .line 581
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x9

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_DATA_TRANSFER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 583
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 582
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 585
    :cond_0
    return-void
.end method

.method public readNextCsBlock()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 385
    const/4 v4, 0x0

    .line 387
    .local v4, "data":[B
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getReadCsBlockState()Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    move-result-object v8

    .line 388
    .local v8, "state":Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;
    const-string v0, "OtaUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readNextCsBlock: start state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    if-nez v8, :cond_2

    .line 390
    sget-object v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BUILD_ID:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-static {v0}, Lcom/csr/uenergy/ota/model/State;->setReadCsBlockState(Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;)V

    .line 391
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCskeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCskeyList:Ljava/util/ArrayList;

    .line 394
    iget-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mIsCancelDownload:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->disconnect()V

    .line 396
    iput-boolean v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mIsCancelDownload:Z

    .line 397
    const-string v0, "OtaUpdateManager"

    const-string v1, "readNextCsBlock: CancelDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    invoke-interface {v0, v9}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtauEnabled(Z)V

    .line 403
    :cond_1
    const-string v0, "OtaUpdateManager"

    const-string v1, "readNextCsBlock: state == null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_2
    const/4 v0, 0x4

    new-array v4, v0, [B

    .line 408
    sget-object v0, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BUILD_ID:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    if-ne v8, v0, :cond_5

    .line 409
    aput-byte v5, v4, v5

    .line 410
    aput-byte v5, v4, v9

    .line 411
    aput-byte v10, v4, v10

    .line 412
    aput-byte v5, v4, v11

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_4

    .line 443
    const-string v0, "OtaUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readNextCsBlock for state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getReadCsBlockState()Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x14

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_READCSBLOCK:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 445
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 444
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 447
    sget-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static {v0}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 449
    :cond_4
    const-string v0, "OtaUpdateManager"

    const-string v1, "readNextCsBlock: end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCskeyList:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 416
    const-string v0, "OtaUpdateManager"

    const-string v1, "readNextCsBlock: mCskeyList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_6
    const/4 v7, 0x0

    .line 421
    .local v7, "isFound":Z
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCskeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/csr/uenergy/ota/model/CskeyItem;

    .line 422
    .local v6, "cskey":Lcom/csr/uenergy/ota/model/CskeyItem;
    const-string v1, "OtaUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readNextCsBlock: cskey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/csr/uenergy/ota/model/CskeyItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/csr/uenergy/ota/model/CskeyItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget v1, v6, Lcom/csr/uenergy/ota/model/CskeyItem;->id:I

    invoke-virtual {v8}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->valueOf()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 424
    iget v0, v6, Lcom/csr/uenergy/ota/model/CskeyItem;->offset:I

    ushr-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 425
    iget v0, v6, Lcom/csr/uenergy/ota/model/CskeyItem;->offset:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v9

    .line 426
    iget v0, v6, Lcom/csr/uenergy/ota/model/CskeyItem;->length:I

    mul-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v10

    .line 427
    iget v0, v6, Lcom/csr/uenergy/ota/model/CskeyItem;->length:I

    mul-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v11

    .line 428
    const/4 v7, 0x1

    .line 429
    const-string v0, "OtaUpdateManager"

    const-string v1, "readNextCsBlock: found cs key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v6    # "cskey":Lcom/csr/uenergy/ota/model/CskeyItem;
    :cond_8
    if-nez v7, :cond_3

    .line 435
    const-string v0, "OtaUpdateManager"

    const-string v1, "readNextCsBlock not Found, try next"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v8}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->getNext()Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    move-result-object v0

    invoke-static {v0}, Lcom/csr/uenergy/ota/model/State;->setReadCsBlockState(Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;)V

    .line 437
    invoke-virtual {p0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readNextCsBlock()V

    goto/16 :goto_0
.end method

.method public readTransferControlStatus()V
    .locals 5

    .prologue
    .line 601
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x19

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 603
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 604
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 602
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 606
    :cond_0
    return-void
.end method

.method public refreshAttribute()V
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/csr/btsmart/BtSmartService;->discoverService(Z)V

    .line 991
    :cond_0
    return-void
.end method

.method public registerBootloaderTransferControlNotifiocation()V
    .locals 5

    .prologue
    .line 655
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x8

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 657
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 658
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 656
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicNotification(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 660
    :cond_0
    return-void
.end method

.method public registerDataTransferNotification(Ljava/util/UUID;)V
    .locals 4
    .param p1, "serviceUuid"    # Ljava/util/UUID;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/4 v1, 0x2

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_DATA_TRANSFER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 647
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v3}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 646
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicNotification(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 649
    :cond_0
    return-void
.end method

.method public registerServiceChangedIndication()V
    .locals 5

    .prologue
    .line 635
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/4 v1, 0x1

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->GATT_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SERVICE_CHANGED:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 637
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 636
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService;->requestCharacteristicIndication(ILjava/util/UUID;Ljava/util/UUID;Landroid/os/Handler;)V

    .line 639
    :cond_0
    return-void
.end method

.method public resetSentNum()V
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    iput v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSentNum:I

    .line 745
    return-void
.end method

.method public sendNextImageChunk()V
    .locals 2

    .prologue
    .line 718
    iget v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mProgressing:I

    iget-object v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mImageData:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 719
    invoke-direct {p0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setTransferComplete()V

    .line 720
    const/4 v0, 0x0

    iput v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSentNum:I

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-boolean v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->isDownloadpaused:Z

    if-nez v0, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->writeBytesToTarget()I

    move-result v0

    iput v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSentNum:I

    goto :goto_0
.end method

.method public setApplicationOnChip(I)V
    .locals 7
    .param p1, "idx"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0xc

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CURRENT_APPLICATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 467
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    iget-object v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 468
    invoke-virtual {v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 466
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 471
    :cond_0
    return-void
.end method

.method setCsBlockSupported(Z)V
    .locals 3
    .param p1, "isCsBlockSupported"    # Z

    .prologue
    .line 872
    const-string v0, "OtaUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCsBlockSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iput-boolean p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCsBlockSupported:Z

    .line 874
    return-void
.end method

.method public setCskeyList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/csr/uenergy/ota/model/CskeyItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 942
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    iput-object p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCskeyList:Ljava/util/ArrayList;

    .line 943
    return-void
.end method

.method setCsrOtaVersion(Z)V
    .locals 3
    .param p1, "isSupported"    # Z

    .prologue
    .line 912
    const-string v0, "OtaUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCsrOtaVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iput-boolean p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mCsrOtaVersionSupported:Z

    .line 914
    return-void
.end method

.method public setHostValidation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->isAesEncryptionEnabled:Z

    .line 296
    return-void
.end method

.method public setImageData([BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # [B
    .param p2, "btAddress"    # Ljava/lang/String;
    .param p3, "xlst"    # I
    .param p4, "idRoot"    # Ljava/lang/String;
    .param p5, "encRoot"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 683
    array-length v2, p1

    if-gtz v2, :cond_0

    .line 710
    :goto_0
    return v1

    .line 685
    :cond_0
    const-string v2, "OtaUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImageData: btAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", xlst = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", idRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", encRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :try_start_0
    iget-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mMergedCsKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 689
    iget-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mMergedCsKeyList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mergeKeys([BLjava/util/List;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mImageData:[B

    .line 690
    iget-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mMergedCsKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 695
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mProgressing:I

    .line 710
    const/4 v1, 0x1

    goto :goto_0

    .line 692
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mergeKeys([BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mImageData:[B
    :try_end_0
    .catch Lcom/csr/uenergy/ota/model/IncorrectImageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Lcom/csr/uenergy/ota/model/IncorrectImageException;
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/IncorrectImageException;->printStackTrace()V

    goto :goto_0

    .line 701
    .end local v0    # "e":Lcom/csr/uenergy/ota/model/IncorrectImageException;
    :catch_1
    move-exception v0

    .line 702
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 705
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsMeshDevice(Z)V
    .locals 0
    .param p1, "meshdevice"    # Z

    .prologue
    .line 1000
    iput-boolean p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mIsMeshdevice:Z

    .line 1001
    return-void
.end method

.method public setNextReadCsBlockState()V
    .locals 3

    .prologue
    .line 453
    const-string v1, "OtaUpdateManager"

    const-string v2, "setNextReadCsBlockState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getReadCsBlockState()Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    move-result-object v0

    .line 455
    .local v0, "state":Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->getNext()Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    move-result-object v1

    invoke-static {v1}, Lcom/csr/uenergy/ota/model/State;->setReadCsBlockState(Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;)V

    .line 456
    return-void
.end method

.method setReadBootloaderSoftwareVersion(Z)V
    .locals 3
    .param p1, "exist"    # Z

    .prologue
    .line 931
    const-string v0, "OtaUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReadBootloaderSoftwareVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iput-boolean p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSoftwareVersionSupported:Z

    .line 933
    return-void
.end method

.method setReadCskeyFromBootloader(Z)V
    .locals 3
    .param p1, "isSupported"    # Z

    .prologue
    .line 892
    const-string v0, "OtaUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReadCskeyFromBootloader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iput-boolean p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mReadCskeyFromBootloader:Z

    .line 894
    return-void
.end method

.method public setRefreshAttributesDone(Z)V
    .locals 0
    .param p1, "done"    # Z

    .prologue
    .line 971
    iput-boolean p1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mRefreshAttributesDone:Z

    .line 972
    return-void
.end method

.method public setTransferControlInProgress()V
    .locals 7

    .prologue
    .line 509
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0xf

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 511
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 512
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput-byte v6, v4, v5

    iget-object v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 513
    invoke-virtual {v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 510
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 515
    :cond_0
    return-void
.end method

.method public setTransferControlReady()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 497
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0xe

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 499
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 500
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    new-array v4, v6, [B

    const/4 v5, 0x0

    aput-byte v6, v4, v5

    iget-object v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 501
    invoke-virtual {v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 498
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 503
    :cond_0
    return-void
.end method

.method public setTransferFailed()V
    .locals 7

    .prologue
    .line 534
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0x1a

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 536
    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 537
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x5

    aput-byte v6, v4, v5

    iget-object v5, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    .line 538
    invoke-virtual {v5}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 535
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 540
    :cond_0
    return-void
.end method

.method updateProgressbar()V
    .locals 4

    .prologue
    .line 787
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    iget v1, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mProgressing:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mImageData:[B

    array-length v2, v2

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mImageData:[B

    array-length v2, v2

    iget v3, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mProgressing:I

    invoke-interface {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaProgressUpdate(III)V

    .line 790
    :cond_0
    return-void
.end method

.method public writeDataTransferCharacteristic([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 612
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mGattClient:Lcom/csr/btsmart/BtSmartService;

    const/16 v1, 0xa

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v2}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_DATA_TRANSFER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 614
    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mStatemachine:Lcom/csr/uenergy/ota/model/OtaMessageHandler;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaMessageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v4, p1

    .line 613
    invoke-virtual/range {v0 .. v5}, Lcom/csr/btsmart/BtSmartService;->writeCharacteristicValue(ILjava/util/UUID;Ljava/util/UUID;[BLandroid/os/Handler;)V

    .line 616
    :cond_0
    return-void
.end method
