.class public interface abstract Lorg/mortbay/thread/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# virtual methods
.method public abstract dispatch(Ljava/lang/Runnable;)Z
.end method

.method public abstract getIdleThreads()I
.end method

.method public abstract getThreads()I
.end method

.method public abstract isLowOnThreads()Z
.end method

.method public abstract join()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
