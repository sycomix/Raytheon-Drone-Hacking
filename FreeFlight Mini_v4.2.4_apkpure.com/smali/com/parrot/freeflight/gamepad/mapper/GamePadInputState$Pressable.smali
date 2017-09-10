.class public interface abstract Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Pressable;
.super Ljava/lang/Object;
.source "GamePadInputState.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Consumable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Pressable"
.end annotation


# virtual methods
.method public abstract getControlType()I
.end method

.method public abstract getLastAction()I
.end method

.method public abstract isPressed()Z
.end method

.method public abstract setLastAction(I)V
.end method
