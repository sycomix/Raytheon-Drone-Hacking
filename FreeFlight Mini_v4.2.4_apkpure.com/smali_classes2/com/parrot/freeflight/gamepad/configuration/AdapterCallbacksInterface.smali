.class public interface abstract Lcom/parrot/freeflight/gamepad/configuration/AdapterCallbacksInterface;
.super Ljava/lang/Object;
.source "AdapterCallbacksInterface.java"


# virtual methods
.method public abstract getCommandToChange()Lcom/parrot/freeflight/gamepad/command/Command;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract remoteControlHasBeenReleased()V
.end method

.method public abstract saveRemoteControl(Lcom/parrot/freeflight/gamepad/GamePad$Input;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
