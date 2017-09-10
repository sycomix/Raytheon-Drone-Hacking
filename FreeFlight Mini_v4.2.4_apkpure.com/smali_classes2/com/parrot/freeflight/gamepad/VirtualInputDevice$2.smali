.class Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;
.super Ljava/lang/Object;
.source "VirtualInputDevice.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJoystickEvent(FFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->access$200(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/EventSender;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/EventSender;->sendJoystick(FFFF)Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->access$200(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/EventSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/EventSender;->sendKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$2;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->access$200(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/EventSender;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/EventSender;->sendTrigger(FF)Z

    move-result v0

    return v0
.end method
