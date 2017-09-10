.class public Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;
.super Ljava/lang/Object;
.source "DroneMemoryInitializationInfo.java"


# instance fields
.field private final mCurrentMassStorageIdKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMassStoragePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "skyDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentMassStorageIdKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "massStoragePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 31
    iput-object p2, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 32
    iput-object p3, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mCurrentMassStorageIdKey:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mMassStoragePath:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currentMassStorageIdKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "massStoragePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 25
    iput-object p2, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mCurrentMassStorageIdKey:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mMassStoragePath:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getCurrentMassStorageIdKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mCurrentMassStorageIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method public getMassStoragePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mMassStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSkyDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method
