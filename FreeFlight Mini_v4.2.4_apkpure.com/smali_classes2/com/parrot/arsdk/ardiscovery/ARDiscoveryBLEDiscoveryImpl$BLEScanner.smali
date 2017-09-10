.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;
.super Ljava/lang/Object;
.source "ARDiscoveryBLEDiscoveryImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BLEScanner"
.end annotation


# static fields
.field private static final ARDISCOVERY_BLE_MANUFACTURER_DATA_ADTYPE:I = 0xff

.field private static final ARDISCOVERY_BLE_MANUFACTURER_DATA_ADTYPE_OFFSET:I = 0x4

.field private static final ARDISCOVERY_BLE_MANUFACTURER_DATA_LENGTH_OFFSET:I = 0x3

.field private static final ARDISCOVERY_BLE_MANUFACTURER_DATA_LENGTH_WITH_ADTYPE:I = 0x9

.field private static final ARDISCOVERY_BLE_SCAN_DURATION:J = 0xfa0L

.field private static final ARDISCOVERY_BLE_SCAN_PERIOD:J = 0x2710L

.field public static final ARDISCOVERY_BLE_TIMEOUT_DURATION:J = 0x4e20L


# instance fields
.field private isStart:Z

.field private newBLEDeviceServicesHmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private scanning:Z

.field private startBLEHandler:Landroid/os/Handler;

.field private startScanningRunnable:Ljava/lang/Runnable;

.field private stopBLEHandler:Landroid/os/Handler;

.field private stopScanningRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V
    .locals 2

    .prologue
    .line 326
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLEScanningTask constructor"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->startBLEHandler:Landroid/os/Handler;

    .line 330
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->stopBLEHandler:Landroid/os/Handler;

    .line 332
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner$1;

    invoke-direct {v0, p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner$1;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->startScanningRunnable:Ljava/lang/Runnable;

    .line 341
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner$2;

    invoke-direct {v0, p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner$2;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->stopScanningRunnable:Ljava/lang/Runnable;

    .line 349
    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->periodScanLeDeviceEnd()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->startScanLeDevice()V

    return-void
.end method

.method private getBLEProductConnectionState([B)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;
    .locals 9
    .param p1, "scanRecord"    # [B

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 473
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->eARDISCOVERY_CONNECTION_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .line 476
    .local v2, "connectionState":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;
    const/16 v0, 0xff

    .line 479
    .local v0, "MASK":I
    const/4 v6, 0x3

    invoke-static {p1, v6, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    check-cast v4, [B

    .line 480
    .local v4, "data":[B
    aget-byte v6, v4, v7

    and-int/lit16 v5, v6, 0xff

    .line 483
    .local v5, "manufacturerDataLenght":I
    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 486
    add-int/lit8 v6, v5, 0x4

    invoke-static {p1, v8, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .end local v4    # "data":[B
    check-cast v4, [B

    .line 487
    .restart local v4    # "data":[B
    aget-byte v6, v4, v7

    and-int/lit16 v1, v6, 0xff

    .line 490
    .local v1, "adType":I
    const/16 v6, 0xff

    if-ne v1, v6, :cond_0

    .line 493
    const/4 v6, 0x7

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int v3, v6, v7

    .line 494
    .local v3, "connectionStateID":I
    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    move-result-object v2

    .line 497
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->eARDISCOVERY_CONNECTION_STATE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    invoke-virtual {v2, v6}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 499
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ARDISCOVERY_CONNECTION_STATE_UNKNOWN:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .line 504
    .end local v1    # "adType":I
    .end local v3    # "connectionStateID":I
    :cond_0
    return-object v2
.end method

.method private getParrotProductID([B)I
    .locals 12
    .param p1, "scanRecord"    # [B

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x4

    .line 425
    const/4 v5, 0x0

    .line 427
    .local v5, "parrotProductID":I
    const/16 v0, 0xff

    .line 430
    .local v0, "MASK":I
    invoke-static {p1, v11, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    check-cast v3, [B

    .line 431
    .local v3, "data":[B
    aget-byte v8, v3, v9

    and-int/lit16 v4, v8, 0xff

    .line 434
    .local v4, "manufacturerDataLenght":I
    const/16 v8, 0x9

    if-ne v4, v8, :cond_0

    .line 437
    add-int/lit8 v8, v4, 0x4

    invoke-static {p1, v10, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .end local v3    # "data":[B
    check-cast v3, [B

    .line 438
    .restart local v3    # "data":[B
    aget-byte v8, v3, v9

    and-int/lit16 v1, v8, 0xff

    .line 441
    .local v1, "adType":I
    const/16 v8, 0xff

    if-ne v1, v8, :cond_0

    .line 443
    const/4 v8, 0x1

    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x2

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int v2, v8, v9

    .line 444
    .local v2, "btVendorID":I
    aget-byte v8, v3, v11

    and-int/lit16 v8, v8, 0xff

    aget-byte v9, v3, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int v7, v8, v9

    .line 445
    .local v7, "usbVendorID":I
    const/4 v8, 0x5

    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x6

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int v6, v8, v9

    .line 448
    .local v6, "usbProductID":I
    const/16 v8, 0x43

    if-ne v2, v8, :cond_0

    const/16 v8, 0x19cf

    if-ne v7, v8, :cond_0

    .line 451
    iget-object v8, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$1300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 453
    move v5, v6

    .line 459
    .end local v1    # "adType":I
    .end local v2    # "btVendorID":I
    .end local v6    # "usbProductID":I
    .end local v7    # "usbVendorID":I
    :cond_0
    return v5
.end method

.method private periodScanLeDeviceEnd()V
    .locals 2

    .prologue
    .line 509
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "periodScanLeDeviceEnd"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->newBLEDeviceServicesHmap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$1400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;Ljava/util/HashMap;)V

    .line 511
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->stopScanLeDevice()V

    .line 512
    return-void
.end method

.method private startScanLeDevice()V
    .locals 4

    .prologue
    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->newBLEDeviceServicesHmap:Ljava/util/HashMap;

    .line 367
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->stopBLEHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->stopScanningRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->scanning:Z

    .line 370
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$1200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$1100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 373
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->startBLEHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->startScanningRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 374
    return-void
.end method

.method private stopScanLeDevice()V
    .locals 2

    .prologue
    .line 516
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanLeDeviceAsyncTask stopLeScan"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->scanning:Z

    .line 518
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$1200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$1100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 519
    return-void
.end method


# virtual methods
.method public IsScanning()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->scanning:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public IsStart()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->isStart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bleCallback(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6
    .param p1, "bleService"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 378
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bleCallback : found BluetoothDevice : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, p3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->getParrotProductID([B)I

    move-result v2

    .line 382
    .local v2, "productID":I
    if-eqz v2, :cond_0

    .line 384
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    invoke-direct {v0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 386
    .local v0, "deviceBLEService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    invoke-virtual {v0, p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->setSignal(I)V

    .line 387
    invoke-direct {p0, p3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->getBLEProductConnectionState([B)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->setConnectionState(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;)V

    .line 390
    new-instance v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 392
    .local v1, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->newBLEDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v0    # "deviceBLEService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    .end local v1    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->isStart:Z

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->isStart:Z

    .line 356
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->startScanningRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 359
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 523
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BLEScanningTask stop"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$1100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$1200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$1100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->startBLEHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->startScanningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 539
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->stopBLEHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->stopScanningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 540
    iput-boolean v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->scanning:Z

    .line 541
    iput-boolean v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->isStart:Z

    .line 542
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot stop scan.  Unexpected NPE."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
