.class public interface abstract Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;
.super Ljava/lang/Object;
.source "AcademyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GoogleListener"
.end annotation


# virtual methods
.method public abstract authenticationNeeded(ILandroid/content/Intent;I)V
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract uploadFailed(II)V
.end method

.method public abstract uploadProgress(IF)V
.end method

.method public abstract uploadStarted(I)V
.end method

.method public abstract uploadSucceeded(ILcom/parrot/freeflight/core/academy/MediaInfos;)V
    .param p2    # Lcom/parrot/freeflight/core/academy/MediaInfos;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
