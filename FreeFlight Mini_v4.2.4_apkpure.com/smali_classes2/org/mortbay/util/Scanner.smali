.class public Lorg/mortbay/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/util/Scanner$BulkListener;,
        Lorg/mortbay/util/Scanner$DiscreteListener;,
        Lorg/mortbay/util/Scanner$Listener;
    }
.end annotation


# instance fields
.field private _currentScan:Ljava/util/Map;

.field private _filter:Ljava/io/FilenameFilter;

.field private _listeners:Ljava/util/List;

.field private _prevScan:Ljava/util/Map;

.field private _recursive:Z

.field private _reportExisting:Z

.field private volatile _running:Z

.field private _scanDirs:Ljava/util/List;

.field private _scanInterval:I

.field private _task:Ljava/util/TimerTask;

.field private _timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/Scanner;->_listeners:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/util/Scanner;->_prevScan:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/util/Scanner;->_currentScan:Ljava/util/Map;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/Scanner;->_running:Z

    .line 53
    iput-boolean v1, p0, Lorg/mortbay/util/Scanner;->_reportExisting:Z

    .line 56
    iput-boolean v1, p0, Lorg/mortbay/util/Scanner;->_recursive:Z

    .line 88
    return-void
.end method

.method private reportAddition(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v4, p0, Lorg/mortbay/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 404
    .local v2, "itor":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 409
    .local v3, "l":Ljava/lang/Object;
    :try_start_0
    instance-of v4, v3, Lorg/mortbay/util/Scanner$DiscreteListener;

    if-eqz v4, :cond_0

    .line 410
    move-object v0, v3

    check-cast v0, Lorg/mortbay/util/Scanner$DiscreteListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/mortbay/util/Scanner$DiscreteListener;->fileAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3, p1, v1}, Lorg/mortbay/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 416
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/Error;
    invoke-direct {p0, v3, p1, v1}, Lorg/mortbay/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 421
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private reportBulkChanges(Ljava/util/List;)V
    .locals 5
    .param p1, "filenames"    # Ljava/util/List;

    .prologue
    .line 479
    iget-object v4, p0, Lorg/mortbay/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 480
    .local v2, "itor":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 482
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 485
    .local v3, "l":Ljava/lang/Object;
    :try_start_0
    instance-of v4, v3, Lorg/mortbay/util/Scanner$BulkListener;

    if-eqz v4, :cond_0

    .line 486
    move-object v0, v3

    check-cast v0, Lorg/mortbay/util/Scanner$BulkListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/mortbay/util/Scanner$BulkListener;->filesChanged(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 488
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lorg/mortbay/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 492
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 494
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lorg/mortbay/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 497
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private reportChange(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v4, p0, Lorg/mortbay/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 458
    .local v2, "itor":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 460
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 463
    .local v3, "l":Ljava/lang/Object;
    :try_start_0
    instance-of v4, v3, Lorg/mortbay/util/Scanner$DiscreteListener;

    if-eqz v4, :cond_0

    .line 464
    move-object v0, v3

    check-cast v0, Lorg/mortbay/util/Scanner$DiscreteListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/mortbay/util/Scanner$DiscreteListener;->fileChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 466
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3, p1, v1}, Lorg/mortbay/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 470
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/Error;
    invoke-direct {p0, v3, p1, v1}, Lorg/mortbay/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 475
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private reportRemoval(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v4, p0, Lorg/mortbay/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 431
    .local v2, "itor":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 436
    .local v3, "l":Ljava/lang/Object;
    :try_start_0
    instance-of v4, v3, Lorg/mortbay/util/Scanner$DiscreteListener;

    if-eqz v4, :cond_0

    .line 437
    move-object v0, v3

    check-cast v0, Lorg/mortbay/util/Scanner$DiscreteListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/mortbay/util/Scanner$DiscreteListener;->fileRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3, p1, v1}, Lorg/mortbay/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 443
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Error;
    invoke-direct {p0, v3, p1, v1}, Lorg/mortbay/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 448
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private scanFile(Ljava/io/File;Ljava/util/Map;)V
    .locals 9
    .param p1, "f"    # Ljava/io/File;
    .param p2, "scanInfoMap"    # Ljava/util/Map;

    .prologue
    .line 366
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 371
    iget-object v6, p0, Lorg/mortbay/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/mortbay/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/mortbay/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 373
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 375
    .local v4, "lastModified":J
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "lastModified":J
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "Error scanning watched files"

    invoke-static {v6, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 378
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lorg/mortbay/util/Scanner;->_recursive:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/mortbay/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 380
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 381
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 382
    aget-object v6, v1, v2

    invoke-direct {p0, v6, p2}, Lorg/mortbay/util/Scanner;->scanFile(Ljava/io/File;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 393
    invoke-static {p3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " failed on \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 395
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lorg/mortbay/util/Scanner$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/mortbay/util/Scanner$Listener;

    .prologue
    .line 185
    monitor-enter p0

    if-nez p1, :cond_0

    .line 188
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFilenameFilter()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method public getRecursive()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/mortbay/util/Scanner;->_recursive:Z

    return v0
.end method

.method public getScanDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_scanDirs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_scanDirs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method public getScanDirs()Ljava/util/List;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_scanDirs:Ljava/util/List;

    return-object v0
.end method

.method public getScanInterval()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/mortbay/util/Scanner;->_scanInterval:I

    return v0
.end method

.method public newTimer()Ljava/util/Timer;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    return-object v0
.end method

.method public newTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lorg/mortbay/util/Scanner$1;

    invoke-direct {v0, p0}, Lorg/mortbay/util/Scanner$1;-><init>(Lorg/mortbay/util/Scanner;)V

    return-object v0
.end method

.method public declared-synchronized removeListener(Lorg/mortbay/util/Scanner$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/mortbay/util/Scanner$Listener;

    .prologue
    .line 198
    monitor-enter p0

    if-nez p1, :cond_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reportDifferences(Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .param p1, "currentScan"    # Ljava/util/Map;
    .param p2, "oldScan"    # Ljava/util/Map;

    .prologue
    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v0, "bulkChanges":Ljava/util/List;
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 317
    .local v5, "oldScanKeys":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 318
    .local v3, "itor":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 320
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 321
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 323
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "File added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 324
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/mortbay/util/Scanner;->reportAddition(Ljava/lang/String;)V

    .line 325
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 329
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "File changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 330
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/mortbay/util/Scanner;->reportChange(Ljava/lang/String;)V

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 335
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 338
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 341
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 342
    .local v4, "keyItor":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 344
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    .local v2, "filename":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "File removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, v2}, Lorg/mortbay/util/Scanner;->reportRemoval(Ljava/lang/String;)V

    .line 347
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 351
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "keyItor":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 352
    invoke-direct {p0, v0}, Lorg/mortbay/util/Scanner;->reportBulkChanges(Ljava/util/List;)V

    .line 353
    :cond_4
    return-void
.end method

.method public scan()V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->scanFiles()V

    .line 280
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_currentScan:Ljava/util/Map;

    iget-object v1, p0, Lorg/mortbay/util/Scanner;->_prevScan:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/Scanner;->reportDifferences(Ljava/util/Map;Ljava/util/Map;)V

    .line 281
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_prevScan:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 282
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_prevScan:Ljava/util/Map;

    iget-object v1, p0, Lorg/mortbay/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 283
    return-void
.end method

.method public scanFiles()V
    .locals 3

    .prologue
    .line 291
    iget-object v2, p0, Lorg/mortbay/util/Scanner;->_scanDirs:Ljava/util/List;

    if-nez v2, :cond_1

    .line 303
    :cond_0
    return-void

    .line 294
    :cond_1
    iget-object v2, p0, Lorg/mortbay/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 295
    iget-object v2, p0, Lorg/mortbay/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 296
    .local v1, "itor":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 300
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    iget-object v2, p0, Lorg/mortbay/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-direct {p0, v0, v2}, Lorg/mortbay/util/Scanner;->scanFile(Ljava/io/File;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public schedule()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 243
    iget-boolean v0, p0, Lorg/mortbay/util/Scanner;->_running:Z

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 249
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->getScanInterval()I

    move-result v0

    if-lez v0, :cond_2

    .line 251
    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->newTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/Scanner;->_timer:Ljava/util/Timer;

    .line 252
    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->newTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/Scanner;->_task:Ljava/util/TimerTask;

    .line 253
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/mortbay/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->getScanInterval()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->getScanInterval()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 256
    :cond_2
    return-void
.end method

.method public setFilenameFilter(Ljava/io/FilenameFilter;)V
    .locals 0
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/mortbay/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    .line 157
    return-void
.end method

.method public setRecursive(Z)V
    .locals 0
    .param p1, "recursive"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lorg/mortbay/util/Scanner;->_recursive:Z

    .line 143
    return-void
.end method

.method public setReportExistingFilesOnStartup(Z)V
    .locals 0
    .param p1, "reportExisting"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lorg/mortbay/util/Scanner;->_reportExisting:Z

    .line 177
    return-void
.end method

.method public setScanDir(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/util/Scanner;->_scanDirs:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public setScanDirs(Ljava/util/List;)V
    .locals 0
    .param p1, "dirs"    # Ljava/util/List;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/mortbay/util/Scanner;->_scanDirs:Ljava/util/List;

    .line 133
    return-void
.end method

.method public declared-synchronized setScanInterval(I)V
    .locals 1
    .param p1, "scanInterval"    # I

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/mortbay/util/Scanner;->_scanInterval:I

    .line 106
    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->schedule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/util/Scanner;->_running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/mortbay/util/Scanner;->_running:Z

    .line 214
    iget-boolean v0, p0, Lorg/mortbay/util/Scanner;->_reportExisting:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->scan()V

    .line 225
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->schedule()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 222
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->scanFiles()V

    .line 223
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_prevScan:Ljava/util/Map;

    iget-object v1, p0, Lorg/mortbay/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/util/Scanner;->_running:Z

    if-eqz v0, :cond_2

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/Scanner;->_running:Z

    .line 265
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lorg/mortbay/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 269
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/Scanner;->_task:Ljava/util/TimerTask;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/Scanner;->_timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_2
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
