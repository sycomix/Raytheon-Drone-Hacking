.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;
.super Ljava/lang/Object;
.source "DroneMemoryActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageListener"
.end annotation


# instance fields
.field private final mediaStorageRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V
    .locals 1
    .param p1, "droneMemoryActivity"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;->mediaStorageRef:Ljava/lang/ref/WeakReference;

    .line 650
    return-void
.end method


# virtual methods
.method public onError(Lcom/parrot/freeflight/media/model/MediaStoreError;)V
    .locals 4
    .param p1, "error"    # Lcom/parrot/freeflight/media/model/MediaStoreError;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 670
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;->mediaStorageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .line 671
    .local v0, "droneMemoryActivity":Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
    if-eqz v0, :cond_0

    .line 672
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$1000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    .line 673
    const-string v1, "Media"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while retrieving medias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$1100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    .line 676
    :cond_0
    return-void
.end method

.method public onMediaListLoaded(Lcom/parrot/freeflight/media/model/MediaItemList;)V
    .locals 2
    .param p1, "mediaItemList"    # Lcom/parrot/freeflight/media/model/MediaItemList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 662
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;->mediaStorageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .line 663
    .local v0, "droneMemoryActivity":Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
    if-eqz v0, :cond_0

    .line 664
    invoke-static {v0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$900(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;Lcom/parrot/freeflight/media/model/MediaItemList;)V

    .line 666
    :cond_0
    return-void
.end method

.method public onMediaNamesLoaded()V
    .locals 2

    .prologue
    .line 654
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;->mediaStorageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .line 655
    .local v0, "droneMemoryActivity":Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
    if-eqz v0, :cond_0

    .line 656
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$800(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    .line 658
    :cond_0
    return-void
.end method

.method public onSizeInfoChanged(II)V
    .locals 2
    .param p1, "sizeInMBytes"    # I
    .param p2, "usedSizeInMBytes"    # I

    .prologue
    .line 680
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;->mediaStorageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .line 681
    .local v0, "droneMemoryActivity":Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
    if-eqz v0, :cond_0

    .line 682
    invoke-static {v0, p1, p2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$1200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;II)V

    .line 684
    :cond_0
    return-void
.end method
