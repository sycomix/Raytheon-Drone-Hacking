.class Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DiscoveredDroneActivity.java"


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
    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 70
    .local v1, "state":I
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$000(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$002(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;I)I

    .line 72
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$100(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V

    .line 74
    :cond_0
    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$200(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->update(Ljava/util/List;)Z

    .line 76
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$300(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$300(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    const v4, 0x7f050013

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    .end local v1    # "state":I
    :cond_1
    return-void
.end method
