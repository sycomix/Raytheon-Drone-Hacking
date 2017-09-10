.class Lcom/parrot/freeflight/home/connection/DirectPairingActivity$1;
.super Ljava/lang/Object;
.source "DirectPairingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DirectPairingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

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
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$000(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$1;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$002(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 58
    :cond_0
    return-void
.end method
