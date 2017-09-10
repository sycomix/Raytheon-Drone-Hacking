.class Lcom/parrot/freeflight/home/HomeUIController$28;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/DeviceConnector$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;Lcom/parrot/freeflight/UserDrone;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "droneState"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "userDrone"    # Lcom/parrot/freeflight/UserDrone;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, p3}, Lcom/parrot/freeflight/home/HomeUIController;->access$002(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/UserDrone;)Lcom/parrot/freeflight/UserDrone;

    .line 1179
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/home/HomeUIController;->access$102(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_CONNECTION_STATE_ENUM;

    .line 1180
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3600(Lcom/parrot/freeflight/home/HomeUIController;I)V

    .line 1181
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1100(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1182
    return-void
.end method
