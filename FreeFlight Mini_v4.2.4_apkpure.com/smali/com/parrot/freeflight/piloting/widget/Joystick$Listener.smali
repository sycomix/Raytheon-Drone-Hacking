.class public interface abstract Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;
.super Ljava/lang/Object;
.source "Joystick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/widget/Joystick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDoubleTap(Lcom/parrot/freeflight/piloting/widget/Joystick;)V
.end method

.method public abstract onPressed(Lcom/parrot/freeflight/piloting/widget/Joystick;Z)V
.end method

.method public abstract onValueChangedInDirection(Lcom/parrot/freeflight/piloting/widget/Joystick;FI)V
.end method

.method public abstract shouldImplementDoubleTap()Z
.end method
