.class public Lcom/parrot/freeflight3/update/CsrUpdateManager;
.super Ljava/lang/Object;
.source "CsrUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;,
        Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;
    }
.end annotation


# static fields
.field private static final APPL_ON_CHIP_1:I = 0x1

.field private static final APPL_ON_CHIP_2:I = 0x2

.field private static final DEFAULT_CS_VERSION:I = 0x0

.field private static final MAX_CS_KEY_NUMBER:I = 0x64

.field private static final MESSAGE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CsrUpdateManager"

.field protected static final hexArray:[C


# instance fields
.field private mBleDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBtAddress:Ljava/lang/String;

.field private mCSVersion:I

.field private mContext:Landroid/content/Context;

.field private mCrystalTrim:I

.field private mCsKeyDbRawId:I

.field private mCurrentApplicationOnChip:I

.field private mEncryptionRoot:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIdentityRoot:Ljava/lang/String;

.field private mOtaMessageListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

.field private mServiceReady:Z

.field private mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

.field private mWantConnection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 643
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/parrot/freeflight3/update/OnRemoteUpdateListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "csrFilePath"    # Ljava/lang/String;
    .param p3, "csKeyDbRawId"    # I
    .param p4, "updateListener"    # Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mHandler:Landroid/os/Handler;

    .line 50
    iput v2, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCSVersion:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCrystalTrim:I

    .line 59
    iput-boolean v2, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mServiceReady:Z

    .line 61
    iput-boolean v2, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mWantConnection:Z

    .line 184
    new-instance v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;-><init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mOtaMessageListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mFilePath:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCsKeyDbRawId:I

    .line 68
    iput-object p4, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    .line 70
    new-instance v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight3/update/CsrUpdateManager$1;-><init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V

    invoke-static {p1, v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->initialize(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 91
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setHostValidation(Z)V

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight3/update/CsrUpdateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mServiceReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mWantConnection:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCSVersion:I

    return v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight3/update/CsrUpdateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCSVersion:I

    return p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mBleDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->startDownloading()V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight3/update/CsrUpdateManager;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->setMergedCskeyValue(I[B)V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCurrentApplicationOnChip:I

    return v0
.end method

.method static synthetic access$1502(Lcom/parrot/freeflight3/update/CsrUpdateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCurrentApplicationOnChip:I

    return p1
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCsKeyDbRawId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->connect()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mBtAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight3/update/CsrUpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mBtAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCrystalTrim:I

    return v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight3/update/CsrUpdateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCrystalTrim:I

    return p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mIdentityRoot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight3/update/CsrUpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mIdentityRoot:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mEncryptionRoot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight3/update/CsrUpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mEncryptionRoot:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    return-object v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 646
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 647
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 648
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 649
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/parrot/freeflight3/update/CsrUpdateManager;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 650
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/parrot/freeflight3/update/CsrUpdateManager;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 647
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private connect()V
    .locals 3

    .prologue
    .line 106
    const-string v0, "CsrUpdateManager"

    const-string v1, "connect: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mWantConnection:Z

    .line 108
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mBleDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mOtaMessageListener:Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    invoke-virtual {v0, v1, v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->connect(Landroid/bluetooth/BluetoothDevice;Lcom/csr/uenergy/ota/model/IOtaMessageListener;)V

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->CONNECTING:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    .line 111
    :cond_0
    return-void
.end method

.method private setMergedCskeyValue(I[B)V
    .locals 8
    .param p1, "cskeyId"    # I
    .param p2, "data"    # [B

    .prologue
    .line 624
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getCskeyList()Ljava/util/ArrayList;

    move-result-object v1

    .line 625
    .local v1, "cskeyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    if-nez v1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/csr/uenergy/ota/model/CskeyItem;

    .line 629
    .local v3, "entry":Lcom/csr/uenergy/ota/model/CskeyItem;
    iget v5, v3, Lcom/csr/uenergy/ota/model/CskeyItem;->id:I

    if-ne v5, p1, :cond_2

    .line 630
    new-instance v0, Lcom/csr/uenergy/ota/model/CskeyItem;

    iget-object v4, v3, Lcom/csr/uenergy/ota/model/CskeyItem;->name:Ljava/lang/String;

    iget v5, v3, Lcom/csr/uenergy/ota/model/CskeyItem;->id:I

    iget v6, v3, Lcom/csr/uenergy/ota/model/CskeyItem;->offset:I

    iget v7, v3, Lcom/csr/uenergy/ota/model/CskeyItem;->length:I

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/csr/uenergy/ota/model/CskeyItem;-><init>(Ljava/lang/String;III)V

    .line 631
    .local v0, "cskeyItem":Lcom/csr/uenergy/ota/model/CskeyItem;
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/csr/uenergy/ota/model/CskeyItem;->value:[B

    const/4 v6, 0x0

    array-length v7, p2

    invoke-static {p2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    const-string v4, "CsrUpdateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMergedCskeyValue: name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/csr/uenergy/ota/model/CskeyItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/csr/uenergy/ota/model/CskeyItem;->value:[B

    invoke-static {v6}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->addMergedCskeyItem(Lcom/csr/uenergy/ota/model/CskeyItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    .end local v0    # "cskeyItem":Lcom/csr/uenergy/ota/model/CskeyItem;
    .end local v3    # "entry":Lcom/csr/uenergy/ota/model/CskeyItem;
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "CsrUpdateManager"

    const-string v5, "Reading CS Block throw exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startDownloading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    const-string v0, "CsrUpdateManager"

    const-string v1, "mFilePath is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mBtAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mCrystalTrim:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 123
    :cond_1
    const-string v0, "CsrUpdateManager"

    const-string v1, "mBtAddress or mCrystalTrim is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->UPLOADING:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    invoke-interface {v0, v3}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onProgress(I)V

    .line 130
    :cond_4
    const-string v0, "CsrUpdateManager"

    const-string v1, "startDownloading"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->clear()V

    .line 136
    new-instance v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;-><init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;Lcom/parrot/freeflight3/update/CsrUpdateManager$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mFilePath:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight3/update/CsrUpdateManager$MergeCsKeysToImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 95
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() called with: bluetoothDevice = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mBleDevice:Landroid/bluetooth/BluetoothDevice;

    .line 97
    iget-boolean v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mServiceReady:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->connect()V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mWantConnection:Z

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->destroy(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->STOPPED:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager;->mUpdateListener:Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    .line 144
    return-void
.end method
