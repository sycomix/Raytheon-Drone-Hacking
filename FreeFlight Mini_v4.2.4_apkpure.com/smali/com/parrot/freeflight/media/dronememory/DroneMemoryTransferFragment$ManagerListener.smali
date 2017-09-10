.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;
.super Ljava/lang/Object;
.source "DroneMemoryTransferFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerListener"
.end annotation


# instance fields
.field private final fragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 334
    return-void
.end method


# virtual methods
.method public onResult(Lcom/parrot/freeflight/media/model/MediaStoreError;)V
    .locals 2
    .param p1, "result"    # Lcom/parrot/freeflight/media/model/MediaStoreError;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 346
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .line 347
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    if-eqz v0, :cond_0

    .line 348
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaStoreError;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$900(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$1000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    goto :goto_0
.end method

.method public onTransferListLoaded(Lcom/parrot/freeflight/media/model/FileOperationList;)V
    .locals 2
    .param p1, "transferList"    # Lcom/parrot/freeflight/media/model/FileOperationList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 338
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .line 339
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    if-eqz v0, :cond_0

    .line 340
    invoke-static {v0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$800(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Lcom/parrot/freeflight/media/model/FileOperationList;)V

    .line 342
    :cond_0
    return-void
.end method
