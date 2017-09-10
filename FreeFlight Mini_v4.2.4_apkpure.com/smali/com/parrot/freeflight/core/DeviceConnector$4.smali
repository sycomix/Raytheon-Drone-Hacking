.class Lcom/parrot/freeflight/core/DeviceConnector$4;
.super Ljava/lang/Object;
.source "DeviceConnector.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/DeviceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/DeviceConnector;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/DeviceConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/DeviceConnector;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/parrot/freeflight/core/DeviceConnector$4;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 1
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 483
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector$4;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/DeviceConnector;->access$602(Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 484
    iget-object v0, p0, Lcom/parrot/freeflight/core/DeviceConnector$4;->this$0:Lcom/parrot/freeflight/core/DeviceConnector;

    invoke-static {v0}, Lcom/parrot/freeflight/core/DeviceConnector;->access$700(Lcom/parrot/freeflight/core/DeviceConnector;)V

    .line 485
    return-void
.end method
