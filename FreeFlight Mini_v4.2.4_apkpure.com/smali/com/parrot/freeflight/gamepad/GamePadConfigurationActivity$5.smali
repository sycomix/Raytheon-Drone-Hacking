.class Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;
.super Ljava/lang/Object;
.source "GamePadConfigurationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$700(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$700(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->checkBatteryLevel()V

    .line 148
    :cond_0
    return-void
.end method
