.class public Lcom/parrot/freeflight/util/observer/SuspendableObservable;
.super Ljava/lang/Object;
.source "SuspendableObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mNotifyPending:Z

.field private mNotifySuspended:Z

.field private final mObservers:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/parrot/freeflight/util/observer/SuspendableObservable;, "Lcom/parrot/freeflight/util/observer/SuspendableObservable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    .line 28
    return-void
.end method


# virtual methods
.method public clearObservers()V
    .locals 2

    .prologue
    .line 67
    .local p0, "this":Lcom/parrot/freeflight/util/observer/SuspendableObservable;, "Lcom/parrot/freeflight/util/observer/SuspendableObservable<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpObservers(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "prefix"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/parrot/freeflight/util/observer/SuspendableObservable;, "Lcom/parrot/freeflight/util/observer/SuspendableObservable<TT;>;"
    .local p3, "args":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "o"

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Observers ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/util/observer/IObserver;

    .line 141
    .local v0, "observer":Lcom/parrot/freeflight/util/observer/IObserver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v0    # "observer":Lcom/parrot/freeflight/util/observer/IObserver;
    :cond_0
    return-void
.end method

.method public hasObservers()Z
    .locals 2

    .prologue
    .line 58
    .local p0, "this":Lcom/parrot/freeflight/util/observer/SuspendableObservable;, "Lcom/parrot/freeflight/util/observer/SuspendableObservable<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyChange()V
    .locals 6

    .prologue
    .line 76
    .local p0, "this":Lcom/parrot/freeflight/util/observer/SuspendableObservable;, "Lcom/parrot/freeflight/util/observer/SuspendableObservable<TT;>;"
    const/4 v2, 0x0

    .line 77
    .local v2, "observers":[Lcom/parrot/freeflight/util/observer/IObserver;
    iget-object v4, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    monitor-enter v4

    .line 78
    :try_start_0
    iget-boolean v3, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mNotifySuspended:Z

    if-eqz v3, :cond_0

    .line 79
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mNotifyPending:Z

    .line 83
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-eqz v2, :cond_1

    .line 85
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 86
    .local v1, "observer":Lcom/parrot/freeflight/util/observer/IObserver;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/parrot/freeflight/util/observer/IObserver;->onChange(Ljava/lang/Object;)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    .end local v1    # "observer":Lcom/parrot/freeflight/util/observer/IObserver;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    iget-object v5, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v3, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Lcom/parrot/freeflight/util/observer/IObserver;

    move-object v2, v0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 89
    :cond_1
    return-void
.end method

.method public notifyChange(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/parrot/freeflight/util/observer/SuspendableObservable;, "Lcom/parrot/freeflight/util/observer/SuspendableObservable<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 96
    .local v2, "observers":[Lcom/parrot/freeflight/util/observer/IObserver;
    iget-object v4, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    monitor-enter v4

    .line 97
    :try_start_0
    iget-boolean v3, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mNotifySuspended:Z

    if-eqz v3, :cond_0

    .line 98
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mNotifyPending:Z

    .line 102
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v2, :cond_1

    .line 104
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 105
    .local v1, "observer":Lcom/parrot/freeflight/util/observer/IObserver;
    invoke-interface {v1, p1}, Lcom/parrot/freeflight/util/observer/IObserver;->onChange(Ljava/lang/Object;)V

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    .end local v1    # "observer":Lcom/parrot/freeflight/util/observer/IObserver;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    iget-object v5, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Lcom/parrot/freeflight/util/observer/IObserver;

    invoke-interface {v3, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Lcom/parrot/freeflight/util/observer/IObserver;

    move-object v2, v0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 108
    :cond_1
    return-void
.end method

.method public registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/parrot/freeflight/util/observer/SuspendableObservable;, "Lcom/parrot/freeflight/util/observer/SuspendableObservable<TT;>;"
    .local p1, "observer":Lcom/parrot/freeflight/util/observer/IObserver;, "Lcom/parrot/freeflight/util/observer/IObserver<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeNotification()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/util/observer/SuspendableObservable;, "Lcom/parrot/freeflight/util/observer/SuspendableObservable<TT;>;"
    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mNotifySuspended:Z

    .line 124
    iget-boolean v0, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mNotifyPending:Z

    if-eqz v0, :cond_0

    .line 125
    iput-boolean v1, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mNotifyPending:Z

    .line 126
    invoke-virtual {p0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange()V

    .line 128
    :cond_0
    return-void
.end method

.method public suspendNotification()V
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lcom/parrot/freeflight/util/observer/SuspendableObservable;, "Lcom/parrot/freeflight/util/observer/SuspendableObservable<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mNotifySuspended:Z

    .line 116
    return-void
.end method

.method public unregisterObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/parrot/freeflight/util/observer/SuspendableObservable;, "Lcom/parrot/freeflight/util/observer/SuspendableObservable<TT;>;"
    .local p1, "observer":Lcom/parrot/freeflight/util/observer/IObserver;, "Lcom/parrot/freeflight/util/observer/IObserver<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->mObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
