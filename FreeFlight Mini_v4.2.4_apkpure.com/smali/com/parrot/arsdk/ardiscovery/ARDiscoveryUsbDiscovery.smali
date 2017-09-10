.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;
.super Ljava/lang/Object;
.source "ARDiscoveryUsbDiscovery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARDiscoveryUsbDiscovery"


# instance fields
.field private broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

.field private context:Landroid/content/Context;

.field private deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

.field private discoveryMux:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;

.field private final listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery$1;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    return-void
.end method

.method static synthetic access$002(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->started:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->stop()V

    .line 56
    :cond_0
    return-void
.end method

.method public getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->started:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->deviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V
    .locals 0
    .param p1, "broadcaster"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->context:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 50
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->started:Z

    if-nez v1, :cond_0

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->started:Z

    .line 61
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v0

    .line 62
    .local v0, "accessoryMux":Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->setDiscoveryListener(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;)V

    .line 64
    .end local v0    # "accessoryMux":Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 67
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->started:Z

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "ARDiscoveryUsbDiscovery"

    const-string v2, "Stopping USB Discovery"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->started:Z

    .line 70
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->get(Landroid/content/Context;)Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;

    move-result-object v0

    .line 71
    .local v0, "accessoryMux":Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;->setDiscoveryListener(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;)V

    .line 73
    .end local v0    # "accessoryMux":Lcom/parrot/arsdk/ardiscovery/UsbAccessoryMux;
    :cond_0
    return-void
.end method
