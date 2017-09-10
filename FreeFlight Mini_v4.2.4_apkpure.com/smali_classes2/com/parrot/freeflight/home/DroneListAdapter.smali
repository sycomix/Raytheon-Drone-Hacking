.class public Lcom/parrot/freeflight/home/DroneListAdapter;
.super Lcom/parrot/freeflight/home/DeviceListAdapter;
.source "DroneListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/home/DeviceListAdapter",
        "<",
        "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
        "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
        "<",
        "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;-><init>()V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/home/DeviceListAdapter;-><init>(Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected initViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040076

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/home/DroneListAdapter$DroneViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
