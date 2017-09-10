.class public final Lcom/google/gdata/util/common/net/UriParameterMap;
.super Lcom/google/common/collect/ForwardingMultimap;
.source "UriParameterMap.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMultimap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/common/collect/ListMultimap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final EMPTY_MAP:Lcom/google/gdata/util/common/net/UriParameterMap;

.field private static final serialVersionUID:J = -0x2a612f103f1116caL


# instance fields
.field private final delegate:Lcom/google/common/collect/ListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/common/net/UriParameterMap;-><init>(Lcom/google/common/collect/ListMultimap;)V

    sput-object v0, Lcom/google/gdata/util/common/net/UriParameterMap;->EMPTY_MAP:Lcom/google/gdata/util/common/net/UriParameterMap;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/google/common/collect/LinkedListMultimap;->create()Lcom/google/common/collect/LinkedListMultimap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/net/UriParameterMap;-><init>(Lcom/google/common/collect/ListMultimap;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ListMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "delegate":Lcom/google/common/collect/ListMultimap;, "Lcom/google/common/collect/ListMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMultimap;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate:Lcom/google/common/collect/ListMultimap;

    .line 93
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lcom/google/gdata/util/common/net/UriEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/net/UriParameterMap;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/gdata/util/common/net/UriParameterMap;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-direct {v0}, Lcom/google/gdata/util/common/net/UriParameterMap;-><init>()V

    .line 125
    .local v0, "map":Lcom/google/gdata/util/common/net/UriParameterMap;
    invoke-virtual {v0, p0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->merge(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 126
    return-object v0
.end method

.method public static unmodifiableMap(Lcom/google/gdata/util/common/net/UriParameterMap;)Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 2
    .param p0, "map"    # Lcom/google/gdata/util/common/net/UriParameterMap;

    .prologue
    .line 142
    new-instance v0, Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Multimaps;->unmodifiableListMultimap(Lcom/google/common/collect/ListMultimap;)Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/common/net/UriParameterMap;-><init>(Lcom/google/common/collect/ListMultimap;)V

    return-object v0
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/nio/charset/Charset;)V
    .locals 4
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->entries()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/google/gdata/util/common/net/UriEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 215
    const-string v2, ""

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    const-string v2, "="

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/google/gdata/util/common/net/UriEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 219
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "&"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 223
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuilder;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/net/UriParameterMap;->appendTo(Ljava/lang/Appendable;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public clone()Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/LinkedListMultimap;->create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedListMultimap;

    move-result-object v0

    .line 233
    .local v0, "multimap":Lcom/google/common/collect/ListMultimap;, "Lcom/google/common/collect/ListMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/common/net/UriParameterMap;-><init>(Lcom/google/common/collect/ListMultimap;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->clone()Lcom/google/gdata/util/common/net/UriParameterMap;

    move-result-object v0

    return-object v0
.end method

.method public copyToArrayMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 255
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/ListMultimap;->asMap()Ljava/util/Map;

    move-result-object v1

    .line 256
    .local v1, "delegateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 257
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 258
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 260
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .end local v4    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    return-object v5
.end method

.method protected delegate()Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate:Lcom/google/common/collect/ListMultimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method merge(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;

    .prologue
    .line 159
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p2}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/util/common/net/UriParameterMap$1;

    invoke-direct {v1, p0}, Lcom/google/gdata/util/common/net/UriParameterMap$1;-><init>(Lcom/google/gdata/util/common/net/UriParameterMap;)V

    invoke-static {p1, v0, v1}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->parseWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;)V

    .line 167
    return-void
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/net/UriParameterMap;->replaceValues(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/net/UriParameterMap;->replaceValues(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/ListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/google/gdata/util/common/net/UriEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/net/UriParameterMap;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "encoding"    # Ljava/nio/charset/Charset;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->appendTo(Ljava/lang/StringBuilder;Ljava/nio/charset/Charset;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
