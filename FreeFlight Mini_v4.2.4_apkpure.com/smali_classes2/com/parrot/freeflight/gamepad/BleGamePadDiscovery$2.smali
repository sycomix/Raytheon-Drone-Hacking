.class Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$2;
.super Ljava/lang/Object;
.source "BleGamePadDiscovery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$2;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "BleGamePadDiscovery"

    const-string v1, "run mRestartScanRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$2;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->access$100(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->swapCurrentList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$2;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->notifyListChange()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$2;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->startScan()V

    .line 61
    return-void
.end method
