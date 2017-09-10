.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;
.super Ljava/lang/Object;
.source "DroneMemoryController.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaObjectDeleted(Lcom/parrot/arsdk/armedia/ARMediaObject;)V
    .locals 2
    .param p1, "mediaObject"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 294
    if-eqz p1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 296
    .local v0, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v0, :cond_0

    .line 297
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/media/model/FileOperation;->setProgress(F)V

    .line 298
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/media/model/FileOperation;->setSucceeded(Z)V

    .line 299
    invoke-virtual {v0, v0}, Lcom/parrot/freeflight/media/model/FileOperation;->notifyChange(Ljava/lang/Object;)V

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    .end local v0    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    :cond_1
    return-void
.end method

.method public onRequestCompleted(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V
    .locals 4
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canceled"    # Z

    .prologue
    .line 307
    const-string v1, "StorageController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " canceled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tasks "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$2000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$2102(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 309
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$2000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$2000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 312
    :cond_0
    if-nez p2, :cond_1

    .line 313
    new-instance v0, Lcom/parrot/freeflight/media/model/MediaStoreError;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$2200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/parrot/freeflight/media/model/MediaStoreError;-><init>(Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 314
    .local v0, "error":Lcom/parrot/freeflight/media/model/MediaStoreError;
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    .line 316
    .end local v0    # "error":Lcom/parrot/freeflight/media/model/MediaStoreError;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    .line 317
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$1500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    .line 318
    return-void
.end method
