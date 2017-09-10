.class public Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;
.super Ljava/lang/Object;
.source "ARSALBLEManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arsal/ARSALBLEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ARSALManagerNotification"
.end annotation


# instance fields
.field characteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field notificationsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private readCharacteristicMutex:Ljava/util/concurrent/locks/Lock;

.field private readCharacteristicSem:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arsal/ARSALBLEManager;Ljava/util/List;)V
    .locals 2
    .param p1, "this$0"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "characteristicsArray":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    iput-object p1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->this$0:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicSem:Ljava/util/concurrent/Semaphore;

    .line 114
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicMutex:Ljava/util/concurrent/locks/Lock;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->characteristics:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->notificationsArray:Ljava/util/ArrayList;

    .line 120
    iput-object p2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->characteristics:Ljava/util/List;

    .line 121
    return-void
.end method


# virtual methods
.method addNotification(Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;)V
    .locals 2
    .param p1, "notificationData"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 127
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->notificationsArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 131
    iget-object v1, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicSem:Ljava/util/concurrent/Semaphore;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAllNotification(Ljava/util/List;I)I
    .locals 5
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "getNoticationsArray":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "removeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;>;"
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->notificationsArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->notificationsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;

    .line 147
    .local v1, "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->notificationsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    return v3
.end method

.method signalNotification()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 195
    return-void
.end method

.method waitNotification()Z
    .locals 2

    .prologue
    .line 189
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->waitNotification(J)Z

    move-result v0

    return v0
.end method

.method waitNotification(J)Z
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 168
    const/4 v1, 0x1

    .line 171
    .local v1, "ret":Z
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 184
    :goto_0
    return v1

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotification;->readCharacteristicSem:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method
