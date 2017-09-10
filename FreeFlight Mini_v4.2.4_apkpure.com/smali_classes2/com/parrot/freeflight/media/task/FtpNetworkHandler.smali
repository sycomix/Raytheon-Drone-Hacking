.class public interface abstract Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
.super Ljava/lang/Object;
.source "FtpNetworkHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/task/FtpNetworkHandler$RFCommFtpHandler;,
        Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;,
        Lcom/parrot/freeflight/media/task/FtpNetworkHandler$FtpWifiHandler;
    }
.end annotation


# virtual methods
.method public varargs abstract close([Lcom/parrot/arsdk/arutils/ARUtilsManager;)V
    .param p1    # [Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public varargs abstract init([Lcom/parrot/arsdk/arutils/ARUtilsManager;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .param p1    # [Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
