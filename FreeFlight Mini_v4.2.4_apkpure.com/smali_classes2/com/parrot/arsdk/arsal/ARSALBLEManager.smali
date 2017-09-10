.class public Lcom/parrot/arsdk/arsal/ARSALBLEManager;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;,
        Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALBLEManagerHolder;,
        Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;,
        Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    }
.end annotation


# static fields
.field private static final ARSALBLEMANAGER_CHARACTERISTIC_UPDATE_NOTIFICATION_DESCRIPTOR_UUID:Ljava/util/UUID;

.field private static final ARSALBLEMANAGER_CONNECTION_TIMEOUT_SEC:I = 0x1e

.field private static final GATT_CONN_FAIL_ESTABLISH:I = 0x3e

.field private static final GATT_INTERNAL_ERROR:I = 0x85

.field private static final GATT_INTERRUPT_ERROR:I = 0x8

.field private static TAG:Ljava/lang/String;


# instance fields
.field private activeGatt:Landroid/bluetooth/BluetoothGatt;

.field private askDisconnection:Z

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private configurationCharacteristicError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field private configurationSem:Ljava/util/concurrent/Semaphore;

.field private connectionError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field private connectionGatt:Landroid/bluetooth/BluetoothGatt;

.field private connectionSem:Ljava/util/concurrent/Semaphore;

.field private context:Landroid/content/Context;

.field private deviceBLEService:Landroid/bluetooth/BluetoothDevice;

.field private disconnectionSem:Ljava/util/concurrent/Semaphore;

.field private discoverServicesError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field private discoverServicesSem:Ljava/util/concurrent/Semaphore;

.field private final gattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private isConfiguringCharacteristics:Z

.field private isDeviceConnected:Z

.field private isDiscoveringServices:Z

.field private listener:Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;

.field private mGattCharacteristics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;

.field private mWriteDataSemaphore:Ljava/util/concurrent/Semaphore;

.field private registeredNotificationCharacteristics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;",
            ">;"
        }
    .end annotation
.end field

.field private writeCharacteristicError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "ARSALBLEManager"

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    .line 63
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->ARSALBLEMANAGER_CHARACTERISTIC_UPDATE_NOTIFICATION_DESCRIPTOR_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    .line 97
    iput-boolean v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isDeviceConnected:Z

    .line 571
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$6;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->gattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 257
    iput-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->context:Landroid/content/Context;

    .line 258
    iput-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->deviceBLEService:Landroid/bluetooth/BluetoothDevice;

    .line 259
    iput-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    .line 260
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mUIHandler:Landroid/os/Handler;

    .line 261
    iput-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->listener:Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;

    .line 263
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionSem:Ljava/util/concurrent/Semaphore;

    .line 264
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnectionSem:Ljava/util/concurrent/Semaphore;

    .line 265
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesSem:Ljava/util/concurrent/Semaphore;

    .line 266
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationSem:Ljava/util/concurrent/Semaphore;

    .line 267
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mWriteDataSemaphore:Ljava/util/concurrent/Semaphore;

    .line 269
    iput-boolean v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->askDisconnection:Z

    .line 270
    iput-boolean v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isDiscoveringServices:Z

    .line 271
    iput-boolean v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isConfiguringCharacteristics:Z

    .line 273
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 274
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 275
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationCharacteristicError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnectionSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isDeviceConnected:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->onDisconectGatt()V

    return-void
.end method

