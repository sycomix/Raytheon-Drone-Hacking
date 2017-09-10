.class Lcom/parrot/freeflight/gamepad/GamePadManager$3;
.super Ljava/lang/Object;
.source "GamePadManager.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedChange(Lcom/parrot/freeflight/gamepad/GamePad;Z)V
    .locals 1
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selected"    # Z

    .prologue
    .line 171
    if-nez p2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$400(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->removeSelectedListener(Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;)V

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$500(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 174
    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$500(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->unselectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 178
    :cond_0
    return-void
.end method
