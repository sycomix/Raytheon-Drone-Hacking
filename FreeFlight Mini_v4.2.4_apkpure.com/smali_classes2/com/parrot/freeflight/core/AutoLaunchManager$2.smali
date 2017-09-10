.class Lcom/parrot/freeflight/core/AutoLaunchManager$2;
.super Ljava/lang/Object;
.source "AutoLaunchManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/DeviceConnector$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$2;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

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
    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$2;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$100(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v0

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$2;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$200(Lcom/parrot/freeflight/core/AutoLaunchManager;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$2;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0, p3}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$102(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/UserDrone;)Lcom/parrot/freeflight/UserDrone;

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$2;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$202(Lcom/parrot/freeflight/core/AutoLaunchManager;I)I

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$2;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkProductsFirmware()V

    .line 56
    :cond_1
    return-void
.end method
