.class Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;
.super Ljava/lang/Object;
.source "PresetJoystickSensibility.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 2
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->access$000(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->access$000(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-ne v0, p1, :cond_1

    :cond_0
    instance-of v0, p1, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;

    if-nez v0, :cond_2

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->onBackPressed()V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->access$002(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->access$100(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->onBackPressed()V

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->access$000(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->access$000(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->access$200(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->addStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 78
    :cond_4
    return-void
.end method
