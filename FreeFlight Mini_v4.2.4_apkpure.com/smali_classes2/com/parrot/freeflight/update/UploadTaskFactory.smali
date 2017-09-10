.class public Lcom/parrot/freeflight/update/UploadTaskFactory;
.super Ljava/lang/Object;
.source "UploadTaskFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/update/task/AvailableUpdate;Lcom/parrot/freeflight/update/task/UploaderTask$Listener;)Lcom/parrot/freeflight/update/task/UploaderTask;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "remoteCtrlModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "update"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    new-instance v0, Lcom/parrot/freeflight/update/task/UploaderTask;

    new-instance v1, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$RFCommFtpHandler;

    .line 19
    invoke-static {p0}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v2

    const/16 v3, 0x33

    invoke-direct {v1, p0, v2, v3}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$RFCommFtpHandler;-><init>(Landroid/content/Context;Lcom/parrot/arsdk/arsal/ARSALBLEManager;I)V

    invoke-direct {v0, p0, v1, p3, p4}, Lcom/parrot/freeflight/update/task/UploaderTask;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;Lcom/parrot/freeflight/update/task/AvailableUpdate;Lcom/parrot/freeflight/update/task/UploaderTask$Listener;)V

    .line 18
    return-object v0
.end method
