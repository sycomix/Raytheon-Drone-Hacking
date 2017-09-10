.class public interface abstract Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
.super Ljava/lang/Object;
.source "GamePad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "SelectedListener"
.end annotation


# virtual methods
.method public abstract onSelectedChange(Lcom/parrot/freeflight/gamepad/GamePad;Z)V
    .param p1    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
