.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;
.super Ljava/lang/Object;
.source "DroneMemoryListAdapter.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterCompletionListener"
.end annotation


# instance fields
.field private final adapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;->adapterRef:Ljava/lang/ref/WeakReference;

    .line 433
    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 437
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterCompletionListener;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .line 438
    .local v0, "adapter":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
    if-eqz v0, :cond_0

    .line 439
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->access$700(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;

    .line 440
    .local v1, "listener":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->access$800(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 441
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->access$802(Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;Z)Z

    .line 442
    if-eqz v1, :cond_0

    .line 443
    invoke-interface {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;->onReady()V

    .line 451
    .end local v1    # "listener":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;
    :cond_0
    :goto_0
    return-void

    .line 446
    .restart local v1    # "listener":Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;
    :cond_1
    if-eqz v1, :cond_0

    .line 447
    invoke-interface {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;->onFilterComplete()V

    goto :goto_0
.end method
