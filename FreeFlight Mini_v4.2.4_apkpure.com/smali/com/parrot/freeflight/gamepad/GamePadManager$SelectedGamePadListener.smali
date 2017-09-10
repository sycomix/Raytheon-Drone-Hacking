.class public interface abstract Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
.super Ljava/lang/Object;
.source "GamePadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelectedGamePadListener"
.end annotation


# virtual methods
.method public abstract onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
