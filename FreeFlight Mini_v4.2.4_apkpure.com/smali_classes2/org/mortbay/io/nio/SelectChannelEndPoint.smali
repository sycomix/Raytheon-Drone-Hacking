.class public Lorg/mortbay/io/nio/SelectChannelEndPoint;
.super Lorg/mortbay/io/nio/ChannelEndPoint;
.source "SelectChannelEndPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;
    }
.end annotation


# instance fields
.field protected _connection:Lorg/mortbay/io/Connection;

.field protected _dispatched:Z

.field protected _interestOps:I

.field protected _key:Ljava/nio/channels/SelectionKey;

.field protected _manager:Lorg/mortbay/io/nio/SelectorManager;

.field protected _readBlocked:Z

.field protected _selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

.field private _timeoutTask:Lorg/mortbay/thread/Timeout$Task;

.field protected _writable:Z

.field protected _writeBlocked:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "selectSet"    # Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    .param p3, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/mortbay/io/nio/ChannelEndPoint;-><init>(Ljava/nio/channels/ByteChannel;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 50
    new-instance v0, Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;

    invoke-direct {v0, p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;-><init>(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_timeoutTask:Lorg/mortbay/thread/Timeout$Task;

    .line 63
    invoke-virtual {p2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getManager()Lorg/mortbay/io/nio/SelectorManager;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    .line 64
    iput-object p2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    .line 65
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0, p1, p0}, Lorg/mortbay/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectChannelEndPoint;)Lorg/mortbay/io/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_connection:Lorg/mortbay/io/Connection;

    .line 67
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v0, p0}, Lorg/mortbay/io/nio/SelectorManager;->endPointOpened(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    .line 69
    iput-object p3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    .line 70
    return-void
.end method

.method private updateKey()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 320
    monitor-enter p0

    .line 322
    const/4 v0, -0x1

    .line 323
    .local v0, "ops":I
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    .line 326
    :goto_0
    iget-boolean v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-eqz v2, :cond_5

    :cond_0
    const/4 v2, 0x1

    :goto_1
    iget-boolean v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x4

    :cond_2
    or-int/2addr v1, v2

    iput v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    .line 330
    :cond_3
    iget v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    if-ne v1, v0, :cond_6

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 331
    monitor-exit p0

    .line 336
    :goto_2
    return-void

    .line 325
    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    move v2, v1

    .line 326
    goto :goto_1

    .line 333
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v1, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    goto :goto_2

    .line 333
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 9
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 232
    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v5, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v5}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getNow()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 237
    .local v2, "start":J
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 238
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 242
    :try_start_2
    invoke-direct {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 243
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 245
    iget-boolean v5, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v5}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getNow()J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 256
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    :goto_1
    return v1

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 256
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    throw v1

    .line 258
    .end local v2    # "start":J
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 256
    .restart local v2    # "start":J
    :cond_1
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 258
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v1, v4

    .line 259
    goto :goto_1
.end method

.method public blockWritable(J)Z
    .locals 9
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 268
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v5, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v5}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getNow()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 273
    .local v2, "start":J
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 278
    :try_start_2
    invoke-direct {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 279
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 281
    iget-boolean v5, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v5}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getNow()J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 292
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 293
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 296
    :goto_1
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 293
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    throw v1

    .line 295
    .end local v2    # "start":J
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 292
    .restart local v2    # "start":J
    :cond_1
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 293
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    .line 295
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v1, v4

    .line 296
    goto :goto_1
.end method

