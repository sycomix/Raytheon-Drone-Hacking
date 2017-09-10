.class Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DiscoveredDroneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DroneListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFoundDrones:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V
    .locals 1

    .prologue
    .line 285
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->mFoundDrones:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;
    .param p2, "x1"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;-><init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->mFoundDrones:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->mFoundDrones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 285
    check-cast p1, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->onBindViewHolder(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;
    .param p2, "position"    # I

    .prologue
    .line 311
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->mFoundDrones:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 315
    .local v0, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;->update(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040073

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 293
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;-><init>(Landroid/view/View;)V

    .line 294
    .local v0, "holder":Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;
    iget-object v2, v0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter$1;-><init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-object v0
.end method

.method public update(Ljava/util/List;)Z
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    const/4 v2, 0x0

    .line 326
    .local v2, "devicesAvailable":Z
    iget-object v3, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->mFoundDrones:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 327
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 328
    .local v1, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    .line 329
    .local v0, "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;->getConnectionState()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    move-result-object v4

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;->ARDISCOVERY_CONNECTION_STATE_AVAILABLE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    if-ne v4, v5, :cond_0

    .line 330
    iget-object v4, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->mFoundDrones:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    const/4 v2, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "device":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;
    .end local v1    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->notifyDataSetChanged()V

    .line 335
    return v2
.end method
