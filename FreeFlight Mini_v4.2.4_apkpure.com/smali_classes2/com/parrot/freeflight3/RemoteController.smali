.class public Lcom/parrot/freeflight3/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;,
        Lcom/parrot/freeflight3/RemoteController$LedColor;,
        Lcom/parrot/freeflight3/RemoteController$ConnectionState;
    }
.end annotation


# static fields
.field public static final DEVICE_INFO_CSR_VERSION_UUID:Ljava/util/UUID;

.field public static final DEVICE_INFO_MCU_VERSION_UUID:Ljava/util/UUID;

.field public static final DEVICE_INFO_SERIAL_NUMBER_UUID:Ljava/util/UUID;

.field public static final DEVICE_INFO_SERVICE_UUID:Ljava/util/UUID;

.field private static final NOTIF_SERVICE_UUID:Ljava/util/UUID;

.field private static final RX_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "RemoteController"

.field public static final TINOS_MAX_VALUE:I = 0x7f

.field public static final TINOS_UUID:Ljava/util/UUID;

.field private static final TX_DESCRIPTOR:Ljava/util/UUID;

.field private static final TX_UUID:Ljava/util/UUID;

.field private static final WATCHDOG_DELAY_MS:J = 0x1f4L


# instance fields
.field private mBatteryLevel:I

.field private final mBatteryListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight3/OnRemoteBatteryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mConnectionListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight3/OnRemoteConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionRequested:Z

.field private mContext:Landroid/content/Context;

.field private mCsrVersion:Ljava/lang/String;

.field private mFrameResolver:Lcom/parrot/freeflight3/FrameResolver;

.field private mGatt:Landroid/bluetooth/BluetoothGatt;

.field private mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mInfosListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight3/OnRemoteInfosListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight3/OnRemoteInputListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMcuVersion:Ljava/lang/String;

.field private mRemote:Landroid/bluetooth/BluetoothDevice;

.field private mSerialNumber:Ljava/lang/String;

.field private mState:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

