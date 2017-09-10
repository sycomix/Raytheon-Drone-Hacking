.class public Lcom/google/gdata/util/VersionRegistry;
.super Ljava/lang/Object;
.source "VersionRegistry.java"


# static fields
.field private static versionRegistry:Lcom/google/gdata/util/VersionRegistry;


# instance fields
.field private defaultVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;"
        }
    .end annotation
.end field

.field private threadVersions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/VersionRegistry;->threadVersions:Ljava/lang/ThreadLocal;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/VersionRegistry;->defaultVersions:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized ensureRegistry()Lcom/google/gdata/util/VersionRegistry;
    .locals 2

    .prologue
    .line 89
    const-class v1, Lcom/google/gdata/util/VersionRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/gdata/util/VersionRegistry;->versionRegistry:Lcom/google/gdata/util/VersionRegistry;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/google/gdata/util/VersionRegistry;

    invoke-direct {v0}, Lcom/google/gdata/util/VersionRegistry;-><init>()V

    sput-object v0, Lcom/google/gdata/util/VersionRegistry;->versionRegistry:Lcom/google/gdata/util/VersionRegistry;

    .line 92
    :cond_0
    sget-object v0, Lcom/google/gdata/util/VersionRegistry;->versionRegistry:Lcom/google/gdata/util/VersionRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final get()Lcom/google/gdata/util/VersionRegistry;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/google/gdata/util/VersionRegistry;->versionRegistry:Lcom/google/gdata/util/VersionRegistry;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized version registry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    sget-object v0, Lcom/google/gdata/util/VersionRegistry;->versionRegistry:Lcom/google/gdata/util/VersionRegistry;

    return-object v0
.end method

.method public static getVersionFromProperty(Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;)",
            "Lcom/google/gdata/util/Version;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/client/Service;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "propertyName":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "versionProperty":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 149
    const/4 v3, 0x0

    .line 152
    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    new-instance v3, Lcom/google/gdata/util/Version;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/gdata/util/Version;

    invoke-direct {v3, p0, v2, v4}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid version property value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static mergeVersions(Ljava/util/List;Lcom/google/gdata/util/Version;)V
    .locals 2
    .param p1, "source"    # Lcom/google/gdata/util/Version;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;",
            "Lcom/google/gdata/util/Version;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/Version;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/gdata/util/Version;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gdata/util/VersionRegistry;->mergeVersions(Ljava/util/List;Ljava/util/List;)V

    .line 193
    return-void
.end method

.method static mergeVersions(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/Version;>;"
    .local p1, "source":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/Version;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/Version;

    .line 172
    .local v0, "checkVersion":Lcom/google/gdata/util/Version;
    invoke-virtual {v0}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/gdata/util/Version;->findServiceVersion(Ljava/util/Collection;Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v1

    .line 174
    .local v1, "currentVersion":Lcom/google/gdata/util/Version;
    if-eqz v1, :cond_0

    .line 175
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v0    # "checkVersion":Lcom/google/gdata/util/Version;
    .end local v1    # "currentVersion":Lcom/google/gdata/util/Version;
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    return-void
.end method

.method static reset()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gdata/util/VersionRegistry;->versionRegistry:Lcom/google/gdata/util/VersionRegistry;

    .line 104
    return-void
.end method


# virtual methods
.method public addDefaultVersion(Lcom/google/gdata/util/Version;Z)V
    .locals 2
    .param p1, "newDefault"    # Lcom/google/gdata/util/Version;
    .param p2, "includeImplied"    # Z

    .prologue
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/gdata/util/VersionRegistry;->defaultVersions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    .local v0, "newDefaults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/Version;>;"
    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getImpliedVersions()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->mergeVersions(Ljava/util/List;Ljava/util/List;)V

    .line 227
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/util/VersionRegistry;->defaultVersions:Ljava/util/List;

    .line 228
    return-void

    .line 224
    :cond_0
    invoke-static {v0, p1}, Lcom/google/gdata/util/VersionRegistry;->mergeVersions(Ljava/util/List;Lcom/google/gdata/util/Version;)V

    goto :goto_0
.end method

.method public getDefaultVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/gdata/util/VersionRegistry;->defaultVersions:Ljava/util/List;

    return-object v0
.end method

.method public getThreadVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/gdata/util/VersionRegistry;->threadVersions:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;)",
            "Lcom/google/gdata/util/Version;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/client/Service;>;"
    const/4 v1, 0x0

    .line 299
    .local v1, "v":Lcom/google/gdata/util/Version;
    invoke-virtual {p0}, Lcom/google/gdata/util/VersionRegistry;->getThreadVersions()Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, "threadList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/Version;>;"
    if-eqz v0, :cond_0

    .line 301
    invoke-static {v0, p1}, Lcom/google/gdata/util/Version;->findServiceVersion(Ljava/util/Collection;Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v1

    .line 303
    :cond_0
    if-nez v1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/google/gdata/util/VersionRegistry;->getDefaultVersions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/gdata/util/Version;->findServiceVersion(Ljava/util/Collection;Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v1

    .line 305
    if-nez v1, :cond_1

    .line 314
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to access version information for unversioned service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_1
    return-object v1
.end method

.method getVersions()Ljava/util/List;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/gdata/util/VersionRegistry;->getDefaultVersions()Ljava/util/List;

    move-result-object v1

    .line 276
    .local v1, "defaultList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/Version;>;"
    invoke-virtual {p0}, Lcom/google/gdata/util/VersionRegistry;->getThreadVersions()Ljava/util/List;

    move-result-object v2

    .line 277
    .local v2, "threadList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/Version;>;"
    if-nez v2, :cond_0

    .line 285
    .end local v1    # "defaultList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/Version;>;"
    :goto_0
    return-object v1

    .line 281
    .restart local v1    # "defaultList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/Version;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v0, "combinedList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/Version;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    invoke-static {v0, v2}, Lcom/google/gdata/util/VersionRegistry;->mergeVersions(Ljava/util/List;Ljava/util/List;)V

    move-object v1, v0

    .line 285
    goto :goto_0
.end method

.method public declared-synchronized reset(Ljava/util/List;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "initialDefaults":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/Version;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/VersionRegistry;->threadVersions:Ljava/lang/ThreadLocal;

    .line 333
    if-eqz p1, :cond_0

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/gdata/util/VersionRegistry;->defaultVersions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :goto_0
    monitor-exit p0

    return-void

    .line 336
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/VersionRegistry;->defaultVersions:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetThreadVersion()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/gdata/util/VersionRegistry;->threadVersions:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/gdata/util/VersionRegistry;->threadVersions:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 266
    :cond_0
    return-void
.end method

.method public setThreadVersion(Lcom/google/gdata/util/Version;)V
    .locals 2
    .param p1, "version"    # Lcom/google/gdata/util/Version;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/gdata/util/VersionRegistry;->threadVersions:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getImpliedVersions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 246
    return-void
.end method
