.class public Lorg/mortbay/thread/BoundedThreadPool$PoolThread;
.super Ljava/lang/Thread;
.source "BoundedThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/thread/BoundedThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PoolThread"
.end annotation


# instance fields
.field _job:Ljava/lang/Runnable;

.field private final this$0:Lorg/mortbay/thread/BoundedThreadPool;


# direct methods
.method constructor <init>(Lorg/mortbay/thread/BoundedThreadPool;)V
    .locals 1

    .prologue
    .line 416
    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 417
    invoke-static {p1}, Lorg/mortbay/thread/BoundedThreadPool;->access$000(Lorg/mortbay/thread/BoundedThreadPool;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->setDaemon(Z)V

    .line 418
    iget v0, p1, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->setPriority(I)V

    .line 419
    return-void
.end method

.method constructor <init>(Lorg/mortbay/thread/BoundedThreadPool;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 423
    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 424
    invoke-static {p1}, Lorg/mortbay/thread/BoundedThreadPool;->access$000(Lorg/mortbay/thread/BoundedThreadPool;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->setDaemon(Z)V

    .line 425
    iget v0, p1, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->setPriority(I)V

    .line 426
    iput-object p2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 427
    return-void
.end method


# virtual methods
.method dispatch(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 530
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 534
    :cond_1
    :try_start_1
    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 536
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    .line 437
    const/4 v3, 0x0

    .line 439
    .local v3, "job":Ljava/lang/Runnable;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :try_start_1
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 442
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 443
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 445
    :goto_0
    :try_start_2
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v7}, Lorg/mortbay/thread/BoundedThreadPool;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 447
    if-eqz v3, :cond_1

    .line 449
    move-object v6, v3

    .line 450
    .local v6, "todo":Ljava/lang/Runnable;
    const/4 v3, 0x0

    .line 451
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 512
    .end local v6    # "todo":Ljava/lang/Runnable;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v8}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 514
    :try_start_3
    iget-object v9, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v9}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 515
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 517
    const/4 v3, 0x0

    .line 518
    monitor-enter p0

    .line 520
    :try_start_4
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 521
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 522
    if-eqz v3, :cond_0

    iget-object v8, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v8}, Lorg/mortbay/thread/BoundedThreadPool;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 523
    iget-object v8, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v8, v3}, Lorg/mortbay/thread/BoundedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 512
    :cond_0
    throw v7

    .line 443
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7

    .line 456
    :cond_1
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 459
    :try_start_7
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$200(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 461
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$200(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 462
    monitor-exit v8

    goto :goto_0

    .line 484
    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 466
    :cond_2
    :try_start_9
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lorg/mortbay/thread/BoundedThreadPool;->access$302(Lorg/mortbay/thread/BoundedThreadPool;Z)Z

    .line 469
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    iget-object v9, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v9}, Lorg/mortbay/thread/BoundedThreadPool;->access$500(Lorg/mortbay/thread/BoundedThreadPool;)I

    move-result v9

    if-gt v7, v9, :cond_3

    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    iget-object v9, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v9}, Lorg/mortbay/thread/BoundedThreadPool;->access$700(Lorg/mortbay/thread/BoundedThreadPool;)I

    move-result v9

    if-le v7, v9, :cond_5

    .line 473
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 474
    .local v4, "now":J
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$800(Lorg/mortbay/thread/BoundedThreadPool;)J

    move-result-wide v10

    sub-long v10, v4, v10

    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v7}, Lorg/mortbay/thread/BoundedThreadPool;->getMaxIdleTimeMs()I

    move-result v7

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-lez v7, :cond_5

    .line 476
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7, v4, v5}, Lorg/mortbay/thread/BoundedThreadPool;->access$802(Lorg/mortbay/thread/BoundedThreadPool;J)J

    .line 477
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 512
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 514
    :try_start_a
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 515
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 517
    const/4 v3, 0x0

    .line 518
    monitor-enter p0

    .line 520
    :try_start_b
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 521
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 522
    if-eqz v3, :cond_4

    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v7}, Lorg/mortbay/thread/BoundedThreadPool;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 523
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    .end local v4    # "now":J
    :goto_1
    invoke-virtual {v7, v3}, Lorg/mortbay/thread/BoundedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 525
    :cond_4
    return-void

    .line 483
    :cond_5
    :try_start_c
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 488
    :try_start_d
    monitor-enter p0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 490
    :try_start_e
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    if-nez v7, :cond_6

    .line 491
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v7}, Lorg/mortbay/thread/BoundedThreadPool;->getMaxIdleTimeMs()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 492
    :cond_6
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 493
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 494
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 502
    :try_start_f
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 504
    :try_start_10
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 505
    monitor-exit v8

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 494
    :catchall_4
    move-exception v7

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    throw v7
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 496
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_14
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 502
    :try_start_15
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 504
    :try_start_16
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 505
    monitor-exit v8

    goto/16 :goto_0

    :catchall_5
    move-exception v7

    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :try_start_17
    throw v7

    .line 502
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_6
    move-exception v7

    iget-object v8, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v8}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 504
    :try_start_18
    iget-object v9, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v9}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 505
    monitor-exit v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 502
    :try_start_19
    throw v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 515
    :catchall_7
    move-exception v7

    :try_start_1a
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    throw v7

    .line 521
    :catchall_8
    move-exception v7

    :try_start_1b
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    throw v7

    .line 515
    .restart local v4    # "now":J
    :catchall_9
    move-exception v7

    :try_start_1c
    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    throw v7

    .line 521
    :catchall_a
    move-exception v7

    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    throw v7

    .line 505
    .end local v4    # "now":J
    :catchall_b
    move-exception v7

    :try_start_1e
    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    :try_start_1f
    throw v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 512
    :cond_7
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 514
    :try_start_20
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v7}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 515
    monitor-exit v8
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 517
    const/4 v3, 0x0

    .line 518
    monitor-enter p0

    .line 520
    :try_start_21
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 521
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 522
    if-eqz v3, :cond_4

    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v7}, Lorg/mortbay/thread/BoundedThreadPool;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 523
    iget-object v7, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    goto/16 :goto_1

    .line 515
    :catchall_c
    move-exception v7

    :try_start_22
    monitor-exit v8
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    throw v7

    .line 521
    :catchall_d
    move-exception v7

    :try_start_23
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    throw v7
.end method