.field private final mWatchDogRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "9e35fa01-4344-44d4-a2e2-0c7f6046878b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/RemoteController;->TX_UUID:Ljava/util/UUID;

    .line 26
    const-string v0, "9e35fa02-4344-44d4-a2e2-0c7f6046878b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/RemoteController;->RX_UUID:Ljava/util/UUID;

    .line 27
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/RemoteController;->TX_DESCRIPTOR:Ljava/util/UUID;

    .line 29
    const-string v0, "9e35fa00-4344-44d4-a2e2-0c7f6046878b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/RemoteController;->NOTIF_SERVICE_UUID:Ljava/util/UUID;

    .line 31
    const-string v0, "0000180A-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_SERVICE_UUID:Ljava/util/UUID;

    .line 32
    const-string v0, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_CSR_VERSION_UUID:Ljava/util/UUID;

    .line 33
    const-string v0, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_MCU_VERSION_UUID:Ljava/util/UUID;

    .line 34
    const-string v0, "00002a25-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_SERIAL_NUMBER_UUID:Ljava/util/UUID;

    .line 36
    const-string v0, "9e35fa00-4344-44d4-a2e2-0c7f6046878b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight3/RemoteController;->TINOS_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mHandler:Landroid/os/Handler;

    .line 55
    sget-object v0, Lcom/parrot/freeflight3/RemoteController$ConnectionState;->STATE_DISCONNECTED:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mState:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    .line 396
    new-instance v0, Lcom/parrot/freeflight3/RemoteController$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight3/RemoteController$3;-><init>(Lcom/parrot/freeflight3/RemoteController;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mWatchDogRunnable:Ljava/lang/Runnable;

    .line 229
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController;->mContext:Landroid/content/Context;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mConnectionListenerList:Ljava/util/List;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mInputListenerList:Ljava/util/List;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBatteryListenerList:Ljava/util/List;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mInfosListenerList:Ljava/util/List;

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Lcom/parrot/freeflight3/FrameResolver;

    new-instance v1, Lcom/parrot/freeflight3/RemoteController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight3/RemoteController$1;-><init>(Lcom/parrot/freeflight3/RemoteController;)V

    invoke-direct {v0, v1}, Lcom/parrot/freeflight3/FrameResolver;-><init>(Lcom/parrot/freeflight3/FrameResolver$Listener;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mFrameResolver:Lcom/parrot/freeflight3/FrameResolver;

    .line 288
    new-instance v0, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight3/RemoteController$RemoteBluetoothGattCallback;-><init>(Lcom/parrot/freeflight3/RemoteController;Lcom/parrot/freeflight3/RemoteController$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 290
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight3/RemoteController;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight3/RemoteController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/parrot/freeflight3/RemoteController;->mConnectionRequested:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight3/RemoteController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mInfosListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/parrot/freeflight3/RemoteController;->NOTIF_SERVICE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/parrot/freeflight3/RemoteController;->TX_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/parrot/freeflight3/RemoteController;->TX_DESCRIPTOR:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight3/RemoteController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight3/RemoteController;->refreshServiceCache()V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mWatchDogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight3/RemoteController;)Lcom/parrot/freeflight3/FrameResolver;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mFrameResolver:Lcom/parrot/freeflight3/FrameResolver;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight3/RemoteController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mInputListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/parrot/freeflight3/RemoteController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/parrot/freeflight3/RemoteController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight3/RemoteController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBatteryListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight3/RemoteController;Lcom/parrot/freeflight3/RemoteController$ConnectionState;)Lcom/parrot/freeflight3/RemoteController$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;
    .param p1, "x1"    # Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController;->mState:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight3/RemoteController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mRemote:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight3/RemoteController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight3/RemoteController;->notifyConnectionListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight3/RemoteController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight3/RemoteController;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight3/RemoteController;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mCsrVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight3/RemoteController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController;->mCsrVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mMcuVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight3/RemoteController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController;->mMcuVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight3/RemoteController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/parrot/freeflight3/RemoteController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/RemoteController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController;->mSerialNumber:Ljava/lang/String;

    return-object p1
.end method

.method private notifyConnectionListeners()V
    .locals 4

    .prologue
    .line 303
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController;->mConnectionListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight3/OnRemoteConnectionListener;

    .line 304
    .local v0, "listener":Lcom/parrot/freeflight3/OnRemoteConnectionListener;
    iget-object v2, p0, Lcom/parrot/freeflight3/RemoteController;->mRemote:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/parrot/freeflight3/RemoteController;->mState:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    invoke-interface {v0, v2, v3}, Lcom/parrot/freeflight3/OnRemoteConnectionListener;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/parrot/freeflight3/RemoteController$ConnectionState;)V

    goto :goto_0

    .line 306
    .end local v0    # "listener":Lcom/parrot/freeflight3/OnRemoteConnectionListener;
    :cond_0
    return-void
.end method

