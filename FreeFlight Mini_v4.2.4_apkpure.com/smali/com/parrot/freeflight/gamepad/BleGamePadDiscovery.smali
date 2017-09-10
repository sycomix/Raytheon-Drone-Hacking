.class public Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;
.super Lcom/parrot/freeflight/gamepad/DiscoveryBase;
.source "BleGamePadDiscovery.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final BLE_SCAN_DURATION:J = 0xfa0L

.field private static final BLE_SCAN_PERIOD:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "BleGamePadDiscovery"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDiscoveryListContainer:Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

.field private final mHandler:Landroid/os/Handler;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRestartScanRunnable:Ljava/lang/Runnable;

.field private mScanning:Z

.field private final mStopScanRunnable:Ljava/lang/Runnable;

.field private final mUuidFilter:[Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;-><init>()V

    .line 46
    new-instance v1, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$1;-><init>(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mStopScanRunnable:Ljava/lang/Runnable;

    .line 53
    new-instance v1, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$2;-><init>(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mRestartScanRunnable:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mContext:Landroid/content/Context;

    .line 66
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/UUID;

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/freeflight3/RemoteController;->TINOS_UUID:Ljava/util/UUID;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mUuidFilter:[Ljava/util/UUID;

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v1, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    invoke-direct {v1}, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mDiscoveryListContainer:Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 71
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 72
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->createScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 74
    .end local v0    # "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->internalStopScan()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mDiscoveryListContainer:Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mScanning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$3;-><init>(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)V

    return-object v0
.end method

.method private internalStartScan()V
    .locals 3

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mScanning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mUuidFilter:[Ljava/util/UUID;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 101
    :cond_0
    return-void
.end method

.method private internalStopScan()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 105
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mDiscoveryListContainer:Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startScan()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "BleGamePadDiscovery"

    const-string v1, "startScan "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mScanning:Z

    .line 82
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->internalStartScan()V

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mStopScanRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mRestartScanRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mScanning:Z

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->internalStopScan()V

    .line 97
    :cond_0
    return-void
.end method
