.class public Lorg/mortbay/io/nio/SelectorManager$SelectSet;
.super Ljava/lang/Object;
.source "SelectorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/nio/SelectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectSet"
.end annotation


# instance fields
.field private _busyKey:Ljava/nio/channels/SelectionKey;

.field private _busyKeyCount:I

.field private transient _change:I

.field private transient _changes:[Ljava/util/List;

.field private transient _idleTimeout:Lorg/mortbay/thread/Timeout;

.field private transient _jvmBug:I

.field private _jvmFix0:I

.field private _jvmFix1:I

.field private _jvmFix2:I

.field private _log:J

.field private _monitorNext:J

.field private _monitorStart:J

.field private transient _nextSet:I

.field private _paused:I

.field private _pausing:Z

.field private transient _retryTimeout:Lorg/mortbay/thread/Timeout;

.field private volatile _selecting:Z

.field private transient _selector:Ljava/nio/channels/Selector;

.field private _selects:I

.field private transient _setID:I

.field private final this$0:Lorg/mortbay/io/nio/SelectorManager;


# direct methods
.method constructor <init>(Lorg/mortbay/io/nio/SelectorManager;I)V
    .locals 5
    .param p2, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 304
    iput-object p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput p2, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_setID:I

    .line 307
    new-instance v0, Lorg/mortbay/thread/Timeout;

    invoke-direct {v0, p0}, Lorg/mortbay/thread/Timeout;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    .line 308
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {p1}, Lorg/mortbay/io/nio/SelectorManager;->getMaxIdleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    .line 309
    new-instance v0, Lorg/mortbay/thread/Timeout;

    invoke-direct {v0, p0}, Lorg/mortbay/thread/Timeout;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    .line 310
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    .line 313
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 314
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_changes:[Ljava/util/List;

    .line 315
    iput v4, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_change:I

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorStart:J

    .line 317
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorStart:J

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$000()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    .line 318
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorStart:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_log:J

    .line 319
    return-void
.end method


# virtual methods
.method public addChange(Ljava/lang/Object;)V
    .locals 3
    .param p1, "point"    # Ljava/lang/Object;

    .prologue
    .line 324
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_changes:[Ljava/util/List;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_changes:[Ljava/util/List;

    iget v2, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_change:I

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    monitor-exit v1

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "att"    # Ljava/lang/Object;

    .prologue
    .line 333
    if-nez p2, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_0
    instance-of v0, p2, Lorg/mortbay/io/EndPoint;

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0, p2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_1
    new-instance v0, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;

    invoke-direct {v0, p1, p2}, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;-><init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cancelIdle(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 1
    .param p1, "task"    # Lorg/mortbay/thread/Timeout$Task;

    .prologue
    .line 344
    monitor-enter p0

    .line 346
    :try_start_0
    invoke-virtual {p1}, Lorg/mortbay/thread/Timeout$Task;->cancel()V

    .line 347
    monitor-exit p0

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doSelect()V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    const/16 v23, 0x0

    .line 364
    .local v23, "key":Ljava/nio/channels/SelectionKey;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_changes:[Ljava/util/List;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 366
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_changes:[Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_change:I

    move/from16 v37, v0

    aget-object v12, v33, v37

    .line 367
    .local v12, "changes":Ljava/util/List;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_change:I

    move/from16 v33, v0

    if-nez v33, :cond_1

    const/16 v33, 0x1

    :goto_0
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_change:I

    .line 368
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    move-object/from16 v32, v0

    .line 370
    .local v32, "selector":Ljava/nio/channels/Selector;
    monitor-exit v36
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    :try_start_2
    invoke-interface {v12}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v33

    move/from16 v0, v17

    move/from16 v1, v33

    if-ge v0, v1, :cond_c

    .line 379
    :try_start_3
    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .line 381
    .local v25, "o":Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v0, v0, Lorg/mortbay/io/EndPoint;

    move/from16 v33, v0

    if-eqz v33, :cond_2

    .line 384
    move-object/from16 v0, v25

    check-cast v0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-object/from16 v16, v0

    .line 385
    .local v16, "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->doUpdateKey()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 375
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    .end local v25    # "o":Ljava/lang/Object;
    :cond_0
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 367
    .end local v17    # "i":I
    .end local v32    # "selector":Ljava/nio/channels/Selector;
    :cond_1
    const/16 v33, 0x0

    goto :goto_0

    .line 370
    .end local v12    # "changes":Ljava/util/List;
    :catchall_0
    move-exception v33

    :try_start_4
    monitor-exit v36
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v33
    :try_end_5
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 779
    :catch_0
    move-exception v15

    .line 781
    .local v15, "e":Ljava/nio/channels/ClosedSelectorException;
    :try_start_6
    invoke-static {v15}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 789
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    .line 791
    .end local v15    # "e":Ljava/nio/channels/ClosedSelectorException;
    :goto_3
    return-void

    .line 387
    .restart local v12    # "changes":Ljava/util/List;
    .restart local v17    # "i":I
    .restart local v25    # "o":Ljava/lang/Object;
    .restart local v32    # "selector":Ljava/nio/channels/Selector;
    :cond_2
    :try_start_7
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/Runnable;

    move/from16 v33, v0

    if-eqz v33, :cond_3

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    check-cast v25, Ljava/lang/Runnable;

    .end local v25    # "o":Ljava/lang/Object;
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mortbay/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 438
    :catch_1
    move-exception v15

    .line 440
    .local v15, "e":Ljava/lang/Exception;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/mortbay/io/nio/SelectorManager;->isRunning()Z

    move-result v33

    if-eqz v33, :cond_a

    .line 441
    invoke-static {v15}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 456
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v33

    :try_start_9
    invoke-interface {v12}, Ljava/util/List;->clear()V

    throw v33
    :try_end_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 783
    .end local v12    # "changes":Ljava/util/List;
    .end local v17    # "i":I
    .end local v32    # "selector":Ljava/nio/channels/Selector;
    :catch_2
    move-exception v15

    .line 785
    .local v15, "e":Ljava/nio/channels/CancelledKeyException;
    :try_start_a
    invoke-static {v15}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 789
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto :goto_3

    .line 391
    .end local v15    # "e":Ljava/nio/channels/CancelledKeyException;
    .restart local v12    # "changes":Ljava/util/List;
    .restart local v17    # "i":I
    .restart local v25    # "o":Ljava/lang/Object;
    .restart local v32    # "selector":Ljava/nio/channels/Selector;
    :cond_3
    :try_start_b
    move-object/from16 v0, v25

    instance-of v0, v0, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;

    move/from16 v33, v0

    if-eqz v33, :cond_5

    .line 394
    move-object/from16 v0, v25

    check-cast v0, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;

    move-object v4, v0

    .line 395
    .local v4, "asc":Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;
    iget-object v13, v4, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;->_channel:Ljava/nio/channels/SelectableChannel;

    .line 396
    .local v13, "channel":Ljava/nio/channels/SelectableChannel;
    iget-object v5, v4, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;->_attachment:Ljava/lang/Object;

    .line 398
    .local v5, "att":Ljava/lang/Object;
    instance-of v0, v13, Ljava/nio/channels/SocketChannel;

    move/from16 v33, v0

    if-eqz v33, :cond_4

    move-object v0, v13

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 400
    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v23

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    check-cast v13, Ljava/nio/channels/SocketChannel;

    .end local v13    # "channel":Ljava/nio/channels/SelectableChannel;
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-virtual {v0, v13, v1, v2}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 402
    .restart local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    .line 445
    .end local v4    # "asc":Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;
    .end local v5    # "att":Ljava/lang/Object;
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    .end local v25    # "o":Ljava/lang/Object;
    :catch_3
    move-exception v15

    .line 447
    .local v15, "e":Ljava/lang/Error;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/mortbay/io/nio/SelectorManager;->isRunning()Z

    move-result v33

    if-eqz v33, :cond_b

    .line 448
    invoke-static {v15}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_2

    .line 405
    .end local v15    # "e":Ljava/lang/Error;
    .restart local v4    # "asc":Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;
    .restart local v5    # "att":Ljava/lang/Object;
    .restart local v13    # "channel":Ljava/nio/channels/SelectableChannel;
    .restart local v25    # "o":Ljava/lang/Object;
    :cond_4
    :try_start_d
    invoke-virtual {v13}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 407
    const/16 v33, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    goto/16 :goto_2

    .line 410
    .end local v4    # "asc":Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;
    .end local v5    # "att":Ljava/lang/Object;
    .end local v13    # "channel":Ljava/nio/channels/SelectableChannel;
    :cond_5
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/nio/channels/SocketChannel;

    move/from16 v33, v0

    if-eqz v33, :cond_7

    .line 412
    move-object/from16 v0, v25

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v13, v0

    .line 414
    .local v13, "channel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v13}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v33

    if-eqz v33, :cond_6

    .line 416
    const/16 v33, 0x1

    const/16 v36, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v36

    invoke-virtual {v13, v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v23

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-virtual {v0, v13, v1, v2}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 418
    .restart local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V

    goto/16 :goto_2

    .line 421
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    :cond_6
    invoke-virtual {v13}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 423
    const/16 v33, 0x8

    const/16 v36, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v36

    invoke-virtual {v13, v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    goto/16 :goto_2

    .line 426
    .end local v13    # "channel":Ljava/nio/channels/SocketChannel;
    :cond_7
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/nio/channels/ServerSocketChannel;

    move/from16 v33, v0

    if-eqz v33, :cond_8

    .line 428
    move-object/from16 v0, v25

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    move-object v13, v0

    .line 429
    .local v13, "channel":Ljava/nio/channels/ServerSocketChannel;
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v33

    const/16 v36, 0x10

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    goto/16 :goto_2

    .line 431
    .end local v13    # "channel":Ljava/nio/channels/ServerSocketChannel;
    :cond_8
    move-object/from16 v0, v25

    instance-of v0, v0, Lorg/mortbay/io/nio/SelectorManager$ChangeTask;

    move/from16 v33, v0

    if-eqz v33, :cond_9

    .line 433
    check-cast v25, Lorg/mortbay/io/nio/SelectorManager$ChangeTask;

    .end local v25    # "o":Ljava/lang/Object;
    invoke-interface/range {v25 .. v25}, Lorg/mortbay/io/nio/SelectorManager$ChangeTask;->run()V

    goto/16 :goto_2

    .line 436
    .restart local v25    # "o":Ljava/lang/Object;
    :cond_9
    new-instance v33, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 443
    .end local v25    # "o":Ljava/lang/Object;
    .local v15, "e":Ljava/lang/Exception;
    :cond_a
    :try_start_e
    invoke-static {v15}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 450
    .local v15, "e":Ljava/lang/Error;
    :cond_b
    invoke-static {v15}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    .line 456
    .end local v15    # "e":Ljava/lang/Error;
    :cond_c
    :try_start_f
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 459
    const-wide/16 v18, 0x0

    .line 460
    .local v18, "idle_next":J
    const-wide/16 v30, 0x0

    .line 461
    .local v30, "retry_next":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 462
    .local v26, "now":J
    monitor-enter p0
    :try_end_f
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 464
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lorg/mortbay/io/nio/SelectorManager;->access$100(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v36

    const-wide/16 v38, 0x0

    cmp-long v33, v36, v38

    if-lez v33, :cond_19

    invoke-virtual/range {v32 .. v32}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->size()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lorg/mortbay/io/nio/SelectorManager;->access$100(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v38

    cmp-long v33, v36, v38

    if-lez v33, :cond_19

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lorg/mortbay/io/nio/SelectorManager;->access$200(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v36

    move-object/from16 v0, v33

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    .line 470
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/mortbay/thread/Timeout;->getTimeToNext()J

    move-result-wide v18

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/mortbay/thread/Timeout;->getTimeToNext()J

    move-result-wide v30

    .line 472
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 475
    const-wide/16 v34, 0x3e8

    .line 476
    .local v34, "wait":J
    const-wide/16 v36, 0x0

    cmp-long v33, v18, v36

    if-ltz v33, :cond_d

    cmp-long v33, v34, v18

    if-lez v33, :cond_d

    .line 477
    move-wide/from16 v34, v18

    .line 478
    :cond_d
    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-lez v33, :cond_e

    const-wide/16 v36, 0x0

    cmp-long v33, v30, v36

    if-ltz v33, :cond_e

    cmp-long v33, v34, v30

    if-lez v33, :cond_e

    .line 479
    move-wide/from16 v34, v30

    .line 482
    :cond_e
    const-wide/16 v36, 0x2

    cmp-long v33, v34, v36

    if-lez v33, :cond_27

    .line 485
    :try_start_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_pausing:Z

    move/from16 v33, v0
    :try_end_11
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v33, :cond_f

    .line 489
    :try_start_12
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$400()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 497
    :cond_f
    :goto_5
    move-wide/from16 v8, v26

    .line 498
    .local v8, "before":J
    :try_start_13
    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v29

    .line 499
    .local v29, "selected":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    .line 507
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    move-wide/from16 v36, v0

    cmp-long v33, v26, v36

    if-lez v33, :cond_11

    .line 509
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    move/from16 v33, v0

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$000()I

    move-result v36

    mul-int v33, v33, v36

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorStart:J

    move-wide/from16 v38, v0

    sub-long v38, v26, v38

    div-long v36, v36, v38

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    move/from16 v33, v0

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$500()I

    move-result v36

    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_1a

    const/16 v33, 0x1

    :goto_6
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_pausing:Z

    .line 511
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_pausing:Z

    move/from16 v33, v0

    if-eqz v33, :cond_10

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_paused:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_paused:I

    .line 514
    :cond_10
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    .line 515
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    .line 516
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorStart:J

    .line 517
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$000()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v36, v36, v26

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    .line 520
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_log:J

    move-wide/from16 v36, v0

    cmp-long v33, v26, v36

    if-lez v33, :cond_15

    .line 522
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_paused:I

    move/from16 v33, v0

    if-lez v33, :cond_12

    .line 523
    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v36, " Busy selector - injecting delay "

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_paused:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v36, " times"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 525
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix2:I

    move/from16 v33, v0

    if-lez v33, :cond_13

    .line 526
    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v36, " JVM BUG(s) - injecting delay"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix2:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v36, " times"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 528
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix1:I

    move/from16 v33, v0

    if-lez v33, :cond_1b

    .line 529
    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v36, " JVM BUG(s) - recreating selector "

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix1:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v36, " times, canceled keys "

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v36, " times"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 533
    :cond_14
    :goto_7
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_paused:I

    .line 534
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix2:I

    .line 535
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix1:I

    .line 536
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I

    .line 537
    const-wide/32 v36, 0xea60

    add-long v36, v36, v26

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_log:J

    .line 541
    :cond_15
    if-nez v29, :cond_24

    const-wide/16 v36, 0xa

    cmp-long v33, v34, v36

    if-lez v33, :cond_24

    sub-long v36, v26, v8

    const-wide/16 v38, 0x2

    div-long v38, v34, v38

    cmp-long v33, v36, v38

    if-gez v33, :cond_24

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    .line 545
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    move/from16 v33, v0

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$600()I
    :try_end_13
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-result v36

    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_1c

    .line 549
    :try_start_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    move/from16 v33, v0

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$600()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_16

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix2:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix2:I

    .line 552
    :cond_16
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$400()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 657
    .end local v8    # "before":J
    .end local v29    # "selected":I
    :cond_17
    :goto_8
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    move-object/from16 v33, v0

    if-eqz v33, :cond_18

    invoke-virtual/range {v32 .. v32}, Ljava/nio/channels/Selector;->isOpen()Z
    :try_end_15
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-result v33

    if-nez v33, :cond_28

    .line 789
    :cond_18
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto/16 :goto_3

    .line 469
    .end local v34    # "wait":J
    :cond_19
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lorg/mortbay/io/nio/SelectorManager;->access$300(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v36

    move-object/from16 v0, v33

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    goto/16 :goto_4

    .line 472
    :catchall_2
    move-exception v33

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    throw v33
    :try_end_17
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 789
    .end local v12    # "changes":Ljava/util/List;
    .end local v17    # "i":I
    .end local v18    # "idle_next":J
    .end local v26    # "now":J
    .end local v30    # "retry_next":J
    .end local v32    # "selector":Ljava/nio/channels/Selector;
    :catchall_3
    move-exception v33

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    throw v33

    .line 491
    .restart local v12    # "changes":Ljava/util/List;
    .restart local v17    # "i":I
    .restart local v18    # "idle_next":J
    .restart local v26    # "now":J
    .restart local v30    # "retry_next":J
    .restart local v32    # "selector":Ljava/nio/channels/Selector;
    .restart local v34    # "wait":J
    :catch_4
    move-exception v15

    .line 493
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_18
    invoke-static {v15}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 510
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .restart local v8    # "before":J
    .restart local v29    # "selected":I
    :cond_1a
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 531
    :cond_1b
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v33

    if-eqz v33, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I

    move/from16 v33, v0

    if-lez v33, :cond_14

    .line 532
    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v36, " JVM BUG(s) - canceled keys "

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v36, " times"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 554
    :catch_5
    move-exception v15

    .line 556
    .restart local v15    # "e":Ljava/lang/InterruptedException;
    invoke-static {v15}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 559
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    move/from16 v33, v0

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$600()I

    move-result v36

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_20

    .line 561
    monitor-enter p0
    :try_end_18
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 564
    :try_start_19
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix1:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix1:I

    .line 566
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v24

    .line 567
    .local v24, "new_selector":Ljava/nio/channels/Selector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 568
    .local v21, "iterator":Ljava/util/Iterator;
    :cond_1d
    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1f

    .line 570
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/nio/channels/SelectionKey;

    .line 571
    .local v22, "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual/range {v22 .. v22}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v33

    if-eqz v33, :cond_1d

    invoke-virtual/range {v22 .. v22}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v33

    if-eqz v33, :cond_1d

    .line 574
    invoke-virtual/range {v22 .. v22}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v13

    .line 575
    .local v13, "channel":Ljava/nio/channels/SelectableChannel;
    invoke-virtual/range {v22 .. v22}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v6

    .line 577
    .local v6, "attachment":Ljava/lang/Object;
    if-nez v6, :cond_1e

    .line 578
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_9

    .line 593
    .end local v6    # "attachment":Ljava/lang/Object;
    .end local v13    # "channel":Ljava/nio/channels/SelectableChannel;
    .end local v21    # "iterator":Ljava/util/Iterator;
    .end local v22    # "k":Ljava/nio/channels/SelectionKey;
    .end local v24    # "new_selector":Ljava/nio/channels/Selector;
    :catchall_4
    move-exception v33

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    throw v33
    :try_end_1a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 580
    .restart local v6    # "attachment":Ljava/lang/Object;
    .restart local v13    # "channel":Ljava/nio/channels/SelectableChannel;
    .restart local v21    # "iterator":Ljava/util/Iterator;
    .restart local v22    # "k":Ljava/nio/channels/SelectionKey;
    .restart local v24    # "new_selector":Ljava/nio/channels/Selector;
    :cond_1e
    :try_start_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    goto :goto_9

    .line 582
    .end local v6    # "attachment":Ljava/lang/Object;
    .end local v13    # "channel":Ljava/nio/channels/SelectableChannel;
    .end local v22    # "k":Ljava/nio/channels/SelectionKey;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    move-object/from16 v28, v0

    .line 583
    .local v28, "old_selector":Ljava/nio/channels/Selector;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 586
    :try_start_1c
    invoke-virtual/range {v28 .. v28}, Ljava/nio/channels/Selector;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 592
    :goto_a
    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 789
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto/16 :goto_3

    .line 588
    :catch_6
    move-exception v15

    .line 590
    .local v15, "e":Ljava/lang/Exception;
    :try_start_1e
    invoke-static {v15}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto :goto_a

    .line 595
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "iterator":Ljava/util/Iterator;
    .end local v24    # "new_selector":Ljava/nio/channels/Selector;
    .end local v28    # "old_selector":Ljava/nio/channels/Selector;
    :cond_20
    :try_start_1f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    move/from16 v33, v0

    rem-int/lit8 v33, v33, 0x20

    const/16 v36, 0x1f

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_17

    .line 598
    const/4 v11, 0x0

    .line 599
    .local v11, "cancelled":I
    invoke-virtual/range {v32 .. v32}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 600
    .local v20, "iter":Ljava/util/Iterator;
    :cond_21
    :goto_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_22

    .line 602
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/nio/channels/SelectionKey;

    .line 603
    .restart local v22    # "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual/range {v22 .. v22}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v33

    if-eqz v33, :cond_21

    invoke-virtual/range {v22 .. v22}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v33

    if-nez v33, :cond_21

    .line 605
    invoke-virtual/range {v22 .. v22}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 606
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 609
    .end local v22    # "k":Ljava/nio/channels/SelectionKey;
    :cond_22
    if-lez v11, :cond_23

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I
    :try_end_1f
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1f .. :try_end_1f} :catch_2
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 789
    :cond_23
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto/16 :goto_3

    .line 615
    .end local v11    # "cancelled":I
    .end local v20    # "iter":Ljava/util/Iterator;
    :cond_24
    :try_start_20
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$700()I

    move-result v33

    if-lez v33, :cond_17

    const/16 v33, 0x1

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    move/from16 v33, v0

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$500()I

    move-result v36

    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_17

    .line 618
    invoke-virtual/range {v32 .. v32}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/channels/SelectionKey;

    .line 619
    .local v7, "busy":Ljava/nio/channels/SelectionKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_busyKey:Ljava/nio/channels/SelectionKey;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    if-ne v7, v0, :cond_26

    .line 621
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_busyKeyCount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_busyKeyCount:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$700()I

    move-result v36

    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_25

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v33

    move-object/from16 v0, v33

    instance-of v0, v0, Ljava/nio/channels/ServerSocketChannel;

    move/from16 v33, v0

    if-nez v33, :cond_25

    .line 623
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .line 624
    .restart local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    const-string v36, "Busy Key "

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v36, " "

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 626
    if-eqz v16, :cond_25

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    new-instance v36, Lorg/mortbay/io/nio/SelectorManager$SelectSet$1;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet$1;-><init>(Lorg/mortbay/io/nio/SelectorManager$SelectSet;Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/mortbay/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    .line 647
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    :cond_25
    :goto_c
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_busyKey:Ljava/nio/channels/SelectionKey;

    goto/16 :goto_8

    .line 646
    :cond_26
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_busyKeyCount:I

    goto :goto_c

    .line 652
    .end local v7    # "busy":Ljava/nio/channels/SelectionKey;
    .end local v8    # "before":J
    .end local v29    # "selected":I
    :cond_27
    invoke-virtual/range {v32 .. v32}, Ljava/nio/channels/Selector;->selectNow()I

    .line 653
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    goto/16 :goto_8

    .line 661
    :cond_28
    invoke-virtual/range {v32 .. v32}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 662
    .restart local v20    # "iter":Ljava/util/Iterator;
    :cond_29
    :goto_d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_34

    .line 664
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Ljava/nio/channels/SelectionKey;

    move-object/from16 v23, v0
    :try_end_20
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 668
    :try_start_21
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v33

    if-nez v33, :cond_2a

    .line 670
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 671
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .line 672
    .restart local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    if-eqz v16, :cond_29

    .line 673
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->doUpdateKey()V
    :try_end_21
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_21 .. :try_end_21} :catch_7
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    goto :goto_d

    .line 751
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    :catch_7
    move-exception v15

    .line 753
    .local v15, "e":Ljava/nio/channels/CancelledKeyException;
    :try_start_22
    invoke-static {v15}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_22
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_22 .. :try_end_22} :catch_2
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    goto :goto_d

    .line 677
    .end local v15    # "e":Ljava/nio/channels/CancelledKeyException;
    :cond_2a
    :try_start_23
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    .line 679
    .restart local v5    # "att":Ljava/lang/Object;
    instance-of v0, v5, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move/from16 v33, v0

    if-eqz v33, :cond_2c

    .line 681
    move-object v0, v5

    check-cast v0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-object/from16 v16, v0

    .line 682
    .restart local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V

    .line 749
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    :cond_2b
    :goto_e
    const/16 v23, 0x0

    goto :goto_d

    .line 684
    :cond_2c
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v33

    if-eqz v33, :cond_2e

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/mortbay/io/nio/SelectorManager;->acceptChannel(Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;

    move-result-object v13

    .line 687
    .local v13, "channel":Ljava/nio/channels/SocketChannel;
    if-eqz v13, :cond_29

    .line 690
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 693
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lorg/mortbay/io/nio/SelectorManager;->access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v36

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    rem-int v33, v33, v36

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    .line 696
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_setID:I

    move/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_2d

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lorg/mortbay/io/nio/SelectorManager;->access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    move/from16 v36, v0

    aget-object v33, v33, v36

    invoke-virtual/range {v33 .. v33}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v33

    const/16 v36, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v10

    .line 700
    .local v10, "cKey":Ljava/nio/channels/SelectionKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lorg/mortbay/io/nio/SelectorManager;->access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    move/from16 v37, v0

    aget-object v36, v36, v37

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v13, v1, v10}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 701
    .restart local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    if-eqz v16, :cond_2b

    .line 703
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V
    :try_end_23
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_23 .. :try_end_23} :catch_7
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    goto/16 :goto_e

    .line 755
    .end local v5    # "att":Ljava/lang/Object;
    .end local v10    # "cKey":Ljava/nio/channels/SelectionKey;
    .end local v13    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    :catch_8
    move-exception v15

    .line 757
    .local v15, "e":Ljava/lang/Exception;
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/mortbay/io/nio/SelectorManager;->isRunning()Z

    move-result v33

    if-eqz v33, :cond_33

    .line 758
    invoke-static {v15}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 762
    :goto_f
    if-eqz v23, :cond_29

    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v33

    move-object/from16 v0, v33

    instance-of v0, v0, Ljava/nio/channels/ServerSocketChannel;

    move/from16 v33, v0

    if-nez v33, :cond_29

    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v33

    if-eqz v33, :cond_29

    .line 764
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 766
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_24
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    goto/16 :goto_d

    .line 708
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v5    # "att":Ljava/lang/Object;
    .restart local v13    # "channel":Ljava/nio/channels/SocketChannel;
    :cond_2d
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lorg/mortbay/io/nio/SelectorManager;->access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    move/from16 v36, v0

    aget-object v33, v33, v36

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lorg/mortbay/io/nio/SelectorManager;->access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    move/from16 v36, v0

    aget-object v33, v33, v36

    invoke-virtual/range {v33 .. v33}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    goto/16 :goto_e

    .line 712
    .end local v13    # "channel":Ljava/nio/channels/SocketChannel;
    :cond_2e
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v33

    if-eqz v33, :cond_32

    .line 715
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v13

    check-cast v13, Ljava/nio/channels/SocketChannel;
    :try_end_25
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_25 .. :try_end_25} :catch_7
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 716
    .restart local v13    # "channel":Ljava/nio/channels/SocketChannel;
    const/4 v14, 0x0

    .line 719
    .local v14, "connected":Z
    :try_start_26
    invoke-virtual {v13}, Ljava/nio/channels/SocketChannel;->finishConnect()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_9
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    move-result v14

    .line 727
    if-eqz v14, :cond_2f

    .line 729
    const/16 v33, 0x1

    :try_start_27
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-virtual {v0, v13, v1, v2}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 731
    .restart local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V

    goto/16 :goto_e

    .line 736
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    :cond_2f
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_27
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_27 .. :try_end_27} :catch_7
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    goto/16 :goto_e

    .line 721
    :catch_9
    move-exception v15

    .line 723
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v13, v15, v5}, Lorg/mortbay/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    .line 727
    if-eqz v14, :cond_30

    .line 729
    const/16 v33, 0x1

    :try_start_29
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-virtual {v0, v13, v1, v2}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 731
    .restart local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V

    goto/16 :goto_e

    .line 736
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    :cond_30
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto/16 :goto_e

    .line 727
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v33

    if-eqz v14, :cond_31

    .line 729
    const/16 v36, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-virtual {v0, v13, v1, v2}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 731
    .restart local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V

    .line 736
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    :goto_10
    throw v33

    :cond_31
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_10

    .line 743
    .end local v13    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v14    # "connected":Z
    :cond_32
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v13

    check-cast v13, Ljava/nio/channels/SocketChannel;

    .line 744
    .restart local v13    # "channel":Ljava/nio/channels/SocketChannel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-virtual {v0, v13, v1, v2}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v16

    .line 745
    .restart local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual/range {v23 .. v23}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v33

    if-eqz v33, :cond_2b

    .line 747
    invoke-virtual/range {v16 .. v16}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V
    :try_end_29
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_29 .. :try_end_29} :catch_7
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    goto/16 :goto_e

    .line 760
    .end local v5    # "att":Ljava/lang/Object;
    .end local v13    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v16    # "endpoint":Lorg/mortbay/io/nio/SelectChannelEndPoint;
    .restart local v15    # "e":Ljava/lang/Exception;
    :cond_33
    :try_start_2a
    invoke-static {v15}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 772
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_34
    invoke-virtual/range {v32 .. v32}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->clear()V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/thread/Timeout;->tick(J)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/thread/Timeout;->tick(J)V
    :try_end_2a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2a .. :try_end_2a} :catch_2
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    .line 789
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto/16 :goto_3
.end method

.method public getManager()Lorg/mortbay/io/nio/SelectorManager;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    return-object v0
.end method

.method public getNow()J
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0}, Lorg/mortbay/thread/Timeout;->getNow()J

    move-result-wide v0

    return-wide v0
.end method

.method getSelector()Ljava/nio/channels/Selector;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public scheduleIdle(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 4
    .param p1, "task"    # Lorg/mortbay/thread/Timeout$Task;

    .prologue
    .line 808
    monitor-enter p0

    .line 810
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0}, Lorg/mortbay/thread/Timeout;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 811
    monitor-exit p0

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {p1, v0}, Lorg/mortbay/thread/Timeout$Task;->schedule(Lorg/mortbay/thread/Timeout;)V

    .line 814
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleTimeout(Lorg/mortbay/thread/Timeout$Task;J)V
    .locals 2
    .param p1, "task"    # Lorg/mortbay/thread/Timeout$Task;
    .param p2, "timeout"    # J

    .prologue
    .line 820
    monitor-enter p0

    .line 822
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;J)V

    .line 823
    monitor-exit p0

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 843
    const/4 v6, 0x1

    .line 844
    .local v6, "selecting":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 846
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 847
    iget-boolean v6, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto :goto_0

    .line 850
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v7}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 851
    .local v5, "keys":Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 853
    .local v3, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 855
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 856
    .local v4, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v4, :cond_1

    .line 858
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    .line 859
    .local v0, "att":Ljava/lang/Object;
    instance-of v7, v0, Lorg/mortbay/io/EndPoint;

    if-eqz v7, :cond_1

    move-object v2, v0

    .line 861
    check-cast v2, Lorg/mortbay/io/EndPoint;

    .line 864
    .local v2, "endpoint":Lorg/mortbay/io/EndPoint;
    :try_start_0
    invoke-interface {v2}, Lorg/mortbay/io/EndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 866
    :catch_0
    move-exception v1

    .line 868
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 873
    .end local v0    # "att":Ljava/lang/Object;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "endpoint":Lorg/mortbay/io/EndPoint;
    .end local v4    # "key":Ljava/nio/channels/SelectionKey;
    :cond_2
    monitor-enter p0

    .line 875
    :try_start_1
    iget-boolean v6, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    .line 876
    :goto_2
    if-eqz v6, :cond_3

    .line 878
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 879
    iget-boolean v6, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto :goto_2

    .line 882
    :cond_3
    iget-object v7, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v7}, Lorg/mortbay/thread/Timeout;->cancelAll()V

    .line 883
    iget-object v7, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v7}, Lorg/mortbay/thread/Timeout;->cancelAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    :try_start_2
    iget-object v7, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    if-eqz v7, :cond_4

    .line 887
    iget-object v7, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v7}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 893
    :cond_4
    :goto_3
    const/4 v7, 0x0

    :try_start_3
    iput-object v7, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 894
    monitor-exit p0

    .line 895
    return-void

    .line 889
    :catch_1
    move-exception v1

    .line 891
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 894
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7
.end method

.method public wakeup()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 830
    .local v0, "selector":Ljava/nio/channels/Selector;
    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 832
    :cond_0
    return-void
.end method