.method private refreshServiceCache()V
    .locals 4

    .prologue
    .line 375
    const-string v0, "RemoteController"

    const-string v1, "refreshServiceCache: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lcom/parrot/freeflight3/BleCacheRefresher;->refresh(Landroid/bluetooth/BluetoothGatt;)Z

    .line 377
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 379
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight3/RemoteController$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight3/RemoteController$2;-><init>(Lcom/parrot/freeflight3/RemoteController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    return-void
.end method


# virtual methods
.method public addBatteryListener(Lcom/parrot/freeflight3/OnRemoteBatteryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight3/OnRemoteBatteryListener;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBatteryListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBatteryListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBatteryLevel:I

    invoke-interface {p1, v0}, Lcom/parrot/freeflight3/OnRemoteBatteryListener;->onBatteryChange(I)V

    .line 320
    return-void
.end method

.method public addConnectionListener(Lcom/parrot/freeflight3/OnRemoteConnectionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight3/OnRemoteConnectionListener;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mConnectionListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mConnectionListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mRemote:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController;->mState:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    invoke-interface {p1, v0, v1}, Lcom/parrot/freeflight3/OnRemoteConnectionListener;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/parrot/freeflight3/RemoteController$ConnectionState;)V

    .line 296
    return-void
.end method

.method public addInfoListener(Lcom/parrot/freeflight3/OnRemoteInfosListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/parrot/freeflight3/OnRemoteInfosListener;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mInfosListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mInfosListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mCsrVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController;->mMcuVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight3/RemoteController;->mSerialNumber:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/parrot/freeflight3/OnRemoteInfosListener;->onInfosRecovered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public addInputListener(Lcom/parrot/freeflight3/OnRemoteInputListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight3/OnRemoteInputListener;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mInputListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mInputListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 337
    const-string v0, "RemoteController"

    const-string v1, "connect "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 342
    :cond_0
    iput-boolean v2, p0, Lcom/parrot/freeflight3/RemoteController;->mConnectionRequested:Z

    .line 344
    const-string v0, "RemoteController"

    const-string v1, "connect STATE_CONNECTING "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v0, Lcom/parrot/freeflight3/RemoteController$ConnectionState;->STATE_CONNECTING:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mState:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    .line 346
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController;->mRemote:Landroid/bluetooth/BluetoothDevice;

    .line 347
    invoke-direct {p0}, Lcom/parrot/freeflight3/RemoteController;->notifyConnectionListeners()V

    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 350
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 353
    const-string v1, "RemoteController"

    const-string v2, "disconnect STATE_DISCONNECTED "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v1, Lcom/parrot/freeflight3/RemoteController$ConnectionState;->STATE_DISCONNECTED:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    iput-object v1, p0, Lcom/parrot/freeflight3/RemoteController;->mState:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    .line 355
    invoke-direct {p0}, Lcom/parrot/freeflight3/RemoteController;->notifyConnectionListeners()V

    .line 357
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight3/RemoteController;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 371
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight3/RemoteController;->mConnectionRequested:Z

    .line 372
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 366
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "RemoteController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mRemote:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getConnectionState()Lcom/parrot/freeflight3/RemoteController$ConnectionState;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mState:Lcom/parrot/freeflight3/RemoteController$ConnectionState;

    return-object v0
.end method

.method public removeBatteryListener(Lcom/parrot/freeflight3/OnRemoteBatteryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight3/OnRemoteBatteryListener;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mBatteryListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public removeConnectionListener(Lcom/parrot/freeflight3/OnRemoteConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight3/OnRemoteConnectionListener;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mConnectionListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public removeInfoListener(Lcom/parrot/freeflight3/OnRemoteInfosListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight3/OnRemoteInfosListener;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mInfosListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public removeInputListener(Lcom/parrot/freeflight3/OnRemoteInputListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight3/OnRemoteInputListener;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController;->mInputListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public requestVersion(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 406
    const-string v2, "RemoteController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v2, Lcom/parrot/freeflight3/RemoteController;->DEVICE_INFO_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 408
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 410
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v2, p0, Lcom/parrot/freeflight3/RemoteController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 411
    return-void
.end method

.method public setColorLedIndicator(Lcom/parrot/freeflight3/RemoteController$LedColor;Z)V
    .locals 9
    .param p1, "color"    # Lcom/parrot/freeflight3/RemoteController$LedColor;
    .param p2, "vibrate"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 421
    const-string v4, "RemoteController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setColorLedIndicator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vibrate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v4, p0, Lcom/parrot/freeflight3/RemoteController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v4, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight3/RemoteController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v5, Lcom/parrot/freeflight3/RemoteController;->NOTIF_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 426
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_2

    .line 428
    const-string v4, "RemoteController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setColorLedIndicator: service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/parrot/freeflight3/RemoteController;->NOTIF_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_2
    sget-object v4, Lcom/parrot/freeflight3/RemoteController;->RX_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 433
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_3

    .line 435
    const-string v4, "RemoteController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setColorLedIndicator: characteristic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/parrot/freeflight3/RemoteController;->RX_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_3
    const/4 v4, 0x2

    new-array v3, v4, [B

    .line 441
    .local v3, "value":[B
    sget-object v4, Lcom/parrot/freeflight3/RemoteController$4;->$SwitchMap$com$parrot$freeflight3$RemoteController$LedColor:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight3/RemoteController$LedColor;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 452
    :goto_1
    if-eqz p2, :cond_4

    .line 453
    const/16 v4, -0x2f

    aput-byte v4, v3, v8

    .line 457
    :goto_2
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 459
    iget-object v4, p0, Lcom/parrot/freeflight3/RemoteController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    .line 461
    .local v1, "result":Z
    if-nez v1, :cond_0

    const-string v4, "RemoteController"

    const-string v5, "setColorLedIndicator: writing characteristic is failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    .end local v1    # "result":Z
    :pswitch_0
    const/16 v4, -0x39

    aput-byte v4, v3, v7

    goto :goto_1

    .line 448
    :pswitch_1
    const/16 v4, -0x59

    aput-byte v4, v3, v7

    goto :goto_1

    .line 455
    :cond_4
    aput-byte v7, v3, v8

    goto :goto_2

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
