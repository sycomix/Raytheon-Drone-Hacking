.class public Lcom/parrot/freeflight/home/DroneListView;
.super Lcom/parrot/freeflight/home/DeviceListView;
.source "DroneListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/home/DeviceListView",
        "<",
        "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
        "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
        "<",
        "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/home/DroneListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/home/DroneListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/home/DeviceListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected initAdapter()Lcom/parrot/freeflight/home/DeviceListAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/home/DeviceListAdapter",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            "Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/parrot/freeflight/home/DroneListAdapter;

    invoke-direct {v0}, Lcom/parrot/freeflight/home/DroneListAdapter;-><init>()V

    return-object v0
.end method
