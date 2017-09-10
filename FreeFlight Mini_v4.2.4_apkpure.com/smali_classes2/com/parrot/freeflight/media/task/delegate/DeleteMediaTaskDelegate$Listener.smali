.class public interface abstract Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;
.super Ljava/lang/Object;
.source "DeleteMediaTaskDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onMediaObjectDeleted(Lcom/parrot/arsdk/armedia/ARMediaObject;)V
    .param p1    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onRequestCompleted(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V
    .param p1    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
