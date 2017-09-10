.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;
.super Ljava/lang/Object;
.source "DroneMemoryDeleteFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerListener"
.end annotation


# instance fields
.field private final fragmentRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 336
    return-void
.end method


# virtual methods
.method public onDeleteListLoaded(Lcom/parrot/freeflight/media/model/FileOperationList;)V
    .locals 2
    .param p1, "deleteList"    # Lcom/parrot/freeflight/media/model/FileOperationList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 340
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .line 341
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
    if-eqz v0, :cond_0

    .line 342
    invoke-static {v0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$900(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;Lcom/parrot/freeflight/media/model/FileOperationList;)V

    .line 344
    :cond_0
    return-void
.end method

.method public onResult(Lcom/parrot/freeflight/media/model/MediaStoreError;)V
    .locals 2
    .param p1, "result"    # Lcom/parrot/freeflight/media/model/MediaStoreError;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 348
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .line 349
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
    if-eqz v0, :cond_0

    .line 350
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaStoreError;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$1000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$1100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    goto :goto_0
.end method
