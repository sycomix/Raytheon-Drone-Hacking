.class Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$2;
.super Ljava/lang/Object;
.source "DroneDiscoveringActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$2;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$2;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectToDronePassed()V

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$2;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$2;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    const-class v3, Lcom/parrot/freeflight/home/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$2;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->finish()V

    .line 78
    return-void
.end method
