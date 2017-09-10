.class public Lorg/mortbay/thread/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/thread/Timeout$Task;
    }
.end annotation


# instance fields
.field private _duration:J

.field private _head:Lorg/mortbay/thread/Timeout$Task;

.field private _lock:Ljava/lang/Object;

.field private volatile _now:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/thread/Timeout;->_now:J

    .line 38
    new-instance v0, Lorg/mortbay/thread/Timeout$Task;

    invoke-direct {v0}, Lorg/mortbay/thread/Timeout$Task;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/Timeout;->_lock:Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, v0, Lorg/mortbay/thread/Timeout$Task;->_timeout:Lorg/mortbay/thread/Timeout;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/thread/Timeout;->_now:J

    .line 38
    new-instance v0, Lorg/mortbay/thread/Timeout$Task;

    invoke-direct {v0}, Lorg/mortbay/thread/Timeout$Task;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    .line 50
    iput-object p1, p0, Lorg/mortbay/thread/Timeout;->_lock:Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, v0, Lorg/mortbay/thread/Timeout$Task;->_timeout:Lorg/mortbay/thread/Timeout;

    .line 52
    return-void
.end method

.method static access$200(Lorg/mortbay/thread/Timeout;)J
    .locals 2
    .param p0, "x0"    # Lorg/mortbay/thread/Timeout;

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/mortbay/thread/Timeout;->_now:J

    return-wide v0
.end method

