.class public interface abstract Lcom/parrot/freeflight/gamepad/GamePad$EventListener;
.super Ljava/lang/Object;
.source "GamePad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onJoystickEvent(FFFF)Z
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;)Z
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTriggerEvent(FF)Z
.end method
