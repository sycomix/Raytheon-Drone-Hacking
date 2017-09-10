.class public Lcom/parrot/freeflight/gamepad/events/KeyEventProcessor;
.super Ljava/lang/Object;
.source "KeyEventProcessor.java"


# instance fields
.field private final mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;)V
    .locals 0
    .param p1, "adapterCallbacksInterface"    # Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/events/KeyEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    .line 15
    return-void
.end method


# virtual methods
.method public processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 18
    const/4 v1, 0x0

    .line 20
    .local v1, "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/events/KeyEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v3}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 21
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/events/KeyEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v3}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/gamepad/GamePad;->getButtonName(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "buttonName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 23
    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .end local v1    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    const/4 v3, 0x7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 26
    .restart local v1    # "gamePadInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_0
    if-eqz v1, :cond_1

    .line 27
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/events/KeyEventProcessor;->mAdapterCallbacksInterface:Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;

    invoke-interface {v2, v1}, Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;->saveRemoteControl(Lcom/parrot/freeflight/gamepad/GamePad$Input;)V

    .line 28
    const/4 v2, 0x1

    .line 32
    .end local v0    # "buttonName":Ljava/lang/String;
    :cond_1
    return v2
.end method
