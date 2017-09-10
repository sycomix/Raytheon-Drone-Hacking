.class public interface abstract Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;
.super Ljava/lang/Object;
.source "MediaTaskDelegate.java"


# virtual methods
.method public abstract execute(Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .param p1    # Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract postResult(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V
    .param p1    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public varargs abstract postUpdate([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
    .param p1    # [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
