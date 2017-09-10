.class Lcom/google/common/util/concurrent/Futures$ListFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final allMustSucceed:Z

.field futures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)V
    .locals 2
    .param p2, "allMustSucceed"    # Z
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1117
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ListFuture;, "Lcom/google/common/util/concurrent/Futures$ListFuture<TV;>;"
    .local p1, "futures":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 1118
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1119
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1120
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    .line 1121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1123
    invoke-direct {p0, p3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->init(Ljava/util/concurrent/Executor;)V

    .line 1124
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/Futures$ListFuture;ILjava/util/concurrent/Future;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$ListFuture;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/concurrent/Future;

    .prologue
    .line 1100
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setOneValue(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private init(Ljava/util/concurrent/Executor;)V
    .locals 6
    .param p1, "listenerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1128
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ListFuture;, "Lcom/google/common/util/concurrent/Futures$ListFuture<TV;>;"
    new-instance v4, Lcom/google/common/util/concurrent/Futures$ListFuture$1;

    invoke-direct {v4, p0}, Lcom/google/common/util/concurrent/Futures$ListFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$ListFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/common/util/concurrent/Futures$ListFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1143
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->futures:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1144
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    .line 1171
    :cond_0
    return-void

    .line 1149
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->futures:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1150
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1160
    :cond_2
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1161
    .local v3, "localFutures":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1162
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1163
    .local v2, "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    move v1, v0

    .line 1164
    .local v1, "index":I
    new-instance v4, Lcom/google/common/util/concurrent/Futures$ListFuture$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/common/util/concurrent/Futures$ListFuture$2;-><init>(Lcom/google/common/util/concurrent/Futures$ListFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v2, v4, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setOneValue(ILjava/util/concurrent/Future;)V
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future",
            "<+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ListFuture;, "Lcom/google/common/util/concurrent/Futures$ListFuture<TV;>;"
    .local p2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TV;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1177
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1178
    .local v1, "localValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v1, :cond_2

    .line 1182
    :cond_0
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    const-string v4, "Future was done before all dependencies completed"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1224
    :cond_1
    :goto_0
    return-void

    .line 1188
    :cond_2
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    const-string v6, "Tried to set value from future which is not done"

    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1190
    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, p1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1214
    .local v2, "newRemaining":I
    if-ltz v2, :cond_3

    :goto_1
    const-string v4, "Less than 0 remaining futures"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1215
    if-nez v2, :cond_1

    .line 1216
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1217
    if-eqz v1, :cond_4

    .line 1218
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v3, v4

    .line 1214
    goto :goto_1

    .line 1220
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 1191
    .end local v2    # "newRemaining":I
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    :try_start_1
    iget-boolean v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    if-eqz v5, :cond_5

    .line 1197
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$ListFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1213
    :cond_5
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1214
    .restart local v2    # "newRemaining":I
    if-ltz v2, :cond_6

    :goto_2
    const-string v4, "Less than 0 remaining futures"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1215
    if-nez v2, :cond_1

    .line 1216
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1217
    if-eqz v1, :cond_7

    .line 1218
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move v3, v4

    .line 1214
    goto :goto_2

    .line 1220
    :cond_7
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 1199
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    .end local v2    # "newRemaining":I
    :catch_1
    move-exception v0

    .line 1200
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    iget-boolean v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    if-eqz v5, :cond_8

    .line 1203
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1213
    :cond_8
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1214
    .restart local v2    # "newRemaining":I
    if-ltz v2, :cond_9

    :goto_3
    const-string v4, "Less than 0 remaining futures"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1215
    if-nez v2, :cond_1

    .line 1216
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1217
    if-eqz v1, :cond_a

    .line 1218
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    move v3, v4

    .line 1214
    goto :goto_3

    .line 1220
    :cond_a
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1205
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "newRemaining":I
    :catch_2
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    iget-boolean v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->allMustSucceed:Z

    if-eqz v5, :cond_b

    .line 1207
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1213
    :cond_b
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1214
    .restart local v2    # "newRemaining":I
    if-ltz v2, :cond_c

    :goto_4
    const-string v4, "Less than 0 remaining futures"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1215
    if-nez v2, :cond_1

    .line 1216
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1217
    if-eqz v1, :cond_d

    .line 1218
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    move v3, v4

    .line 1214
    goto :goto_4

    .line 1220
    :cond_d
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1209
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "newRemaining":I
    :catch_3
    move-exception v0

    .line 1211
    .local v0, "e":Ljava/lang/Error;
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1213
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1214
    .restart local v2    # "newRemaining":I
    if-ltz v2, :cond_e

    :goto_5
    const-string v4, "Less than 0 remaining futures"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1215
    if-nez v2, :cond_1

    .line 1216
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1217
    if-eqz v1, :cond_f

    .line 1218
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    move v3, v4

    .line 1214
    goto :goto_5

    .line 1220
    :cond_f
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1213
    .end local v0    # "e":Ljava/lang/Error;
    .end local v2    # "newRemaining":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1214
    .restart local v2    # "newRemaining":I
    if-ltz v2, :cond_11

    :goto_6
    const-string v4, "Less than 0 remaining futures"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1215
    if-nez v2, :cond_10

    .line 1216
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->values:Ljava/util/List;

    .line 1217
    if-eqz v1, :cond_12

    .line 1218
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->set(Ljava/lang/Object;)Z

    .line 1223
    :cond_10
    :goto_7
    throw v5

    :cond_11
    move v3, v4

    .line 1214
    goto :goto_6

    .line 1220
    :cond_12
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_7
.end method
