.class Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter$1;
.super Ljava/lang/Object;
.source "DiscoveredDroneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

.field final synthetic val$holder:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter$1;->this$1:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    iput-object p2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter$1;->val$holder:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter$1;->val$holder:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;->getAdapterPosition()I

    move-result v1

    .line 298
    .local v1, "position":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter$1;->this$1:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->access$700(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 302
    .local v0, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter$1;->this$1:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    iget-object v2, v2, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    iget-object v3, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter$1;->this$1:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    iget-object v3, v3, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->startActivity(Landroid/content/Intent;)V

    .line 303
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter$1;->this$1:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    iget-object v2, v2, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-virtual {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->finish()V

    goto :goto_0
.end method