.method public cancelIdle()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_timeoutTask:Lorg/mortbay/thread/Timeout$Task;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->cancelIdle(Lorg/mortbay/thread/Timeout$Task;)V

    .line 166
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    :try_start_0
    invoke-super {p0}, Lorg/mortbay/io/nio/ChannelEndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-direct {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 458
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    invoke-direct {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->updateKey()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v1
.end method

.method dispatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    .line 78
    .local v0, "dispatch_done":Z
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectorManager;->isDelaySelectKeyUpdate()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v1, p0}, Lorg/mortbay/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 86
    :cond_0
    if-nez v0, :cond_1

    .line 88
    const-string v1, "dispatch failed!"

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    .line 92
    :cond_1
    return-void

    .line 86
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 88
    const-string v2, "dispatch failed!"

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    :cond_2
    throw v1
.end method

.method public dispatch(Z)Z
    .locals 5
    .param p1, "assumeShortDispatch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit p0

    .line 153
    :goto_0
    return v0

    .line 116
    :cond_1
    iget-boolean v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v2, :cond_5

    .line 118
    :cond_2
    iget-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 120
    :cond_3
    iget-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 124
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 128
    monitor-exit p0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 131
    :cond_5
    if-nez p1, :cond_6

    .line 132
    :try_start_1
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 135
    :cond_6
    iget-boolean v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    if-eqz v2, :cond_7

    .line 138
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 139
    monitor-exit p0

    goto :goto_0

    .line 143
    :cond_7
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_8

    .line 146
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    .line 147
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    iget v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 151
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    .line 152
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 153
    goto :goto_0
.end method

.method doUpdateKey()V
    .locals 5

    .prologue
    .line 344
    monitor-enter p0

    .line 346
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 348
    iget v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    if-lez v2, :cond_4

    .line 350
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 352
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectableChannel;

    .line 353
    .local v1, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-direct {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 400
    .end local v1    # "sc":Ljava/nio/channels/SelectableChannel;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    return-void

    .line 361
    .restart local v1    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectableChannel;

    iget-object v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v3}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v3

    iget v4, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v2, v3, v4, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 366
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 370
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->cancelIdle()V

    .line 371
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v2, p0}, Lorg/mortbay/io/nio/SelectorManager;->endPointClosed(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    .line 372
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "sc":Ljava/nio/channels/SelectableChannel;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 378
    :cond_3
    :try_start_3
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    iget v3, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 383
    :cond_4
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 384
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 386
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 391
    :cond_6
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 393
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 394
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 396
    :cond_7
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->cancelIdle()V

    .line 397
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_manager:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v2, p0}, Lorg/mortbay/io/nio/SelectorManager;->endPointClosed(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    .line 398
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public flush(Lorg/mortbay/io/Buffer;)I
    .locals 2
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-super {p0, p1}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 222
    .local v0, "l":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 223
    return v0

    .line 222
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I
    .locals 2
    .param p1, "header"    # Lorg/mortbay/io/Buffer;
    .param p2, "buffer"    # Lorg/mortbay/io/Buffer;
    .param p3, "trailer"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 212
    .local v0, "l":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 213
    return v0

    .line 212
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnection()Lorg/mortbay/io/Connection;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_connection:Lorg/mortbay/io/Connection;

    return-object v0
.end method

.method public getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    return-object v0
.end method

.method public getTimeoutTask()Lorg/mortbay/thread/Timeout$Task;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_timeoutTask:Lorg/mortbay/thread/Timeout$Task;

    return-object v0
.end method

.method protected idleExpired()V
    .locals 1

    .prologue
    .line 174
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 410
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_connection:Lorg/mortbay/io/Connection;

    invoke-interface {v2}, Lorg/mortbay/io/Connection;->handle()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    .line 438
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/nio/channels/ClosedChannelException;
    :try_start_1
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    goto :goto_0

    .line 416
    .end local v0    # "e":Ljava/nio/channels/ClosedChannelException;
    :catch_1
    move-exception v0

    .line 418
    .local v0, "e":Lorg/mortbay/jetty/EofException;
    :try_start_2
    const-string v2, "EOF"

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    :try_start_3
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    goto :goto_0

    .line 420
    :catch_2
    move-exception v1

    .local v1, "e2":Ljava/io/IOException;
    :try_start_4
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 436
    .end local v0    # "e":Lorg/mortbay/jetty/EofException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    throw v2

    .line 422
    :catch_3
    move-exception v0

    .line 424
    .local v0, "e":Lorg/mortbay/jetty/HttpException;
    :try_start_5
    const-string v2, "BAD"

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 425
    :try_start_6
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 436
    :goto_2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    goto :goto_0

    .line 426
    :catch_4
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    :try_start_7
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 428
    .end local v0    # "e":Lorg/mortbay/jetty/HttpException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "handle failed"

    invoke-static {v2, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 431
    :try_start_8
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 436
    :goto_3
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    goto :goto_0

    .line 432
    :catch_6
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    :try_start_9
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3
.end method

.method public scheduleIdle()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_timeoutTask:Lorg/mortbay/thread/Timeout$Task;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->scheduleIdle(Lorg/mortbay/thread/Timeout$Task;)V

    .line 160
    return-void
.end method

.method public scheduleWrite()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 309
    invoke-direct {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 310
    return-void
.end method

.method public setWritable(Z)V
    .locals 0
    .param p1, "writable"    # Z

    .prologue
    .line 302
    iput-boolean p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 303
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SCEP@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",io="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undispatch()V
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    .line 193
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_dispatched:Z

    .line 194
    invoke-direct {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 204
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 200
    const/4 v1, -0x1

    iput v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_interestOps:I

    .line 201
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v1, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
