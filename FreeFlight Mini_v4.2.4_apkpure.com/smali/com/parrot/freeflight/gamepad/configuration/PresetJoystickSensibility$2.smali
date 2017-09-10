.class Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$2;
.super Ljava/lang/Object;
.source "PresetJoystickSensibility.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$StateListener;


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
    .line 81
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 2
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->access$300(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->onBackPressed()V

    goto :goto_0
.end method
