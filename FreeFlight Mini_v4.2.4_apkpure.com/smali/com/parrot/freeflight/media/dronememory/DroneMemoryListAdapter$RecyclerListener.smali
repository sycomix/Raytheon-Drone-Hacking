.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$RecyclerListener;
.super Ljava/lang/Object;
.source "DroneMemoryListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecyclerListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$1;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$RecyclerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 396
    instance-of v2, p1, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 397
    check-cast v0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;

    .line 398
    .local v0, "cell":Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;

    .line 399
    .local v1, "observer":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;
    if-eqz v1, :cond_0

    .line 400
    const-string v2, "StorageAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recycling cell for item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->access$600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;)Lcom/parrot/freeflight/media/model/MediaItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;->access$600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;)Lcom/parrot/freeflight/media/model/MediaItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/media/model/MediaItem;->unregisterObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 404
    .end local v0    # "cell":Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;
    .end local v1    # "observer":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$MediaItemObserver;
    :cond_0
    return-void
.end method
