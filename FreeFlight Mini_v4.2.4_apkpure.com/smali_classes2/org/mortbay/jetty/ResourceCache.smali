.class public Lorg/mortbay/jetty/ResourceCache;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "ResourceCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/ResourceCache$Content;
    }
.end annotation


# instance fields
.field protected transient _cache:Ljava/util/Map;

.field protected transient _cachedFiles:I

.field protected transient _cachedSize:I

.field protected transient _leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

.field private _maxCacheSize:I

.field private _maxCachedFileSize:I

.field private _maxCachedFiles:I

.field private _mimeTypes:Lorg/mortbay/jetty/MimeTypes;

.field protected transient _mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/MimeTypes;)V
    .locals 1
    .param p1, "mimeTypes"    # Lorg/mortbay/jetty/MimeTypes;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 39
    const/high16 v0, 0x100000

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFileSize:I

    .line 40
    const/16 v0, 0x800

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFiles:I

    .line 41
    const/high16 v0, 0x1000000

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCacheSize:I

    .line 56
    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    .line 57
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/ResourceCache;)Lorg/mortbay/jetty/MimeTypes;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/ResourceCache;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    return-object v0
.end method

.method private load(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;
    .locals 8
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "resource"    # Lorg/mortbay/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "content":Lorg/mortbay/jetty/ResourceCache$Content;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3

    .line 194
    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v2

    .line 195
    .local v2, "len":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    iget v5, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFileSize:I

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    iget v5, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCacheSize:I

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    .line 197
    new-instance v0, Lorg/mortbay/jetty/ResourceCache$Content;

    .end local v0    # "content":Lorg/mortbay/jetty/ResourceCache$Content;
    invoke-direct {v0, p0, p2}, Lorg/mortbay/jetty/ResourceCache$Content;-><init>(Lorg/mortbay/jetty/ResourceCache;Lorg/mortbay/resource/Resource;)V

    .line 198
    .restart local v0    # "content":Lorg/mortbay/jetty/ResourceCache$Content;
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/ResourceCache;->fill(Lorg/mortbay/jetty/ResourceCache$Content;)V

    .line 200
    iget-object v6, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    monitor-enter v6

    .line 203
    :try_start_0
    iget-object v5, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/ResourceCache$Content;

    .line 204
    .local v1, "content2":Lorg/mortbay/jetty/ResourceCache$Content;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lorg/mortbay/jetty/ResourceCache$Content;->release()V

    .line 207
    monitor-exit v6

    .line 220
    .end local v1    # "content2":Lorg/mortbay/jetty/ResourceCache$Content;
    .end local v2    # "len":J
    :goto_0
    return-object v1

    .line 210
    .restart local v1    # "content2":Lorg/mortbay/jetty/ResourceCache$Content;
    .restart local v2    # "len":J
    :cond_0
    iget v5, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCacheSize:I

    long-to-int v7, v2

    sub-int v4, v5, v7

    .line 211
    .local v4, "must_be_smaller_than":I
    :goto_1
    iget v5, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    if-gt v5, v4, :cond_1

    iget v5, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFiles:I

    if-lez v5, :cond_2

    iget v5, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    iget v7, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFiles:I

    if-lt v5, v7, :cond_2

    .line 212
    :cond_1
    iget-object v5, p0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    invoke-virtual {v5}, Lorg/mortbay/jetty/ResourceCache$Content;->invalidate()V

    goto :goto_1

    .line 216
    .end local v1    # "content2":Lorg/mortbay/jetty/ResourceCache$Content;
    .end local v4    # "must_be_smaller_than":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 213
    .restart local v1    # "content2":Lorg/mortbay/jetty/ResourceCache$Content;
    .restart local v4    # "must_be_smaller_than":I
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/ResourceCache$Content;->cache(Ljava/lang/String;)V

    .line 215
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 220
    .end local v1    # "content2":Lorg/mortbay/jetty/ResourceCache$Content;
    .end local v2    # "len":J
    .end local v4    # "must_be_smaller_than":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/mortbay/jetty/ResourceCache;->flushCache()V

    .line 240
    return-void
.end method

.method protected fill(Lorg/mortbay/jetty/ResourceCache$Content;)V
    .locals 6
    .param p1, "content"    # Lorg/mortbay/jetty/ResourceCache$Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 249
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v4

    long-to-int v2, v4

    .line 250
    .local v2, "len":I
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, v2}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    .line 251
    .local v0, "buffer":Lorg/mortbay/io/Buffer;
    invoke-interface {v0, v1, v2}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    .line 252
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 253
    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/ResourceCache$Content;->setBuffer(Lorg/mortbay/io/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->release()V

    .line 259
    return-void

    .line 257
    .end local v0    # "buffer":Lorg/mortbay/io/Buffer;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "len":I
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->release()V

    throw v3
.end method

.method public flushCache()V
    .locals 4

    .prologue
    .line 119
    iget-object v3, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 121
    monitor-enter p0

    .line 123
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v2, "values":Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 125
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/ResourceCache$Content;

    .line 128
    .local v0, "content":Lorg/mortbay/jetty/ResourceCache$Content;
    invoke-virtual {v0}, Lorg/mortbay/jetty/ResourceCache$Content;->invalidate()V

    goto :goto_0

    .line 136
    .end local v0    # "content":Lorg/mortbay/jetty/ResourceCache$Content;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "values":Ljava/util/ArrayList;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 131
    .restart local v1    # "iter":Ljava/util/Iterator;
    .restart local v2    # "values":Ljava/util/ArrayList;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 132
    const/4 v3, 0x0

    iput v3, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    .line 133
    const/4 v3, 0x0

    iput v3, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    .line 134
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 135
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 136
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "values":Ljava/util/ArrayList;
    :cond_1
    return-void
.end method

.method public getCachedFiles()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    return v0
.end method

.method public getMaxCacheSize()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCacheSize:I

    return v0
.end method

.method public getMaxCachedFileSize()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFileSize:I

    return v0
.end method

.method public getMaxCachedFiles()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFiles:I

    return v0
.end method

.method public lookup(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;
    .locals 4
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "resource"    # Lorg/mortbay/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 175
    .local v1, "content":Lorg/mortbay/jetty/ResourceCache$Content;
    iget-object v3, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    monitor-enter v3

    .line 178
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/mortbay/jetty/ResourceCache$Content;

    move-object v1, v0

    .line 180
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/jetty/ResourceCache$Content;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    monitor-exit v3

    .line 185
    .end local v1    # "content":Lorg/mortbay/jetty/ResourceCache$Content;
    :goto_0
    return-object v1

    .line 184
    .restart local v1    # "content":Lorg/mortbay/jetty/ResourceCache$Content;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/ResourceCache;->load(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;

    move-result-object v1

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public lookup(Ljava/lang/String;Lorg/mortbay/resource/ResourceFactory;)Lorg/mortbay/jetty/ResourceCache$Content;
    .locals 5
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/mortbay/resource/ResourceFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 155
    .local v1, "content":Lorg/mortbay/jetty/ResourceCache$Content;
    iget-object v4, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    monitor-enter v4

    .line 158
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/mortbay/jetty/ResourceCache$Content;

    move-object v1, v0

    .line 160
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/jetty/ResourceCache$Content;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    monitor-exit v4

    .line 166
    .end local v1    # "content":Lorg/mortbay/jetty/ResourceCache$Content;
    :goto_0
    return-object v1

    .line 164
    .restart local v1    # "content":Lorg/mortbay/jetty/ResourceCache$Content;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-interface {p2, p1}, Lorg/mortbay/resource/ResourceFactory;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 166
    .local v2, "resource":Lorg/mortbay/resource/Resource;
    invoke-direct {p0, p1, v2}, Lorg/mortbay/jetty/ResourceCache;->load(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;

    move-result-object v1

    goto :goto_0

    .line 164
    .end local v2    # "resource":Lorg/mortbay/resource/Resource;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setMaxCacheSize(I)V
    .locals 0
    .param p1, "maxCacheSize"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCacheSize:I

    .line 95
    invoke-virtual {p0}, Lorg/mortbay/jetty/ResourceCache;->flushCache()V

    .line 96
    return-void
.end method

.method public setMaxCachedFileSize(I)V
    .locals 0
    .param p1, "maxCachedFileSize"    # I

    .prologue
    .line 81
    iput p1, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFileSize:I

    .line 82
    invoke-virtual {p0}, Lorg/mortbay/jetty/ResourceCache;->flushCache()V

    .line 83
    return-void
.end method

.method public setMaxCachedFiles(I)V
    .locals 0
    .param p1, "maxCachedFiles"    # I

    .prologue
    .line 113
    iput p1, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFiles:I

    .line 114
    return-void
.end method
