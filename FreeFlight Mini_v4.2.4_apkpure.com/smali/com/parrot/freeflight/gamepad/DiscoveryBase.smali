.class public abstract Lcom/parrot/freeflight/gamepad/DiscoveryBase;
.super Ljava/lang/Object;
.source "DiscoveryBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addListListener(Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;->onListChange(Ljava/util/List;)V

    .line 19
    return-void
.end method

.method abstract getList()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation
.end method

.method protected notifyListChange()V
    .locals 3

    .prologue
    .line 26
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    .line 27
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;->onListChange(Ljava/util/List;)V

    goto :goto_0

    .line 29
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;
    :cond_0
    return-void
.end method

.method public removeListListener(Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method abstract startScan()V
.end method

.method abstract stopScan()V
.end method
