.class public Lorg/mortbay/io/BufferCache$CachedBuffer;
.super Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;
.source "BufferCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/BufferCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedBuffer"
.end annotation


# instance fields
.field private _associateMap:Ljava/util/HashMap;

.field private _ordinal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;-><init>(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    .line 121
    iput p2, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->_ordinal:I

    .line 122
    return-void
.end method


# virtual methods
.method public getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    goto :goto_0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->_ordinal:I

    return v0
.end method

.method public setAssociate(Ljava/lang/Object;Lorg/mortbay/io/BufferCache$CachedBuffer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "associate"    # Lorg/mortbay/io/BufferCache$CachedBuffer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method
