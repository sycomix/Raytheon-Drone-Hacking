.class public interface abstract Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;
.super Ljava/lang/Object;
.source "AnimationControllerInterface.java"


# virtual methods
.method public abstract hide()V
.end method

.method public abstract hideMenu()V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAnimationControllerListener(Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;)V
    .param p1    # Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract show()V
.end method

.method public abstract spaceChanged(Z)V
.end method

.method public abstract updateView(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .param p1    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
