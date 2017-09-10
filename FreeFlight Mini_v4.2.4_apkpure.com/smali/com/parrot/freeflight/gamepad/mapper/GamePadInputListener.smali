.class public interface abstract Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;
.super Ljava/lang/Object;
.source "GamePadInputListener.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/VirtualInputDevice$JoystickEventListener;
.implements Lcom/parrot/freeflight/gamepad/VirtualInputDevice$TriggerEventListener;


# virtual methods
.method public abstract onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
