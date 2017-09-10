.class public Lorg/mortbay/io/BufferCache;
.super Ljava/lang/Object;
.source "BufferCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/io/BufferCache$CachedBuffer;
    }
.end annotation


# instance fields
.field private _bufferMap:Ljava/util/HashMap;

.field private _index:Ljava/util/ArrayList;

.field private _stringMap:Lorg/mortbay/util/StringMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/io/BufferCache;->_bufferMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Lorg/mortbay/util/StringMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mortbay/util/StringMap;-><init>(Z)V

    iput-object v0, p0, Lorg/mortbay/io/BufferCache;->_stringMap:Lorg/mortbay/util/StringMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/io/BufferCache;->_index:Ljava/util/ArrayList;

    .line 113
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .prologue
    .line 41
    new-instance v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-direct {v0, p1, p2}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    .line 42
    .local v0, "buffer":Lorg/mortbay/io/BufferCache$CachedBuffer;
    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->_stringMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v1, p1, v0}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p2, v1

    if-lez v1, :cond_0

    .line 45
    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->_index:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    return-object v0
.end method

.method public get(I)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 1
    .param p1, "ordinal"    # I

    .prologue
    .line 52
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/mortbay/io/BufferCache;->_stringMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    return-object v0
.end method

.method public get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 1
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/mortbay/io/BufferCache;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    return-object v0
.end method

.method public getBest([BII)Lorg/mortbay/io/BufferCache$CachedBuffer;
    .locals 2
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 82
    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->_stringMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v1, p1, p2, p3}, Lorg/mortbay/util/StringMap;->getBestEntry([BII)Ljava/util/Map$Entry;

    move-result-object v0

    .line 83
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 85
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOrdinal(Lorg/mortbay/io/Buffer;)I
    .locals 1
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 105
    instance-of v0, p1, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 106
    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    .line 108
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 109
    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 91
    .local v0, "b":Lorg/mortbay/io/Buffer;
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    .end local v0    # "b":Lorg/mortbay/io/Buffer;
    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lorg/mortbay/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    .line 95
    :cond_0
    return-object v0
.end method

.method public lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;
    .locals 2
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lorg/mortbay/io/BufferCache;->get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 70
    .local v0, "b":Lorg/mortbay/io/Buffer;
    if-nez v0, :cond_1

    .line 72
    instance-of v1, p1, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-eqz v1, :cond_0

    .line 77
    .end local v0    # "b":Lorg/mortbay/io/Buffer;
    .end local p1    # "buffer":Lorg/mortbay/io/Buffer;
    :goto_0
    return-object p1

    .line 74
    .restart local v0    # "b":Lorg/mortbay/io/Buffer;
    .restart local p1    # "buffer":Lorg/mortbay/io/Buffer;
    :cond_0
    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    .end local v0    # "b":Lorg/mortbay/io/Buffer;
    invoke-direct {v0, p1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    move-object p1, v0

    goto :goto_0

    .restart local v0    # "b":Lorg/mortbay/io/Buffer;
    :cond_1
    move-object p1, v0

    .line 77
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CACHE[bufferMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",stringMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->_stringMap:Lorg/mortbay/util/StringMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/io/BufferCache;->_index:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/mortbay/io/Buffer;)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
