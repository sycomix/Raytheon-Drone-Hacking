.class public interface abstract Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;
.super Ljava/lang/Object;
.source "IAccessoryController.java"


# virtual methods
.method public abstract applyTheme()V
.end method

.method public abstract close()V
.end method

.method public abstract getCommandChoice()I
.end method

.method public abstract isOpened()Z
.end method

.method public abstract open()V
.end method

.method public abstract refreshVisibility()V
.end method

.method public abstract setGamePadMode(Z)V
.end method

.method public abstract shouldChangeVisibility(Landroid/view/View;Z)Z
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract update()V
.end method
