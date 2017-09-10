.class public Lorg/mortbay/thread/Timeout$Task;
.super Ljava/lang/Object;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/thread/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field _delay:J

.field _expired:Z

.field _next:Lorg/mortbay/thread/Timeout$Task;

.field _prev:Lorg/mortbay/thread/Timeout$Task;

.field _timeout:Lorg/mortbay/thread/Timeout;

.field _timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/thread/Timeout$Task;->_expired:Z

    .line 264
    iput-object p0, p0, Lorg/mortbay/thread/Timeout$Task;->_prev:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, p0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    .line 265
    return-void
.end method

.method static access$000(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/thread/Timeout$Task;

    .prologue
    .line 252
    invoke-direct {p0}, Lorg/mortbay/thread/Timeout$Task;->unlink()V

    return-void
.end method

.method static access$100(Lorg/mortbay/thread/Timeout$Task;Lorg/mortbay/thread/Timeout$Task;)V
    .locals 0
    .param p0, "x0"    # Lorg/mortbay/thread/Timeout$Task;
    .param p1, "x1"    # Lorg/mortbay/thread/Timeout$Task;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lorg/mortbay/thread/Timeout$Task;->link(Lorg/mortbay/thread/Timeout$Task;)V

    return-void
.end method

.method private link(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 2
    .param p1, "task"    # Lorg/mortbay/thread/Timeout$Task;

    .prologue
    .line 298
    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    .line 299
    .local v0, "next_next":Lorg/mortbay/thread/Timeout$Task;
    iget-object v1, p0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    iput-object p1, v1, Lorg/mortbay/thread/Timeout$Task;->_prev:Lorg/mortbay/thread/Timeout$Task;

    .line 300
    iput-object p1, p0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    .line 301
    iget-object v1, p0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    iput-object v0, v1, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    .line 302
    iget-object v1, p0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, v1, Lorg/mortbay/thread/Timeout$Task;->_prev:Lorg/mortbay/thread/Timeout$Task;

    .line 303
    return-void
.end method

.method private unlink()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    iget-object v1, p0, Lorg/mortbay/thread/Timeout$Task;->_prev:Lorg/mortbay/thread/Timeout$Task;

    iput-object v1, v0, Lorg/mortbay/thread/Timeout$Task;->_prev:Lorg/mortbay/thread/Timeout$Task;

    .line 290
    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->_prev:Lorg/mortbay/thread/Timeout$Task;

    iget-object v1, p0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    iput-object v1, v0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    .line 291
    iput-object p0, p0, Lorg/mortbay/thread/Timeout$Task;->_prev:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, p0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/thread/Timeout$Task;->_expired:Z

    .line 293
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .prologue
    .line 343
    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->_timeout:Lorg/mortbay/thread/Timeout;

    .line 344
    .local v0, "timeout":Lorg/mortbay/thread/Timeout;
    if-eqz v0, :cond_0

    .line 346
    invoke-static {v0}, Lorg/mortbay/thread/Timeout;->access$300(Lorg/mortbay/thread/Timeout;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 348
    :try_start_0
    invoke-direct {p0}, Lorg/mortbay/thread/Timeout$Task;->unlink()V

    .line 349
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    .line 350
    monitor-exit v2

    .line 352
    :cond_0
    return-void

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public expire()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public expired()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public getAge()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 276
    iget-object v2, p0, Lorg/mortbay/thread/Timeout$Task;->_timeout:Lorg/mortbay/thread/Timeout;

    .line 277
    .local v2, "t":Lorg/mortbay/thread/Timeout;
    if-eqz v2, :cond_0

    .line 279
    invoke-static {v2}, Lorg/mortbay/thread/Timeout;->access$200(Lorg/mortbay/thread/Timeout;)J

    move-result-wide v0

    .line 280
    .local v0, "now":J
    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    iget-wide v6, p0, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_0

    .line 281
    iget-wide v4, p0, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    sub-long v4, v0, v4

    .line 283
    .end local v0    # "now":J
    :cond_0
    return-wide v4
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lorg/mortbay/thread/Timeout$Task;->_expired:Z

    return v0
.end method

.method public isScheduled()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reschedule()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->_timeout:Lorg/mortbay/thread/Timeout;

    .line 333
    .local v0, "timeout":Lorg/mortbay/thread/Timeout;
    if-eqz v0, :cond_0

    .line 334
    iget-wide v2, p0, Lorg/mortbay/thread/Timeout$Task;->_delay:J

    invoke-virtual {v0, p0, v2, v3}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;J)V

    .line 335
    :cond_0
    return-void
.end method

.method public schedule(Lorg/mortbay/thread/Timeout;)V
    .locals 0
    .param p1, "timer"    # Lorg/mortbay/thread/Timeout;

    .prologue
    .line 312
    invoke-virtual {p1, p0}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;)V

    .line 313
    return-void
.end method

.method public schedule(Lorg/mortbay/thread/Timeout;J)V
    .locals 0
    .param p1, "timer"    # Lorg/mortbay/thread/Timeout;
    .param p2, "delay"    # J

    .prologue
    .line 322
    invoke-virtual {p1, p0, p2, p3}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;J)V

    .line 323
    return-void
.end method
