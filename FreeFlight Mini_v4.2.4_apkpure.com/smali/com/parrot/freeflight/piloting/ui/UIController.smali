.class public interface abstract Lcom/parrot/freeflight/piloting/ui/UIController;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/UIController$OnOrientationChangeNeededListener;,
        Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract lowMemory()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
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

.method public abstract onSettingsPressed()V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