.method static synthetic access$1700(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mWriteDataSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isGattConnected(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationCharacteristicError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->gattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->deviceBLEService:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    return-object p1
.end method

.method static synthetic access$800(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnectGatt()V

    return-void
.end method

.method private closeGatt()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager$7;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$7;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1060
    return-void
.end method

.method private disconnectGatt()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager$3;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$3;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALBLEManagerHolder;->access$100()Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v0

    .line 206
    .local v0, "manager":Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->setContext(Landroid/content/Context;)V

    .line 207
    return-object v0
.end method

.method private isGattConnected(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 1064
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 1065
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1064
    :goto_0
    return v0

    .line 1065
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDisconectGatt()V
    .locals 2

    .prologue
    .line 1016
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v1, "activeGatt disconnected"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->askDisconnection:Z

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnectionSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1025
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isDiscoveringServices:Z

    if-eqz v0, :cond_1

    .line 1027
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1032
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isConfiguringCharacteristics:Z

    if-eqz v0, :cond_2

    .line 1034
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationCharacteristicError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1039
    iget-boolean v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->askDisconnection:Z

    if-nez v0, :cond_3

    .line 1041
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->listener:Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;

    if-eqz v0, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->listener:Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;

    invoke-interface {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;->onBLEDisconnect()V

    .line 1046
    :cond_3
    return-void
.end method

.method private declared-synchronized setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 214
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->context:Landroid/content/Context;

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->initialize()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public cancelReadNotification(Ljava/lang/String;)Z
    .locals 3
    .param p1, "readCharacteristicKey"    # Ljava/lang/String;

    .prologue
    .line 865
    const/4 v1, 0x0

    .line 866
    .local v1, "result":Z
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;

    .line 867
    .local v0, "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
    if-eqz v0, :cond_0

    .line 869
    const/4 v1, 0x1

    .line 870
    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->signalNotification()V

    .line 873
    :cond_0
    return v1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 7
    .param p1, "deviceBLEService"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 313
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connecting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 315
    .local v2, "result":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnect()V

    .line 324
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v4, "resetting connection objects"

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->reset()V

    .line 327
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    iput-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 330
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v4, "connection to the new activeGatt"

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->deviceBLEService:Landroid/bluetooth/BluetoothDevice;

    .line 332
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;

    invoke-direct {v4, p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :try_start_1
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v4, "try acquiring connection semaphore "

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 351
    .local v0, "aquired":Z
    if-eqz v0, :cond_1

    .line 360
    const-wide/16 v4, 0x64

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 367
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aquired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_1
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    .end local v0    # "aquired":Z
    :goto_2
    :try_start_4
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeGatt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/parrot/arsdk/arsal/ARSALBLEManager$2;

    invoke-direct {v4, p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$2;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 404
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect ends with result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-object v2

    .line 362
    .restart local v0    # "aquired":Z
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 377
    .end local v0    # "aquired":Z
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 379
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 403
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    .line 371
    .restart local v0    # "aquired":Z
    :cond_1
    :try_start_7
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v4, "failed acquiring connection semaphore"

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public disconnect()V
    .locals 6

    .prologue
    .line 436
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_1

    .line 438
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->askDisconnection:Z

    .line 440
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnectGatt()V

    .line 442
    sget-object v2, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v3, "wait the disconnect semaphore"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnectionSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 447
    .local v0, "acquire":Z
    if-nez v0, :cond_0

    .line 449
    sget-object v2, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v3, "disconnect semaphore not acquired. Manually disconnect Gatt"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->onDisconectGatt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v0    # "acquire":Z
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->askDisconnection:Z

    .line 461
    :cond_1
    return-void

    .line 453
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public discoverBLENetworkServices()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 4

    .prologue
    .line 465
    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 466
    .local v1, "result":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    monitor-enter p0

    .line 469
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isDeviceConnected:Z

    if-eqz v2, :cond_0

    .line 471
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isDiscoveringServices:Z

    .line 472
    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    iput-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 474
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager$4;

    invoke-direct {v3, p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$4;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :try_start_1
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 497
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isDiscoveringServices:Z

    .line 511
    :goto_1
    monitor-exit p0

    .line 513
    return-object v1

    .line 499
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 502
    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    goto :goto_0

    .line 509
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    goto :goto_1

    .line 511
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 285
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 291
    return-void

    .line 289
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v2, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    new-instance v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager$1;)V

    .line 534
    .local v1, "lock":Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;

    invoke-direct {v4, p0, v2, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$5;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Ljava/util/List;Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 552
    monitor-enter v1

    .line 554
    :try_start_0
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v4, "wait the getServices request lock"

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :goto_0
    iget-boolean v3, v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager$RequestLock;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 559
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 567
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 566
    :cond_0
    :try_start_3
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v4, "getServices request finished"

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    return-object v2
.end method

.method public initialize()Z
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x1

    .line 228
    .local v0, "result":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->context:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    iput-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 231
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v1, :cond_0

    .line 233
    sget-object v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to initialize BluetoothManager."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v2, "initialize: Unable to initialize BluetoothManager."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 240
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 242
    sget-object v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v2, "initialize: Unable to obtain a BluetoothAdapter."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    .line 247
    :cond_1
    return v0
.end method

.method public isDeviceConnected()Z
    .locals 2

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "ret":Z
    monitor-enter p0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isDeviceConnected:Z

    if-eqz v1, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 303
    :cond_0
    monitor-exit p0

    .line 305
    return v0

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readData(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public readDataNotificationData(Ljava/util/List;ILjava/lang/String;)Z
    .locals 6
    .param p2, "maxCount"    # I
    .param p3, "readCharacteristicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 910
    .local p1, "notificationsArray":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;>;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->readDataNotificationData(Ljava/util/List;ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public readDataNotificationData(Ljava/util/List;ILjava/lang/String;J)Z
    .locals 4
    .param p2, "maxCount"    # I
    .param p3, "readCharacteristicKey"    # Ljava/lang/String;
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;",
            ">;I",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .prologue
    .line 892
    .local p1, "notificationsArray":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;>;"
    const/4 v1, 0x0

    .line 893
    .local v1, "result":Z
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;

    .line 894
    .local v0, "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0, p4, p5}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->waitNotification(J)Z

    .line 898
    iget-object v2, v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->notificationsArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 900
    invoke-virtual {v0, p1, p2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->getAllNotification(Ljava/util/List;I)I

    .line 901
    const/4 v1, 0x1

    .line 905
    :cond_0
    return v1
.end method

.method public registerNotificationCharacteristics(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "readCharacteristicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, "characteristicsArray":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    new-instance v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;

    invoke-direct {v1, p0, p1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;-><init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Ljava/util/List;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 968
    monitor-enter p0

    .line 972
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 977
    :cond_1
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->disconnectionSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-eq v2, v3, :cond_1

    .line 982
    :cond_2
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-eq v2, v3, :cond_2

    .line 992
    :cond_3
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-eq v2, v3, :cond_3

    .line 997
    :cond_4
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mWriteDataSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1002
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1004
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;

    .line 1005
    .local v1, "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->signalNotification()V

    goto :goto_0

    .line 1011
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1007
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1010
    invoke-direct {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->closeGatt()V

    .line 1011
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1012
    return-void
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 11
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 761
    sget-object v6, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 762
    .local v6, "result":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    monitor-enter p0

    .line 764
    :try_start_0
    iget-object v4, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    .line 765
    .local v4, "localActiveGatt":Landroid/bluetooth/BluetoothGatt;
    invoke-direct {p0, v4}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isGattConnected(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    .line 768
    .local v0, "connected":Z
    if-eqz v0, :cond_1

    .line 770
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isConfiguringCharacteristics:Z

    .line 771
    sget-object v8, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    iput-object v8, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationCharacteristicError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 773
    const/4 v8, 0x1

    invoke-virtual {v4, p2, v8}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v5

    .line 774
    .local v5, "notifSet":Z
    sget-object v8, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->ARSALBLEMANAGER_CHARACTERISTIC_UPDATE_NOTIFICATION_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {p2, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 775
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v1, :cond_0

    .line 777
    sget-object v8, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v8}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v7

    .line 778
    .local v7, "valueSet":Z
    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 783
    .local v2, "descriptorWriten":Z
    :try_start_1
    sget-object v8, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v9, "acquiring configurationSem"

    invoke-static {v8, v9}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v8, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v8}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 785
    sget-object v8, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    const-string v9, "configurationSem acquired"

    invoke-static {v8, v9}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v6, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationCharacteristicError:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 800
    .end local v2    # "descriptorWriten":Z
    .end local v7    # "valueSet":Z
    :goto_0
    const/4 v8, 0x0

    :try_start_2
    iput-boolean v8, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isConfiguringCharacteristics:Z

    .line 807
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v5    # "notifSet":Z
    :goto_1
    monitor-exit p0

    .line 809
    return-object v6

    .line 789
    .restart local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .restart local v2    # "descriptorWriten":Z
    .restart local v5    # "notifSet":Z
    .restart local v7    # "valueSet":Z
    :catch_0
    move-exception v3

    .line 791
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 792
    sget-object v6, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    goto :goto_0

    .line 797
    .end local v2    # "descriptorWriten":Z
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "valueSet":Z
    :cond_0
    sget-object v8, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCharacteristicNotification "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - BluetoothGattDescriptor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->ARSALBLEMANAGER_CHARACTERISTIC_UPDATE_NOTIFICATION_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    sget-object v6, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CHARACTERISTIC_CONFIGURING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    goto :goto_0

    .line 804
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v5    # "notifSet":Z
    :cond_1
    sget-object v8, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCharacteristicNotification "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - not connected (gatt = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    sget-object v6, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    goto :goto_1

    .line 807
    .end local v0    # "connected":Z
    .end local v4    # "localActiveGatt":Landroid/bluetooth/BluetoothGatt;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8
.end method

.method public setListener(Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->listener:Lcom/parrot/arsdk/arsal/ARSALBLEManagerListener;

    .line 524
    return-void
.end method

.method public unlock()V
    .locals 4

    .prologue
    .line 945
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->connectionSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 946
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->configurationSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 948
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->discoverServicesSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 949
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mWriteDataSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 953
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 955
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;

    .line 956
    .local v1, "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
    invoke-virtual {v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->signalNotification()V

    goto :goto_0

    .line 964
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
    :cond_0
    return-void
.end method

.method public unregisterNotificationCharacteristics(Ljava/lang/String;)Z
    .locals 3
    .param p1, "readCharacteristicKey"    # Ljava/lang/String;

    .prologue
    .line 852
    const/4 v1, 0x0

    .line 853
    .local v1, "result":Z
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;

    .line 854
    .local v0, "notification":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
    if-eqz v0, :cond_0

    .line 856
    const/4 v1, 0x1

    .line 857
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registeredNotificationCharacteristics:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_0
    return v1
.end method

.method public writeData([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 814
    const/4 v2, 0x0

    .line 816
    .local v2, "result":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->activeGatt:Landroid/bluetooth/BluetoothGatt;

    .line 817
    .local v1, "localActiveGatt":Landroid/bluetooth/BluetoothGatt;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isGattConnected(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    :try_start_0
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mWriteDataSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 823
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 824
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 827
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    .line 829
    if-nez v2, :cond_0

    .line 832
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->mWriteDataSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :cond_0
    :goto_0
    return v2

    .line 835
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
