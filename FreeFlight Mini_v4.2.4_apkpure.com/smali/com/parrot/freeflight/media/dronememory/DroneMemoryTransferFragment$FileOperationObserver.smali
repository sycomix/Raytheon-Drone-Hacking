.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;
.super Ljava/lang/Object;
.source "DroneMemoryTransferFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/util/observer/IObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileOperationObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/util/observer/IObserver",
        "<",
        "Lcom/parrot/freeflight/media/model/FileOperation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFragmentRef:Ljava/lang/ref/WeakReference;
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
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 363
    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/media/model/FileOperation;)V
    .locals 2
    .param p1, "object"    # Lcom/parrot/freeflight/media/model/FileOperation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 367
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .line 368
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 369
    invoke-static {v0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$1100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Lcom/parrot/freeflight/media/model/FileOperation;)V

    .line 371
    :cond_0
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 357
    check-cast p1, Lcom/parrot/freeflight/media/model/FileOperation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;->onChange(Lcom/parrot/freeflight/media/model/FileOperation;)V

    return-void
.end method
