.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;
.super Ljava/lang/Object;
.source "DroneMemoryDeleteFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/util/observer/IObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
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
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 366
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
    .line 370
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .line 371
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 372
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$1200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    .line 374
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
    .line 359
    check-cast p1, Lcom/parrot/freeflight/media/model/FileOperation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;->onChange(Lcom/parrot/freeflight/media/model/FileOperation;)V

    return-void
.end method
