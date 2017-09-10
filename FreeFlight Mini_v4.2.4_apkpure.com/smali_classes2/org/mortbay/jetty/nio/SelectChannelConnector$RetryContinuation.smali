.class public Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;
.super Lorg/mortbay/thread/Timeout$Task;
.source "SelectChannelConnector.java"

# interfaces
.implements Lorg/mortbay/util/ajax/Continuation;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/nio/SelectChannelConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryContinuation"
.end annotation


# instance fields
.field _endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

.field _new:Z

.field _object:Ljava/lang/Object;

.field _parked:Z

.field _pending:Z

.field _resumed:Z

.field _retry:Lorg/mortbay/jetty/RetryRequest;

.field _timeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-direct {p0}, Lorg/mortbay/thread/Timeout$Task;-><init>()V

    .line 395
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getEndPoint()Lorg/mortbay/io/EndPoint;

    move-result-object v0

    check-cast v0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    iput-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_new:Z

    .line 398
    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_pending:Z

    .line 399
    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_resumed:Z

    .line 400
    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_parked:Z

    return-void
.end method


# virtual methods
.method public expire()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "redispatch":Z
    monitor-enter p0

    .line 511
    :try_start_0
    iget-boolean v2, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_parked:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_pending:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_resumed:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 512
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_parked:Z

    .line 513
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    if-eqz v0, :cond_0

    .line 516
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    .line 517
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 518
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 520
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 511
    goto :goto_0

    .line 513
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_object:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_timeout:J

    return-wide v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_new:Z

    return v0
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_pending:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_resumed:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 432
    monitor-enter p0

    .line 434
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_resumed:Z

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_pending:Z

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_parked:Z

    .line 437
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v1

    monitor-enter v1

    .line 441
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->cancel()V

    .line 442
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 443
    return-void

    .line 437
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 442
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "redispatch":Z
    monitor-enter p0

    .line 483
    :try_start_0
    iget-boolean v2, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_pending:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->isExpired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_resumed:Z

    .line 486
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_parked:Z

    .line 487
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_parked:Z

    .line 489
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    if-eqz v0, :cond_1

    .line 493
    iget-object v2, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v2}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v1

    .line 495
    .local v1, "selectSet":Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    monitor-enter v1

    .line 497
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->cancel()V

    .line 498
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 500
    iget-object v2, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v2}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    .line 501
    invoke-virtual {v1, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 504
    .end local v1    # "selectSet":Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    :cond_1
    return-void

    .line 489
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 498
    .restart local v1    # "selectSet":Lorg/mortbay/io/nio/SelectorManager$SelectSet;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->run()V

    .line 526
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 558
    iput-object p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_object:Ljava/lang/Object;

    .line 559
    return-void
.end method

.method public suspend(J)Z
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "resumed":Z
    monitor-enter p0

    .line 450
    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_resumed:Z

    .line 451
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_resumed:Z

    .line 452
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_new:Z

    .line 453
    iget-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_pending:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    .line 455
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_pending:Z

    .line 456
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_parked:Z

    .line 457
    iput-wide p1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_timeout:J

    .line 458
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_retry:Lorg/mortbay/jetty/RetryRequest;

    if-nez v1, :cond_0

    .line 459
    new-instance v1, Lorg/mortbay/jetty/RetryRequest;

    invoke-direct {v1}, Lorg/mortbay/jetty/RetryRequest;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_retry:Lorg/mortbay/jetty/RetryRequest;

    .line 460
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_retry:Lorg/mortbay/jetty/RetryRequest;

    throw v1

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 465
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_resumed:Z

    .line 466
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_pending:Z

    .line 467
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_parked:Z

    .line 468
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v2

    monitor-enter v2

    .line 472
    :try_start_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->cancel()V

    .line 473
    monitor-exit v2

    .line 475
    return v0

    .line 473
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    monitor-enter p0

    .line 565
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RetryContinuation@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_new:Z

    if-eqz v0, :cond_0

    const-string v0, ",new"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_pending:Z

    if-eqz v0, :cond_1

    const-string v0, ",pending"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_resumed:Z

    if-eqz v0, :cond_2

    const-string v0, ",resumed"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ",expired"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_parked:Z

    if-eqz v0, :cond_4

    const-string v0, ",parked"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public undispatch()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, "redispatch":Z
    monitor-enter p0

    .line 537
    :try_start_0
    iget-boolean v3, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_pending:Z

    if-nez v3, :cond_0

    .line 538
    monitor-exit p0

    .line 553
    :goto_0
    return v1

    .line 540
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->isExpired()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_resumed:Z

    if-eqz v3, :cond_3

    :cond_1
    move v0, v1

    .line 541
    :goto_1
    if-nez v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_parked:Z

    .line 542
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    if-eqz v0, :cond_5

    .line 546
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    .line 547
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 552
    :cond_2
    :goto_3
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    move v1, v2

    .line 553
    goto :goto_0

    :cond_3
    move v0, v2

    .line 540
    goto :goto_1

    :cond_4
    move v1, v2

    .line 541
    goto :goto_2

    .line 542
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 549
    :cond_5
    iget-wide v4, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_timeout:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 550
    iget-object v1, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_endPoint:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v1

    iget-wide v4, p0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->_timeout:J

    invoke-virtual {v1, p0, v4, v5}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->scheduleTimeout(Lorg/mortbay/thread/Timeout$Task;J)V

    goto :goto_3
.end method
