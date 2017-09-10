.class Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$4;
.super Ljava/lang/Object;
.source "DiscoveredDroneActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/util/PermissionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->onStart()V
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
    .line 167
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(ZLjava/util/Map;)V
    .locals 1
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
    .line 170
    .local p2, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->access$500(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->startBLEDiscovery()V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->finish()V

    goto :goto_0
.end method
