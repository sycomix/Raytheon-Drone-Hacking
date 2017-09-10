.class Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;
.super Ljava/lang/Object;
.source "DiscoveredDroneActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/List;)V
    .locals 5
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$600(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 248
    .local v1, "foundDevices":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$200(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->update(Ljava/util/List;)Z

    move-result v0

    .line 249
    .local v0, "devicesAvailable":Z
    if-eqz v0, :cond_1

    .line 250
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$300(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 251
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$300(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    :goto_1
    return-void

    .line 247
    .end local v0    # "devicesAvailable":Z
    .end local v1    # "foundDevices":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 253
    .restart local v0    # "devicesAvailable":Z
    .restart local v1    # "foundDevices":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$300(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$300(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    const v4, 0x7f050013

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
