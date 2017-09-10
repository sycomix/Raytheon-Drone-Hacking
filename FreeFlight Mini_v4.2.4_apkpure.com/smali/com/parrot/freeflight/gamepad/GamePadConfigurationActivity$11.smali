.class Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "GamePadConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
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
    .line 439
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 442
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 445
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$200(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$200(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 448
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$502(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;Z)Z

    .line 449
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$700(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$200(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadManager;->forgetGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 450
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$000(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->isOpened()Z

    move-result v2

    if-nez v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$600(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    .line 459
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 453
    .restart local v1    # "state":I
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$700(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->startScan()V

    goto :goto_0
.end method
