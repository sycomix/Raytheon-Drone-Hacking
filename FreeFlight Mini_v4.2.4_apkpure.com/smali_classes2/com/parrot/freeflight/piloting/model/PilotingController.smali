.class public interface abstract Lcom/parrot/freeflight/piloting/model/PilotingController;
.super Ljava/lang/Object;
.source "PilotingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/PilotingController$OnModelConfigurationChangeListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getModel()Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
