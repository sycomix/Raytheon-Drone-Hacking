.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;
.super Ljava/lang/Object;
.source "DroneMemoryListAdapter.java"

# interfaces
.implements Lcom/parrot/freeflight/util/observer/IObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaItemObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/util/observer/IObserver",
        "<",
        "Lcom/parrot/freeflight/media/model/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapterRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mCell:Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaItem:Lcom/parrot/freeflight/media/model/MediaItem;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;Lcom/parrot/freeflight/media/model/MediaItem;Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)V
    .locals 1
    .param p1, "mediaMenuCell"    # Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adapter"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->mCell:Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;

    .line 323
    iput-object p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->mMediaItem:Lcom/parrot/freeflight/media/model/MediaItem;

    .line 324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->mAdapterRef:Ljava/lang/ref/WeakReference;

    .line 325
    invoke-virtual {p2, p0}, Lcom/parrot/freeflight/media/model/MediaItem;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 326
    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;)Lcom/parrot/freeflight/media/model/MediaItem;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->mMediaItem:Lcom/parrot/freeflight/media/model/MediaItem;

    return-object v0
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/media/model/MediaItem;)V
    .locals 4
    .param p1, "object"    # Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 330
    const-string v1, "StorageAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got thumbnail for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->mAdapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .line 332
    .local v0, "adapter":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->mMediaItem:Lcom/parrot/freeflight/media/model/MediaItem;

    if-ne v1, p1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->mMediaItem:Lcom/parrot/freeflight/media/model/MediaItem;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->mCell:Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;Lcom/parrot/freeflight/media/model/MediaItem;Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;)V

    .line 335
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
    .line 310
    check-cast p1, Lcom/parrot/freeflight/media/model/MediaItem;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->onChange(Lcom/parrot/freeflight/media/model/MediaItem;)V

    return-void
.end method
