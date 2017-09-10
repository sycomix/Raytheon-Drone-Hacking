.class public abstract Lorg/mortbay/component/AbstractLifeCycle;
.super Ljava/lang/Object;
.source "AbstractLifeCycle.java"

# interfaces
.implements Lorg/mortbay/component/LifeCycle;


# static fields
.field static class$org$mortbay$component$LifeCycle$Listener:Ljava/lang/Class;


# instance fields
.field private final FAILED:I

.field private final STARTED:I

.field private final STARTING:I

.field private final STOPPED:I

.field private final STOPPING:I

.field protected _listeners:[Lorg/mortbay/component/LifeCycle$Listener;

.field private _lock:Ljava/lang/Object;

.field private volatile _state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->FAILED:I

    iput v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->STOPPED:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->STARTING:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->STARTED:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->STOPPING:I

    .line 30
    iput v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private setFailed(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 183
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 185
    const/4 v1, -0x1

    iput v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    .line 186
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    if-eqz v1, :cond_0

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    aget-object v1, v1, v0

    invoke-interface {v1, p0, p1}, Lorg/mortbay/component/LifeCycle$Listener;->lifeCycleFailure(Lorg/mortbay/component/LifeCycle;Ljava/lang/Throwable;)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setStarted()V
    .locals 2

    .prologue
    .line 135
    const/4 v1, 0x2

    iput v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    .line 136
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    if-eqz v1, :cond_0

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/mortbay/component/LifeCycle$Listener;->lifeCycleStarted(Lorg/mortbay/component/LifeCycle;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setStarting()V
    .locals 2

    .prologue
    .line 147
    const/4 v1, 0x1

    iput v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    .line 148
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    if-eqz v1, :cond_0

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/mortbay/component/LifeCycle$Listener;->lifeCycleStarting(Lorg/mortbay/component/LifeCycle;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setStopped()V
    .locals 2

    .prologue
    .line 171
    const/4 v1, 0x0

    iput v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    .line 172
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    if-eqz v1, :cond_0

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/mortbay/component/LifeCycle$Listener;->lifeCycleStopped(Lorg/mortbay/component/LifeCycle;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setStopping()V
    .locals 2

    .prologue
    .line 159
    const/4 v1, 0x3

    iput v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    .line 160
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    if-eqz v1, :cond_0

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/mortbay/component/LifeCycle$Listener;->lifeCycleStopping(Lorg/mortbay/component/LifeCycle;)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lorg/mortbay/component/LifeCycle$Listener;)V
    .locals 2
    .param p1, "listener"    # Lorg/mortbay/component/LifeCycle$Listener;

    .prologue
    .line 125
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    sget-object v0, Lorg/mortbay/component/AbstractLifeCycle;->class$org$mortbay$component$LifeCycle$Listener:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.component.LifeCycle$Listener"

    invoke-static {v0}, Lorg/mortbay/component/AbstractLifeCycle;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/component/AbstractLifeCycle;->class$org$mortbay$component$LifeCycle$Listener:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/component/LifeCycle$Listener;

    check-cast v0, [Lorg/mortbay/component/LifeCycle$Listener;

    iput-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    .line 126
    return-void

    .line 125
    :cond_0
    sget-object v0, Lorg/mortbay/component/AbstractLifeCycle;->class$org$mortbay$component$LifeCycle$Listener:Ljava/lang/Class;

    goto :goto_0
.end method

.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    return-void
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 95
    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 105
    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopping()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeLifeCycleListener(Lorg/mortbay/component/LifeCycle$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/mortbay/component/LifeCycle$Listener;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/component/LifeCycle$Listener;

    check-cast v0, [Lorg/mortbay/component/LifeCycle$Listener;

    iput-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    .line 131
    return-void
.end method

.method public final start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v2, p0, Lorg/mortbay/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 47
    :try_start_0
    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 48
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_0
    return-void

    .line 49
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;->setStarting()V

    .line 50
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    .line 51
    const-string v1, "started {}"

    invoke-static {v1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;->setStarted()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-direct {p0, v0}, Lorg/mortbay/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 57
    throw v0

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Error;
    invoke-direct {p0, v0}, Lorg/mortbay/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 62
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v2, p0, Lorg/mortbay/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_0
    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    return-void

    .line 75
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;->setStopping()V

    .line 76
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    .line 77
    const-string v1, "stopped {}"

    invoke-static {v1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;->setStopped()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-direct {p0, v0}, Lorg/mortbay/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 83
    throw v0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Error;
    invoke-direct {p0, v0}, Lorg/mortbay/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 88
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
