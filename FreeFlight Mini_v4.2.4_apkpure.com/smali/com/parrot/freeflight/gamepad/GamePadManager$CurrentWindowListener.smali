.class public interface abstract Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
.super Ljava/lang/Object;
.source "GamePadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "CurrentWindowListener"
.end annotation


# virtual methods
.method public abstract onCurrentActivityChange(Landroid/app/Activity;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onCurrentDialogChange(Landroid/app/Dialog;)V
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
