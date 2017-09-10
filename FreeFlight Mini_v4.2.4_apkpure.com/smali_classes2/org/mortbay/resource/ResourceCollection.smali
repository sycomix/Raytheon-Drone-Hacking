.class public Lorg/mortbay/resource/ResourceCollection;
.super Lorg/mortbay/resource/Resource;
.source "ResourceCollection.java"


# instance fields
.field private _resources:[Lorg/mortbay/resource/Resource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/mortbay/resource/Resource;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "csvResources"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/mortbay/resource/Resource;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lorg/mortbay/resource/ResourceCollection;->setResources(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "resources"    # [Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/mortbay/resource/Resource;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lorg/mortbay/resource/ResourceCollection;->setResources([Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>([Lorg/mortbay/resource/Resource;)V
    .locals 0
    .param p1, "resources"    # [Lorg/mortbay/resource/Resource;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/mortbay/resource/Resource;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lorg/mortbay/resource/ResourceCollection;->setResources([Lorg/mortbay/resource/Resource;)V

    .line 53
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v4, :cond_0

    .line 186
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "*resources* not set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    :cond_0
    if-nez p1, :cond_1

    .line 189
    new-instance v4, Ljava/net/MalformedURLException;

    invoke-direct {v4}, Ljava/net/MalformedURLException;-><init>()V

    throw v4

    .line 191
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "/"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    move-object v2, p0

    .line 227
    :cond_3
    :goto_0
    return-object v2

    .line 194
    :cond_4
    const/4 v2, 0x0

    .line 195
    .local v2, "resource":Lorg/mortbay/resource/Resource;
    const/4 v3, 0x0

    .line 196
    .local v3, "resources":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .line 197
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 199
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 202
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_2
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_9

    .line 210
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 211
    .local v1, "r":Lorg/mortbay/resource/Resource;
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 213
    if-eqz v2, :cond_6

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "resources":Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .restart local v3    # "resources":Ljava/util/ArrayList;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const/4 v2, 0x0

    .line 219
    :cond_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 197
    .end local v1    # "r":Lorg/mortbay/resource/Resource;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_9
    if-nez v2, :cond_3

    .line 225
    if-eqz v3, :cond_a

    .line 226
    new-instance v2, Lorg/mortbay/resource/ResourceCollection;

    .end local v2    # "resource":Lorg/mortbay/resource/Resource;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/mortbay/resource/Resource;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/mortbay/resource/Resource;

    check-cast v4, [Lorg/mortbay/resource/Resource;

    invoke-direct {v2, v4}, Lorg/mortbay/resource/ResourceCollection;-><init>([Lorg/mortbay/resource/Resource;)V

    goto :goto_0

    .line 227
    .restart local v2    # "resource":Lorg/mortbay/resource/Resource;
    :cond_a
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public delete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, "resource":Lorg/mortbay/resource/Resource;
    const/4 v3, 0x0

    .line 241
    .local v3, "resources":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .line 242
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 244
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 247
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 256
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 257
    .local v1, "r":Lorg/mortbay/resource/Resource;
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    if-eqz v2, :cond_1

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "resources":Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .restart local v3    # "resources":Ljava/util/ArrayList;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "r":Lorg/mortbay/resource/Resource;
    :cond_3
    move-object v4, v2

    .line 272
    :goto_2
    return-object v4

    .line 242
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_5
    if-eqz v2, :cond_6

    move-object v4, v2

    .line 269
    goto :goto_2

    .line 270
    :cond_6
    if-eqz v3, :cond_7

    move-object v4, v3

    .line 271
    goto :goto_2

    .line 272
    :cond_7
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v2, :cond_0

    .line 294
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "*resources* not set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 298
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 299
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 302
    .end local v0    # "f":Ljava/io/File;
    :goto_1
    return-object v0

    .line 296
    .restart local v0    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v2, :cond_0

    .line 309
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "*resources* not set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 313
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 314
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 317
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_1
    return-object v1

    .line 311
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 323
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v2, :cond_0

    .line 324
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "*resources* not set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 328
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 332
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 326
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v2, :cond_0

    .line 339
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "*resources* not set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 341
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 343
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 344
    .local v1, "os":Ljava/io/OutputStream;
    if-eqz v1, :cond_1

    .line 347
    .end local v1    # "os":Ljava/io/OutputStream;
    :goto_1
    return-object v1

    .line 341
    .restart local v1    # "os":Ljava/io/OutputStream;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v1    # "os":Ljava/io/OutputStream;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getResources()[Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 353
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v2, :cond_0

    .line 354
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "*resources* not set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 358
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 359
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_1

    .line 362
    .end local v1    # "url":Ljava/net/URL;
    :goto_1
    return-object v1

    .line 356
    .restart local v1    # "url":Ljava/net/URL;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "url":Ljava/net/URL;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public lastModified()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 377
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v1, :cond_0

    .line 378
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "*resources* not set."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 382
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    .line 383
    .local v2, "lm":J
    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 386
    .end local v2    # "lm":J
    :goto_1
    return-wide v2

    .line 380
    .restart local v2    # "lm":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "lm":J
    :cond_2
    move-wide v2, v4

    .line 386
    goto :goto_1
.end method

.method public length()J
    .locals 2

    .prologue
    .line 392
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 401
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v4, :cond_0

    .line 402
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "*resources* not set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 404
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v3, "set":Ljava/util/HashSet;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 407
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 409
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 405
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "j":I
    .end local v2    # "list":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public release()V
    .locals 3

    .prologue
    .line 417
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v1, :cond_0

    .line 418
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "*resources* not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 421
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->release()V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_1
    return-void
.end method

.method public renameTo(Lorg/mortbay/resource/Resource;)Z
    .locals 1
    .param p1, "dest"    # Lorg/mortbay/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setResources(Ljava/lang/String;)V
    .locals 7
    .param p1, "csvResources"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v4, :cond_0

    .line 132
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "*resources* already set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_0
    if-nez p1, :cond_1

    .line 135
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "*csvResources* must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ",;"

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 139
    .local v2, "len":I
    if-nez v2, :cond_2

    .line 140
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "arg *resources* must be one or more resources."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_2
    new-array v4, v2, [Lorg/mortbay/resource/Resource;

    iput-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v5

    aput-object v5, v4, v1

    .line 148
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    .line 149
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " is not an existing directory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_5
    return-void
.end method

.method public setResources([Ljava/lang/String;)V
    .locals 5
    .param p1, "resources"    # [Ljava/lang/String;

    .prologue
    .line 99
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v2, :cond_0

    .line 100
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "*resources* already set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_0
    if-nez p1, :cond_1

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "*resources* must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_1
    array-length v2, p1

    if-nez v2, :cond_2

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "arg *resources* must be one or more resources."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_2
    array-length v2, p1

    new-array v2, v2, [Lorg/mortbay/resource/Resource;

    iput-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 113
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v3, p1, v1

    invoke-static {v3}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    aput-object v3, v2, v1

    .line 114
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    .line 115
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is not an existing directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_5
    return-void
.end method

.method public setResources([Lorg/mortbay/resource/Resource;)V
    .locals 5
    .param p1, "resources"    # [Lorg/mortbay/resource/Resource;

    .prologue
    .line 74
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v2, :cond_0

    .line 75
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "*resources* already set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    if-nez p1, :cond_1

    .line 78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "*resources* must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    array-length v2, p1

    if-nez v2, :cond_2

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "arg *resources* must be one or more resources."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_2
    iput-object p1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 86
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v1, v2, v0

    .line 87
    .local v1, "r":Lorg/mortbay/resource/Resource;
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    .line 88
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is not an existing directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "r":Lorg/mortbay/resource/Resource;
    :cond_5
    return-void
.end method

.method public setResourcesAsCSV(Ljava/lang/String;)V
    .locals 0
    .param p1, "csvResources"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lorg/mortbay/resource/ResourceCollection;->setResources(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 436
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v2, :cond_0

    .line 437
    const-string v2, ""

    .line 442
    :goto_0
    return-object v2

    .line 439
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 441
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 442
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
