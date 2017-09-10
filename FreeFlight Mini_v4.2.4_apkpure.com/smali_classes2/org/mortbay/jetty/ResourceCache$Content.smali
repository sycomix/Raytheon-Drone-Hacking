.class public Lorg/mortbay/jetty/ResourceCache$Content;
.super Ljava/lang/Object;
.source "ResourceCache.java"

# interfaces
.implements Lorg/mortbay/jetty/HttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/ResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Content"
.end annotation


# instance fields
.field _buffer:Lorg/mortbay/io/Buffer;

.field _contentType:Lorg/mortbay/io/Buffer;

.field _key:Ljava/lang/String;

.field _lastModified:J

.field _lastModifiedBytes:Lorg/mortbay/io/Buffer;

.field _next:Lorg/mortbay/jetty/ResourceCache$Content;

.field _prev:Lorg/mortbay/jetty/ResourceCache$Content;

.field _resource:Lorg/mortbay/resource/Resource;

.field private final this$0:Lorg/mortbay/jetty/ResourceCache;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/ResourceCache;Lorg/mortbay/resource/Resource;)V
    .locals 2
    .param p2, "resource"    # Lorg/mortbay/resource/Resource;

    .prologue
    .line 279
    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_resource:Lorg/mortbay/resource/Resource;

    .line 282
    iput-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 283
    iput-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 284
    invoke-static {p1}, Lorg/mortbay/jetty/ResourceCache;->access$000(Lorg/mortbay/jetty/ResourceCache;)Lorg/mortbay/jetty/MimeTypes;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_resource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_contentType:Lorg/mortbay/io/Buffer;

    .line 286
    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_lastModified:J

    .line 287
    return-void
.end method


# virtual methods
.method cache(Ljava/lang/String;)V
    .locals 4
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_key:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v0, v0, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 294
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iput-object p0, v0, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 295
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object p0, v0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 297
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 298
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v0, v0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iput-object p0, v0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 301
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v0, v0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_key:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget v1, v0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    .line 303
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget v1, v0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    .line 304
    iget-wide v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_lastModified:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 305
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    iget-wide v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_lastModified:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lorg/mortbay/jetty/HttpFields;->formatDate(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_lastModifiedBytes:Lorg/mortbay/io/Buffer;

    .line 306
    :cond_2
    return-void
.end method

.method public getBuffer()Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 415
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/mortbay/io/View;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-direct {v0, v1}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_resource:Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_resource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v0

    .line 433
    :goto_0
    return-wide v0

    .line 431
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getContentType()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_contentType:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_resource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_lastModifiedBytes:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getResource()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_resource:Lorg/mortbay/resource/Resource;

    return-object v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 360
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v0, v0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_key:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget v1, v1, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    .line 366
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget v1, v0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    .line 368
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v0, v0, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-ne v0, p0, :cond_1

    .line 369
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v1, v0, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 373
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v0, v0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-ne v0, p0, :cond_2

    .line 374
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v1, v0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 378
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 380
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_resource:Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_resource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->release()V

    .line 382
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_resource:Lorg/mortbay/resource/Resource;

    .line 384
    monitor-exit p0

    .line 385
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v1, v0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 376
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v1, v0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValid()Z
    .locals 6

    .prologue
    .line 329
    iget-wide v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_lastModified:J

    iget-object v4, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_resource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 331
    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v2, v2, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-eq v2, p0, :cond_3

    .line 333
    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 334
    .local v1, "tp":Lorg/mortbay/jetty/ResourceCache$Content;
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 336
    .local v0, "tn":Lorg/mortbay/jetty/ResourceCache$Content;
    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v2, v2, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 337
    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iput-object p0, v2, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 338
    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object p0, v2, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 340
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 342
    if-eqz v1, :cond_1

    .line 343
    iput-object v0, v1, Lorg/mortbay/jetty/ResourceCache$Content;->_next:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 344
    :cond_1
    if-eqz v0, :cond_2

    .line 345
    iput-object v1, v0, Lorg/mortbay/jetty/ResourceCache$Content;->_prev:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 347
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iget-object v2, v2, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-ne v2, p0, :cond_3

    if-eqz v1, :cond_3

    .line 348
    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->this$0:Lorg/mortbay/jetty/ResourceCache;

    iput-object v1, v2, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    .line 350
    .end local v0    # "tn":Lorg/mortbay/jetty/ResourceCache$Content;
    .end local v1    # "tp":Lorg/mortbay/jetty/ResourceCache$Content;
    :cond_3
    const/4 v2, 0x1

    .line 354
    :goto_0
    return v2

    .line 353
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/ResourceCache$Content;->invalidate()V

    .line 354
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public setBuffer(Lorg/mortbay/io/Buffer;)V
    .locals 0
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 421
    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_buffer:Lorg/mortbay/io/Buffer;

    .line 422
    return-void
.end method

.method public setContentType(Lorg/mortbay/io/Buffer;)V
    .locals 0
    .param p1, "type"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 402
    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->_contentType:Lorg/mortbay/io/Buffer;

    .line 403
    return-void
.end method
