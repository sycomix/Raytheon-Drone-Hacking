.class public Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;
.super Lcom/parrot/freeflight/gamepad/DiscoveryBase;
.source "AndroidInputGamePadDiscovery.java"


# static fields
.field private static final SCAN_PERIOD_MS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "AndroidInputDiscovery"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDiscoveryListContainer:Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScanRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mScanning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;-><init>()V

    .line 61
    new-instance v1, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery$1;-><init>(Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mScanRunnable:Ljava/lang/Runnable;

    .line 39
    new-instance v1, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    invoke-direct {v1}, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mDiscoveryListContainer:Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mHandler:Landroid/os/Handler;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 44
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 46
    .end local v0    # "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->internalScan()V

    return-void
.end method

.method private internalScan()V
    .locals 13

    .prologue
    const v12, 0x1000010

    .line 70
    iget-boolean v7, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mScanning:Z

    if-nez v7, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mScanRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "bleBondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v7, :cond_2

    .line 76
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 79
    :cond_2
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v4

    .line 80
    .local v4, "deviceIds":[I
    array-length v8, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_7

    aget v3, v4, v7

    .line 81
    .local v3, "deviceId":I
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 83
    .local v1, "dev":Landroid/view/InputDevice;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    .line 86
    .local v6, "sources":I
    and-int/lit16 v9, v6, 0x401

    const/16 v10, 0x401

    if-eq v9, v10, :cond_3

    and-int v9, v6, v12

    if-ne v9, v12, :cond_6

    .line 88
    :cond_3
    const/4 v5, 0x0

    .line 90
    .local v5, "isBleDevice":Z
    if-eqz v0, :cond_5

    .line 91
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 92
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 93
    const/4 v5, 0x1

    .line 99
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    iget-object v9, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mDiscoveryListContainer:Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    new-instance v10, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;

    invoke-direct {v10, v1, v5}, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;-><init>(Landroid/view/InputDevice;Z)V

    invoke-virtual {v9, v10}, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->add(Lcom/parrot/freeflight/gamepad/GamePad;)Z

    .line 80
    .end local v5    # "isBleDevice":Z
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "dev":Landroid/view/InputDevice;
    .end local v3    # "deviceId":I
    .end local v6    # "sources":I
    :cond_7
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mDiscoveryListContainer:Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    invoke-virtual {v7}, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->swapCurrentList()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->notifyListChange()V

    goto :goto_0
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
    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mDiscoveryListContainer:Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startScan()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "AndroidInputDiscovery"

    const-string v1, "startScan "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mScanning:Z

    .line 52
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->internalScan()V

    .line 53
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mScanning:Z

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 59
    return-void
.end method
