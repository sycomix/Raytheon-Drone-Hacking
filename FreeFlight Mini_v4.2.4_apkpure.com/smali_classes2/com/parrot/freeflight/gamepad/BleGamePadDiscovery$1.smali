.class Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$1;
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
    .line 46
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$1;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery$1;->this$0:Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;->access$000(Lcom/parrot/freeflight/gamepad/BleGamePadDiscovery;)V

    .line 50
    return-void
.end method
