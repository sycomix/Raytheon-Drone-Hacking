.class public interface abstract Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;
.super Ljava/lang/Object;
.source "MassStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/model/MassStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MassStorageListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/parrot/freeflight/media/model/MediaStoreError;)V
    .param p1    # Lcom/parrot/freeflight/media/model/MediaStoreError;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onMediaListLoaded(Lcom/parrot/freeflight/media/model/MediaItemList;)V
    .param p1    # Lcom/parrot/freeflight/media/model/MediaItemList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onMediaNamesLoaded()V
.end method

.method public abstract onSizeInfoChanged(II)V
.end method
