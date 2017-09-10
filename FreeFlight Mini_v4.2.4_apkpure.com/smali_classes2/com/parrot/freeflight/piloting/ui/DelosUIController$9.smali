.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


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
    .line 516
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 5
    .param p1, "selectedGamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 519
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$900(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$802(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 527
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 528
    const-string v1, "FFMini.Pilot.ui"

    const-string v2, "game pad found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    new-instance v2, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1100(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/view/Window;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1002(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Landroid/view/inputmethod/BaseInputConnection;)Landroid/view/inputmethod/BaseInputConnection;

    .line 532
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/view/inputmethod/BaseInputConnection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Landroid/view/inputmethod/BaseInputConnection;)V

    .line 533
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Landroid/view/inputmethod/BaseInputConnection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1300(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Landroid/view/inputmethod/BaseInputConnection;)V

    .line 535
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1400(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    .line 537
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getBatteryLevel()I

    move-result v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1500(Lcom/parrot/freeflight/piloting/ui/DelosUIController;I)V

    .line 539
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$900(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePad;->addStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 548
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Z)V

    .line 549
    return-void

    .line 541
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    .line 542
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1700(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1700(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/Mapper;->clear()V

    .line 543
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1802(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 544
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1902(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .line 545
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$9;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1702(Lcom/parrot/freeflight/piloting/ui/DelosUIController;Lcom/parrot/freeflight/gamepad/mapper/Mapper;)Lcom/parrot/freeflight/gamepad/mapper/Mapper;

    goto :goto_0

    .line 548
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
