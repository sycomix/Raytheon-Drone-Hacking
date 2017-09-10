.class public interface abstract Lcom/parrot/freeflight/media/model/IMediaStore;
.super Ljava/lang/Object;
.source "IMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;
    }
.end annotation


# virtual methods
.method public abstract cancelMediaDelete()V
.end method

.method public abstract cancelMediaLoading()V
.end method

.method public abstract cancelMediaTransfer()V
.end method

.method public abstract deleteMedias([Lcom/parrot/freeflight/media/model/FileItem;Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;)V
    .param p1    # [Lcom/parrot/freeflight/media/model/FileItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/parrot/freeflight/media/model/FileItem;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDeleteErrorProvider()Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDeleteListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/media/model/ItemList$IProvider",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaListErrorProvider()Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMediaListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/media/model/ItemList$IProvider",
            "<[",
            "Lcom/parrot/freeflight/media/model/MediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransferErrorProvider()Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTransferListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/media/model/ItemList$IProvider",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadMedias(Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;)V
    .param p1    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<[",
            "Lcom/parrot/freeflight/media/model/MediaItem;",
            ">;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadSizeInfo(Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;)V
    .param p1    # Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract transferMedias([Lcom/parrot/freeflight/media/model/FileItem;Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;)V
    .param p1    # [Lcom/parrot/freeflight/media/model/FileItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/parrot/freeflight/media/model/FileItem;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterSizeInfoListener(Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;)V
    .param p1    # Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
