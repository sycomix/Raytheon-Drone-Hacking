.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;
.super Ljava/lang/Object;
.source "ARDiscoveryMux.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;,
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cPtr:J

.field private connectCallback:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;

.field private final connectLock:Ljava/lang/Object;

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceType:I

.field private listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

.field private muxRef:Lcom/parrot/mux/Mux$Ref;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->nativeClInit()V

    .line 63
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->nativeClInitConnection()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/parrot/mux/Mux;)V
    .locals 2
    .param p1, "mux"    # Lcom/parrot/mux/Mux;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "ARDiscoveryMux"

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Lcom/parrot/mux/Mux;->newMuxRef()Lcom/parrot/mux/Mux$Ref;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->muxRef:Lcom/parrot/mux/Mux$Ref;

    .line 68
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->muxRef:Lcom/parrot/mux/Mux$Ref;

    invoke-virtual {v0}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->nativeNew(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->cPtr:J

    .line 69
    return-void
.end method

.method private static native nativeClInit()V
.end method

.method private static native nativeClInitConnection()V
.end method

.method private native nativeDispose(J)V
.end method

.method private native nativeDisposeConnection(J)V
.end method

.method private native nativeNew(J)J
.end method

.method private native nativeNewConnection(J)J
.end method

.method private native nativeSendConnectRequest(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public cancelConnect()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;)I
    .locals 9
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "json"    # Ljava/lang/String;
    .param p5, "connectCallback"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;

    .prologue
    .line 84
    const/4 v0, -0x1

    .line 85
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v8, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    monitor-enter v8

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectCallback:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Connection already in progress!"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 90
    :cond_0
    :try_start_1
    iput-object p5, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectCallback:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;

    .line 91
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->muxRef:Lcom/parrot/mux/Mux$Ref;

    invoke-virtual {v1}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->nativeNewConnection(J)J

    move-result-wide v2

    .local v2, "muxConn":J
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 92
    invoke-direct/range {v1 .. v7}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->nativeSendConnectRequest(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 94
    :try_start_2
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :goto_0
    const/4 v0, 0x0

    .line 99
    :cond_1
    :try_start_3
    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->nativeDisposeConnection(J)V

    .line 100
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .end local v2    # "muxConn":J
    :cond_2
    return v0

    .line 95
    .restart local v2    # "muxConn":J
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    const-string v0, "ARDiscoveryMux"

    const-string v1, "ARDiscoveryMux destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->cPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->nativeDispose(J)V

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->cPtr:J

    .line 118
    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceName:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;->onDeviceRemoved()V

    .line 122
    :cond_0
    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    .line 123
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->muxRef:Lcom/parrot/mux/Mux$Ref;

    invoke-virtual {v0}, Lcom/parrot/mux/Mux$Ref;->release()V

    .line 124
    const-string v0, "ARDiscoveryMux"

    const-string v1, "ARDiscoveryMux destroy done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->cPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDeviceAdded(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 132
    :try_start_0
    const-string v2, "ARDiscoveryMux"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceAdded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceType:I

    .line 134
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceName:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceId:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    .line 137
    .local v0, "l":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;
    if-eqz v0, :cond_0

    .line 138
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceName:Ljava/lang/String;

    iget v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceType:I

    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;->onDeviceAdded(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "l":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 142
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ARDiscoveryMux"

    const-string v3, "exception in onDeviceRemoved"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDeviceConnected(ILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectCallback:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "ARDiscoveryMux"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectCallback:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;

    invoke-interface {v1, p1, p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;->onConnected(ILjava/lang/String;)V

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectCallback:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$ConnectCallback;

    .line 176
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 178
    :cond_0
    monitor-exit v2

    .line 183
    :goto_0
    return-void

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ARDiscoveryMux"

    const-string v2, "exception in onDeviceConnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDeviceRemoved(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 151
    :try_start_0
    const-string v2, "ARDiscoveryMux"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceRemoved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :try_start_1
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 154
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceName:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    .line 157
    .local v0, "l":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;
    if-eqz v0, :cond_0

    .line 158
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    invoke-interface {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;->onDeviceRemoved()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    .end local v0    # "l":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;
    :cond_0
    :goto_0
    return-void

    .line 154
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    :catch_0
    move-exception v1

    .line 162
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ARDiscoveryMux"

    const-string v3, "exception in onDeviceRemoved"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onReset()V
    .locals 4

    .prologue
    .line 190
    :try_start_0
    const-string v2, "ARDiscoveryMux"

    const-string v3, "onReset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :try_start_1
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->connectLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 193
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceName:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    .line 196
    .local v0, "l":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;
    if-eqz v0, :cond_0

    .line 197
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    invoke-interface {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;->onDeviceRemoved()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    .end local v0    # "l":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;
    :cond_0
    :goto_0
    return-void

    .line 193
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 199
    :catch_0
    move-exception v1

    .line 201
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ARDiscoveryMux"

    const-string v3, "exception in onReset"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setListener(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->listener:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;

    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceName:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceType:I

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;->deviceId:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;->onDeviceAdded(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
