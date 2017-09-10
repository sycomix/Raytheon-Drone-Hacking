.class public interface abstract Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;
.super Ljava/lang/Object;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/model/FileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileManagerListener"
.end annotation


# virtual methods
.method public abstract onResult(Lcom/parrot/freeflight/media/model/MediaStoreError;)V
    .param p1    # Lcom/parrot/freeflight/media/model/MediaStoreError;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onTransferListLoaded(Lcom/parrot/freeflight/media/model/FileOperationList;)V
    .param p1    # Lcom/parrot/freeflight/media/model/FileOperationList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
