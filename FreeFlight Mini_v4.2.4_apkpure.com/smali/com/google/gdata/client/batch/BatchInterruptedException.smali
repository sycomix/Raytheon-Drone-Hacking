.class public Lcom/google/gdata/client/batch/BatchInterruptedException;
.super Lcom/google/gdata/util/ServiceException;
.source "BatchInterruptedException.java"


# instance fields
.field private final feed:Lcom/google/gdata/data/IFeed;

.field private final interrupted:Lcom/google/gdata/data/batch/IBatchInterrupted;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/IFeed;Lcom/google/gdata/data/batch/IBatchInterrupted;)V
    .locals 2
    .param p1, "feed"    # Lcom/google/gdata/data/IFeed;
    .param p2, "interrupted"    # Lcom/google/gdata/data/batch/IBatchInterrupted;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Batch Interrupted (some operations might have succeeded) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/gdata/data/batch/IBatchInterrupted;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/google/gdata/client/batch/BatchInterruptedException;->feed:Lcom/google/gdata/data/IFeed;

    .line 47
    iput-object p2, p0, Lcom/google/gdata/client/batch/BatchInterruptedException;->interrupted:Lcom/google/gdata/data/batch/IBatchInterrupted;

    .line 48
    return-void
.end method


# virtual methods
.method public getBatchInterrupted()Lcom/google/gdata/data/batch/BatchInterrupted;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gdata/client/batch/BatchInterruptedException;->interrupted:Lcom/google/gdata/data/batch/IBatchInterrupted;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/client/batch/BatchInterruptedException;->interrupted:Lcom/google/gdata/data/batch/IBatchInterrupted;

    instance-of v0, v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Use getIBatchInterrupted() instead"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/google/gdata/client/batch/BatchInterruptedException;->interrupted:Lcom/google/gdata/data/batch/IBatchInterrupted;

    check-cast v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFeed()Lcom/google/gdata/data/BaseFeed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/gdata/client/batch/BatchInterruptedException;->feed:Lcom/google/gdata/data/IFeed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/client/batch/BatchInterruptedException;->feed:Lcom/google/gdata/data/IFeed;

    instance-of v0, v0, Lcom/google/gdata/data/BaseFeed;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Use getIFeed() instead"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/google/gdata/client/batch/BatchInterruptedException;->feed:Lcom/google/gdata/data/IFeed;

    check-cast v0, Lcom/google/gdata/data/BaseFeed;

    return-object v0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIBatchInterrupted()Lcom/google/gdata/data/batch/IBatchInterrupted;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/gdata/client/batch/BatchInterruptedException;->interrupted:Lcom/google/gdata/data/batch/IBatchInterrupted;

    return-object v0
.end method

.method public getIFeed()Lcom/google/gdata/data/IFeed;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/gdata/client/batch/BatchInterruptedException;->feed:Lcom/google/gdata/data/IFeed;

    return-object v0
.end method
