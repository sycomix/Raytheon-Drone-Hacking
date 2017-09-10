.class final Lcom/google/gdata/model/ElementMetadataRegistry;
.super Ljava/lang/Object;
.source "ElementMetadataRegistry.java"


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final schema:Lcom/google/gdata/model/Schema;

.field private final transforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/ElementTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementMetadataRegistryBuilder;)V
    .locals 1
    .param p1, "schema"    # Lcom/google/gdata/model/Schema;
    .param p2, "elementBuilder"    # Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementMetadataRegistry;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 52
    iput-object p1, p0, Lcom/google/gdata/model/ElementMetadataRegistry;->schema:Lcom/google/gdata/model/Schema;

    .line 53
    invoke-direct {p0, p2}, Lcom/google/gdata/model/ElementMetadataRegistry;->getTransforms(Lcom/google/gdata/model/ElementMetadataRegistryBuilder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementMetadataRegistry;->transforms:Ljava/util/Map;

    .line 54
    return-void
.end method

.method private getTransform(Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementTransform;
    .locals 4
    .param p1, "transformKey"    # Lcom/google/gdata/model/TransformKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementTransform;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 116
    .local v2, "matched":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/ElementTransform;>;"
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataRegistry;->transforms:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementTransform;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/TransformKey;

    invoke-virtual {v3, p1}, Lcom/google/gdata/model/TransformKey;->matches(Lcom/google/gdata/model/TransformKey;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementTransform;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 125
    invoke-static {p2, v2}, Lcom/google/gdata/model/ElementTransform;->create(Lcom/google/gdata/model/ElementKey;Ljava/lang/Iterable;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v3

    :goto_1
    return-object v3

    .line 123
    :pswitch_0
    sget-object v3, Lcom/google/gdata/model/ElementTransform;->EMPTY:Lcom/google/gdata/model/ElementTransform;

    goto :goto_1

    .line 124
    :pswitch_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/ElementTransform;

    goto :goto_1

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTransforms(Lcom/google/gdata/model/ElementMetadataRegistryBuilder;)Ljava/util/Map;
    .locals 5
    .param p1, "elementBuilder"    # Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadataRegistryBuilder;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/ElementTransform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 65
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementTransform;>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->getCreators()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/ElementCreatorImpl;

    invoke-virtual {v3}, Lcom/google/gdata/model/ElementCreatorImpl;->toTransform()Lcom/google/gdata/model/ElementTransform;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 68
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;
    .locals 5
    .param p3, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TD;TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    invoke-static {p1, p2, p3}, Lcom/google/gdata/model/TransformKey;->forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;

    move-result-object v2

    .line 80
    .local v2, "transformKey":Lcom/google/gdata/model/TransformKey;
    iget-object v4, p0, Lcom/google/gdata/model/ElementMetadataRegistry;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/ElementMetadata;

    .line 83
    .local v3, "transformed":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<TD;TE;>;"
    if-nez v3, :cond_0

    .line 84
    invoke-direct {p0, v2, p2}, Lcom/google/gdata/model/ElementMetadataRegistry;->getTransform(Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v1

    .line 85
    .local v1, "transform":Lcom/google/gdata/model/ElementTransform;
    iget-object v4, p0, Lcom/google/gdata/model/ElementMetadataRegistry;->schema:Lcom/google/gdata/model/Schema;

    invoke-virtual {v1, v4, p1, p2, p3}, Lcom/google/gdata/model/ElementTransform;->toMetadata(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v3

    .line 87
    iget-object v4, p0, Lcom/google/gdata/model/ElementMetadataRegistry;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadata;

    .line 89
    .local v0, "previous":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<TD;TE;>;"
    if-eqz v0, :cond_0

    .line 90
    move-object v3, v0

    .line 94
    .end local v0    # "previous":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<TD;TE;>;"
    .end local v1    # "transform":Lcom/google/gdata/model/ElementTransform;
    :cond_0
    return-object v3
.end method

.method getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;
    .locals 2
    .param p3, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementTransform;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-static {p1, p2, p3}, Lcom/google/gdata/model/TransformKey;->forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;

    move-result-object v0

    .line 106
    .local v0, "transformKey":Lcom/google/gdata/model/TransformKey;
    invoke-direct {p0, v0, p2}, Lcom/google/gdata/model/ElementMetadataRegistry;->getTransform(Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v1

    return-object v1
.end method
