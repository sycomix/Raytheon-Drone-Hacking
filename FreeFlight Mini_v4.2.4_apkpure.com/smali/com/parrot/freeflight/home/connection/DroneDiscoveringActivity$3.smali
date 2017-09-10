.class Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$3;
.super Ljava/lang/Object;
.source "DroneDiscoveringActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/util/PermissionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->onStart()V
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
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(ZLjava/util/Map;)V
    .locals 4
    .param p1, "allPermissionsGranted"    # Z
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->access$100(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->start()V

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    const-class v3, Lcom/parrot/freeflight/home/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$3;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->finish()V

    goto :goto_0
.end method
