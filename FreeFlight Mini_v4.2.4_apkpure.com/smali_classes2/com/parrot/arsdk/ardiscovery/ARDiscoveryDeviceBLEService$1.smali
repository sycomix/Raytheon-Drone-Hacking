.class final Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService$1;
.super Ljava/lang/Object;
.source "ARDiscoveryDeviceBLEService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 62
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    invoke-direct {v0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService$1;->createFromParcel(Landroid/os/Parcel;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 68
    new-array v0, p1, [Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService$1;->newArray(I)[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    move-result-object v0

    return-object v0
.end method
