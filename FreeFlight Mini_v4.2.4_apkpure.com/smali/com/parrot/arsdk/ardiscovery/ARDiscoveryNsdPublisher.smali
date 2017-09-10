.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;
.super Ljava/lang/Object;
.source "ARDiscoveryNsdPublisher.java"

# interfaces
.implements Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiPublisher;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

.field private context:Landroid/content/Context;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

.field private mServiceName:Ljava/lang/String;

.field private opened:Z

.field private published:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->opened:Z

    .line 70
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->initializeRegistrationListener()V

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->mServiceName:Ljava/lang/String;

    return-object p1
.end method

.method private initializeRegistrationListener()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher$1;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 193
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->context:Landroid/content/Context;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V
    .locals 2
    .param p1, "broadcaster"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 76
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->context:Landroid/content/Context;

    .line 77
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->context:Landroid/content/Context;

    const-string v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public publishService(ILjava/lang/String;I)Z
    .locals 7
    .param p1, "product_id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v6, 0x1

    .line 128
    iget-boolean v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->opened:Z

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->unpublishService()V

    .line 132
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 134
    .local v0, "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {v0, p2}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p3}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 136
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->ARDISCOVERY_SERVICE_NET_DEVICE_FORMAT:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->mNsdManager:Landroid/net/nsd/NsdManager;

    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-virtual {v2, v0, v6, v3}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 141
    iput-boolean v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->published:Z

    .line 144
    .end local v0    # "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->published:Z

    return v2
.end method

.method public publishService(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 116
    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->publishService(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public unpublishService()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->published:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->mNsdManager:Landroid/net/nsd/NsdManager;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->mServiceName:Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->published:Z

    .line 158
    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method
