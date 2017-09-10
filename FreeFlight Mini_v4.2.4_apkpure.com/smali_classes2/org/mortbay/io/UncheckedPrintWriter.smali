.class public Lorg/mortbay/io/UncheckedPrintWriter;
.super Ljava/io/PrintWriter;
.source "UncheckedPrintWriter.java"


# instance fields
.field private autoFlush:Z

.field private lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mortbay/io/UncheckedPrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 95
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, p2}, Lorg/mortbay/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mortbay/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/io/UncheckedPrintWriter;->autoFlush:Z

    .line 60
    iput-boolean p2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->autoFlush:Z

    .line 61
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lineSeparator:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private isOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    return-void
.end method

.method private newLine()V
    .locals 5

    .prologue
    .line 233
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :try_start_1
    invoke-direct {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->isOpen()V

    .line 235
    iget-object v2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    iget-object v4, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 236
    iget-boolean v2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->autoFlush:Z

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 238
    :cond_0
    monitor-exit v3

    .line 248
    :goto_0
    return-void

    .line 238
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 243
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->setError()V

    .line 246
    new-instance v2, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {v2, v0}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 130
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 132
    monitor-exit v2

    .line 139
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 136
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->setError()V

    .line 137
    new-instance v1, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {v1, v0}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 112
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    invoke-direct {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->isOpen()V

    .line 114
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 115
    monitor-exit v2

    .line 122
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 119
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->setError()V

    .line 120
    new-instance v1, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {v1, v0}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public print(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(I)V

    .line 278
    return-void
.end method

.method public print(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 337
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public print(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 322
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public print(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 292
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public print(J)V
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 307
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 384
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    const-string p1, "null"

    .line 369
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public print(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 264
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    .line 265
    return-void

    .line 264
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public print([C)V
    .locals 0
    .param p1, "s"    # [C

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write([C)V

    .line 353
    return-void
.end method

.method public println()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->newLine()V

    .line 399
    return-void
.end method

.method public println(C)V
    .locals 2
    .param p1, "x"    # C

    .prologue
    .line 425
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(C)V

    .line 427
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 428
    monitor-exit v1

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(D)V
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 486
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/io/UncheckedPrintWriter;->print(D)V

    .line 488
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 489
    monitor-exit v1

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 470
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(F)V

    .line 472
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 473
    monitor-exit v1

    .line 474
    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 440
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(I)V

    .line 442
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 443
    monitor-exit v1

    .line 444
    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(J)V
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 455
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/io/UncheckedPrintWriter;->print(J)V

    .line 457
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 458
    monitor-exit v1

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(Ljava/lang/Object;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 531
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(Ljava/lang/Object;)V

    .line 533
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 534
    monitor-exit v1

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(Ljava/lang/String;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 519
    monitor-exit v1

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println(Z)V
    .locals 2
    .param p1, "x"    # Z

    .prologue
    .line 410
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(Z)V

    .line 412
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 413
    monitor-exit v1

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public println([C)V
    .locals 2
    .param p1, "x"    # [C

    .prologue
    .line 501
    iget-object v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print([C)V

    .line 503
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 504
    monitor-exit v1

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    .line 148
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :try_start_1
    invoke-direct {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->isOpen()V

    .line 150
    iget-object v2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(I)V

    .line 151
    monitor-exit v3

    .line 161
    :goto_0
    return-void

    .line 151
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 156
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 158
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->setError()V

    .line 159
    new-instance v2, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {v2, v0}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;II)V

    .line 229
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 206
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    :try_start_1
    invoke-direct {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->isOpen()V

    .line 208
    iget-object v2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 209
    monitor-exit v3

    .line 219
    :goto_0
    return-void

    .line 209
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 214
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 216
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->setError()V

    .line 217
    new-instance v2, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {v2, v0}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public write([C)V
    .locals 2
    .param p1, "buf"    # [C

    .prologue
    .line 194
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/io/UncheckedPrintWriter;->write([CII)V

    .line 195
    return-void
.end method

.method public write([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 172
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/io/UncheckedPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :try_start_1
    invoke-direct {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->isOpen()V

    .line 174
    iget-object v2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 175
    monitor-exit v3

    .line 185
    :goto_0
    return-void

    .line 175
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 180
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 182
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->setError()V

    .line 183
    new-instance v2, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {v2, v0}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
