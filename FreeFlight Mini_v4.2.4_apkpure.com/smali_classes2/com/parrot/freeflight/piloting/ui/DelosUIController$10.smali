.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$10;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/DelosUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

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
    const/4 v1, 0x4

    .line 556
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .line 557
    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2100(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2102(Lcom/parrot/freeflight/piloting/ui/DelosUIController;I)I

    .line 562
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1500(Lcom/parrot/freeflight/piloting/ui/DelosUIController;I)V

    .line 563
    return-void
.end method