.method static access$300(Lorg/mortbay/thread/Timeout;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/thread/Timeout;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/mortbay/thread/Timeout;->_lock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lorg/mortbay/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iget-object v2, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iget-object v3, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iput-object v3, v2, Lorg/mortbay/thread/Timeout$Task;->_prev:Lorg/mortbay/thread/Timeout$Task;

    iput-object v3, v0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public expired()Lorg/mortbay/thread/Timeout$Task;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 101
    iget-wide v2, p0, Lorg/mortbay/thread/Timeout;->_now:J

    .line 102
    .local v2, "now":J
    iget-object v6, p0, Lorg/mortbay/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v6

    .line 104
    :try_start_0
    iget-wide v8, p0, Lorg/mortbay/thread/Timeout;->_duration:J

    sub-long v0, v2, v8

    .line 106
    .local v0, "_expiry":J
    iget-object v7, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iget-object v7, v7, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    iget-object v8, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    if-eq v7, v8, :cond_1

    .line 108
    iget-object v7, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iget-object v4, v7, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    .line 109
    .local v4, "task":Lorg/mortbay/thread/Timeout$Task;
    iget-wide v8, v4, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    cmp-long v7, v8, v0

    if-lez v7, :cond_0

    .line 110
    monitor-exit v6

    move-object v4, v5

    .line 116
    .end local v4    # "task":Lorg/mortbay/thread/Timeout$Task;
    :goto_0
    return-object v4

    .line 112
    .restart local v4    # "task":Lorg/mortbay/thread/Timeout$Task;
    :cond_0
    invoke-static {v4}, Lorg/mortbay/thread/Timeout$Task;->access$000(Lorg/mortbay/thread/Timeout$Task;)V

    .line 113
    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/mortbay/thread/Timeout$Task;->_expired:Z

    .line 114
    monitor-exit v6

    goto :goto_0

    .line 117
    .end local v0    # "_expiry":J
    .end local v4    # "task":Lorg/mortbay/thread/Timeout$Task;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 116
    .restart local v0    # "_expiry":J
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/mortbay/thread/Timeout;->_duration:J

    return-wide v0
.end method

.method public getNow()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/mortbay/thread/Timeout;->_now:J

    return-wide v0
.end method

.method public getTimeToNext()J
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 214
    iget-object v4, p0, Lorg/mortbay/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v4

    .line 216
    :try_start_0
    iget-object v5, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iget-object v5, v5, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    iget-object v6, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    if-ne v5, v6, :cond_0

    .line 217
    const-wide/16 v2, -0x1

    monitor-exit v4

    .line 219
    :goto_0
    return-wide v2

    .line 218
    :cond_0
    iget-wide v6, p0, Lorg/mortbay/thread/Timeout;->_duration:J

    iget-object v5, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iget-object v5, v5, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    iget-wide v8, v5, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lorg/mortbay/thread/Timeout;->_now:J

    sub-long v0, v6, v8

    .line 219
    .local v0, "to_next":J
    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 220
    .end local v0    # "to_next":J
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "to_next":J
    :cond_1
    move-wide v2, v0

    .line 219
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lorg/mortbay/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iget-object v0, v0, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    iget-object v2, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public schedule(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 2
    .param p1, "task"    # Lorg/mortbay/thread/Timeout$Task;

    .prologue
    .line 159
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;J)V

    .line 160
    return-void
.end method

.method public schedule(Lorg/mortbay/thread/Timeout$Task;J)V
    .locals 8
    .param p1, "task"    # Lorg/mortbay/thread/Timeout$Task;
    .param p2, "delay"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 169
    iget-object v2, p0, Lorg/mortbay/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-wide v4, p1, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 173
    invoke-static {p1}, Lorg/mortbay/thread/Timeout$Task;->access$000(Lorg/mortbay/thread/Timeout$Task;)V

    .line 174
    const-wide/16 v4, 0x0

    iput-wide v4, p1, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    .line 176
    :cond_0
    iput-object p0, p1, Lorg/mortbay/thread/Timeout$Task;->_timeout:Lorg/mortbay/thread/Timeout;

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/mortbay/thread/Timeout$Task;->_expired:Z

    .line 178
    iput-wide p2, p1, Lorg/mortbay/thread/Timeout$Task;->_delay:J

    .line 179
    iget-wide v4, p0, Lorg/mortbay/thread/Timeout;->_now:J

    add-long/2addr v4, p2

    iput-wide v4, p1, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    .line 181
    iget-object v1, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iget-object v0, v1, Lorg/mortbay/thread/Timeout$Task;->_prev:Lorg/mortbay/thread/Timeout$Task;

    .line 182
    .local v0, "last":Lorg/mortbay/thread/Timeout$Task;
    :goto_0
    iget-object v1, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    if-eq v0, v1, :cond_1

    .line 184
    iget-wide v4, v0, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    iget-wide v6, p1, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    .line 188
    :cond_1
    invoke-static {v0, p1}, Lorg/mortbay/thread/Timeout$Task;->access$100(Lorg/mortbay/thread/Timeout$Task;Lorg/mortbay/thread/Timeout$Task;)V

    .line 189
    monitor-exit v2

    .line 190
    return-void

    .line 186
    :cond_2
    iget-object v0, v0, Lorg/mortbay/thread/Timeout$Task;->_prev:Lorg/mortbay/thread/Timeout$Task;

    goto :goto_0

    .line 189
    .end local v0    # "last":Lorg/mortbay/thread/Timeout$Task;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lorg/mortbay/thread/Timeout;->_duration:J

    .line 70
    return-void
.end method

.method public setNow()J
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/thread/Timeout;->_now:J

    .line 76
    iget-wide v0, p0, Lorg/mortbay/thread/Timeout;->_now:J

    return-wide v0
.end method

.method public setNow(J)V
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lorg/mortbay/thread/Timeout;->_now:J

    .line 89
    return-void
.end method

.method public tick()V
    .locals 8

    .prologue
    .line 123
    iget-wide v4, p0, Lorg/mortbay/thread/Timeout;->_now:J

    iget-wide v6, p0, Lorg/mortbay/thread/Timeout;->_duration:J

    sub-long v0, v4, v6

    .line 125
    .local v0, "expiry":J
    const/4 v2, 0x0

    .line 130
    .local v2, "task":Lorg/mortbay/thread/Timeout$Task;
    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/mortbay/thread/Timeout;->_lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    iget-object v4, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iget-object v2, v4, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    .line 133
    iget-object v4, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    if-eq v2, v4, :cond_0

    iget-wide v6, v2, Lorg/mortbay/thread/Timeout$Task;->_timestamp:J

    cmp-long v4, v6, v0

    if-lez v4, :cond_1

    .line 134
    :cond_0
    monitor-exit v5

    .line 147
    return-void

    .line 135
    :cond_1
    invoke-static {v2}, Lorg/mortbay/thread/Timeout$Task;->access$000(Lorg/mortbay/thread/Timeout$Task;)V

    .line 136
    const/4 v4, 0x1

    iput-boolean v4, v2, Lorg/mortbay/thread/Timeout$Task;->_expired:Z

    .line 137
    invoke-virtual {v2}, Lorg/mortbay/thread/Timeout$Task;->expire()V

    .line 138
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    invoke-virtual {v2}, Lorg/mortbay/thread/Timeout$Task;->expired()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v3

    .line 144
    .local v3, "th":Ljava/lang/Throwable;
    const-string v4, "EXCEPTION "

    invoke-static {v4, v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    .end local v3    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public tick(J)V
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 152
    iput-wide p1, p0, Lorg/mortbay/thread/Timeout;->_now:J

    .line 153
    invoke-virtual {p0}, Lorg/mortbay/thread/Timeout;->tick()V

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 227
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v2, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    iget-object v1, v2, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    .line 230
    .local v1, "task":Lorg/mortbay/thread/Timeout$Task;
    :goto_0
    iget-object v2, p0, Lorg/mortbay/thread/Timeout;->_head:Lorg/mortbay/thread/Timeout$Task;

    if-eq v1, v2, :cond_0

    .line 232
    const-string v2, "-->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 234
    iget-object v1, v1, Lorg/mortbay/thread/Timeout$Task;->_next:Lorg/mortbay/thread/Timeout$Task;

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
