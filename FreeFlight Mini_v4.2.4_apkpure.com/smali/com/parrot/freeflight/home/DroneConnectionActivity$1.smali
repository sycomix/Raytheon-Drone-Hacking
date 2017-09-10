.class Lcom/parrot/freeflight/home/DroneConnectionActivity$1;
.super Ljava/lang/Object;
.source "DroneConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/DroneConnectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/DroneConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/DroneConnectionActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$1;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$1;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->access$000(Lcom/parrot/freeflight/home/DroneConnectionActivity;)Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->disconnectDrone()V

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$1;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$1;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$1;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    const-class v3, Lcom/parrot/freeflight/home/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectToDroneCancelled()V

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$1;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->finish()V

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity$1;->this$0:Lcom/parrot/freeflight/home/DroneConnectionActivity;

    const v1, 0x7f050015

    const v2, 0x7f050014

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->overridePendingTransition(II)V

    .line 91
    return-void
.end method
