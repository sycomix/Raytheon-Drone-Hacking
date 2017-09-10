.class public interface abstract Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;
.super Ljava/lang/Object;
.source "FileDeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/model/FileDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileDeleteManagerListener"
.end annotation


# virtual methods
.method public abstract onDeleteListLoaded(Lcom/parrot/freeflight/media/model/FileOperationList;)V
    .param p1    # Lcom/parrot/freeflight/media/model/FileOperationList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onResult(Lcom/parrot/freeflight/media/model/MediaStoreError;)V
    .param p1    # Lcom/parrot/freeflight/media/model/MediaStoreError;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
