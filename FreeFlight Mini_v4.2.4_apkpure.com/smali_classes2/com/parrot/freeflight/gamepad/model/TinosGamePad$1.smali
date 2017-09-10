.class Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;
.super Ljava/lang/Object;
.source "TinosGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight3/OnRemoteInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteButtonEvent(II)V
    .locals 2
    .param p1, "remoteCode"    # I
    .param p2, "action"    # I

    .prologue
    .line 49
    new-instance v0, Landroid/view/KeyEvent;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$000(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I

    move-result v1

    invoke-direct {v0, p2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 50
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$100(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Landroid/view/KeyEvent;)Z

    .line 51
    return-void
.end method

.method public onRemoteJoystickEvent(IIII)V
    .locals 5
    .param p1, "leftJoystickX"    # I
    .param p2, "leftJoystickY"    # I
    .param p3, "rightJoystickX"    # I
    .param p4, "rightJoystickY"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$200(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v2, p2}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$200(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)F

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v3, p3}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$200(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v4, p4}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$200(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$300(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;FFFF)Z

    .line 56
    return-void
.end method
