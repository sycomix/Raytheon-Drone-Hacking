.class Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$3;
.super Ljava/lang/Object;
.source "DiscoveredDroneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 107
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    const-class v3, Lcom/parrot/freeflight/home/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->finish()V

    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    const v1, 0x7f050015

    const v2, 0x7f050014

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->overridePendingTransition(II)V

    .line 115
    return-void
.end method
