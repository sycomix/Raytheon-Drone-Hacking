.class public Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
.super Ljava/lang/Object;
.source "UsbAccessoryMux.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "com.parrot.arsdk.USB_ACCESSORY_ATTACHED"

.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.parrot.arsdk.USB_ACCESSORY_PERMISSION"

.field private static final MANUFACTURER_ID:Ljava/lang/String; = "Parrot"

.field private static final SKYCONTROLLER2_MODEL_ID:Ljava/lang/String; = "Skycontroller 2"

.field private static final TAG:Ljava/lang/String; = "UsbAccessoryMux"

.field private static sInstance:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;


# instance fields
.field private final context:Landroid/content/Context;

.field private discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

.field private mDiscoveryListener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

.field private mUsbAccessoryReceiver:Landroid/content/BroadcastReceiver;

.field private muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private muxThread:Ljava/lang/Thread;

.field private final onCloseListener:Lcom/parrot/mux/Mux$IOnClosedListener;

.field private final usbManager:Landroid/hardware/usb/UsbManager;

.field private usbMux:Lcom/parrot/mux/Mux;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v3, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;

    invoke-direct {v3, p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$2;-><init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->onCloseListener:Lcom/parrot/mux/Mux$IOnClosedListener;

    .line 187
    new-instance v3, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$3;

    invoke-direct {v3, p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$3;-><init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mUsbAccessoryReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    const-string v3, "UsbAccessoryMux"

    const-string v5, "create UsbAccessoryMux"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->context:Landroid/content/Context;

    .line 86
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->context:Landroid/content/Context;

    const-string/jumbo v5, "usb"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 88
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.parrot.arsdk.USB_ACCESSORY_ATTACHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.parrot.arsdk.USB_ACCESSORY_PERMISSION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mUsbAccessoryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v1

    .line 94
    .local v1, "accessoryList":[Landroid/hardware/usb/UsbAccessory;
    if-eqz v1, :cond_1

    .line 95
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 96
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    const-string v6, "Parrot"

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Skycontroller 2"

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v7, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->context:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.parrot.arsdk.USB_ACCESSORY_PERMISSION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v4, v8, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V

    .line 95
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)Lcom/parrot/mux/Mux;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->closeMux()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;Landroid/hardware/usb/UsbAccessory;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
    .param p1, "x1"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->startMux(Landroid/hardware/usb/UsbAccessory;)V

    return-void
.end method

.method private closeMux()V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->destroy()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    invoke-virtual {v0}, Lcom/parrot/mux/Mux;->stop()V

    .line 167
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    invoke-virtual {v0}, Lcom/parrot/mux/Mux;->destroy()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 172
    :try_start_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 177
    :cond_2
    monitor-exit p0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 75
    const-class v1, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->sInstance:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->sInstance:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    .line 79
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->sInstance:Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startMux(Landroid/hardware/usb/UsbAccessory;)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 124
    const-string v0, "UsbAccessoryMux"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessory connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 128
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "UsbAccessoryMux"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening mux, fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Lcom/parrot/mux/Mux;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->onCloseListener:Lcom/parrot/mux/Mux$IOnClosedListener;

    invoke-direct {v0, v1, v2}, Lcom/parrot/mux/Mux;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/parrot/mux/Mux$IOnClosedListener;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    .line 131
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    invoke-virtual {v0}, Lcom/parrot/mux/Mux;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$1;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux$1;-><init>(Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;)V

    const-string v2, "muxThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxThread:Ljava/lang/Thread;

    .line 139
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;-><init>(Lcom/parrot/mux/Mux;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    .line 141
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mDiscoveryListener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mDiscoveryListener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->setListener(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;)V

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    .line 157
    return-void

    .line 145
    :cond_1
    const-string v0, "UsbAccessoryMux"

    const-string v1, "Error opening usb mux"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->muxFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0

    .line 153
    :cond_2
    :try_start_2
    const-string v0, "UsbAccessoryMux"

    const-string v1, "Error opening USB Accessory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelConnect()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->cancelConnect()V

    .line 121
    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;)I
    .locals 6
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "json"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;)I

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMux()Lcom/parrot/mux/Mux;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->usbMux:Lcom/parrot/mux/Mux;

    return-object v0
.end method

.method public setDiscoveryListener(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mDiscoveryListener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    .line 105
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->discoveryChannel:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->mDiscoveryListener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->setListener(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;)V

    .line 108
    :cond_0
    return-void
.end method
