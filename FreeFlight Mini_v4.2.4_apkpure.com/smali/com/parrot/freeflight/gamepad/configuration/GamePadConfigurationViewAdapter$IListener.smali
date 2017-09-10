.class public interface abstract Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;
.super Ljava/lang/Object;
.source "GamePadConfigurationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IListener"
.end annotation


# virtual methods
.method public abstract onCommandSelected(Lcom/parrot/freeflight/gamepad/command/Command;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/command/Command;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onInputSelected(Lcom/parrot/freeflight/gamepad/GamePad$Input;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
