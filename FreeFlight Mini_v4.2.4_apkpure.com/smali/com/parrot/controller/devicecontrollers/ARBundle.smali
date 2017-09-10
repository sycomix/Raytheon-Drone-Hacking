.class public Lcom/parrot/controller/devicecontrollers/ARBundle;
.super Ljava/lang/Object;
.source "ARBundle.java"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/ARBundle;)V
    .locals 3
    .param p1, "b"    # Lcom/parrot/controller/devicecontrollers/ARBundle;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-object v1, p1, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    monitor-enter v1

    .line 22
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p1, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    .line 23
    monitor-exit v1

    .line 24
    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    monitor-enter v2

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 50
    .local v0, "ret":Z
    monitor-exit v2

    .line 51
    return v0

    .line 50
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 68
    .local v0, "ret":Z
    monitor-exit v2

    .line 69
    return v0

    .line 68
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    monitor-enter v2

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, "ret":Landroid/os/Bundle;
    monitor-exit v2

    .line 41
    return-object v0

    .line 40
    .end local v0    # "ret":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    monitor-exit v1

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
