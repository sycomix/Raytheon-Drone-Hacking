.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$6;
.super Ljava/lang/Object;
.source "DroneMemoryController.java"

# interfaces
.implements Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;


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
    .line 114
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$6;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unregisterErrorObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "observer":Lcom/parrot/freeflight/util/observer/IObserver;, "Lcom/parrot/freeflight/util/observer/IObserver<Lcom/parrot/freeflight/media/model/MediaStoreError;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$6;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->unregisterObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 118
    return-void
.end method
