.class final Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
.super Ljava/lang/Object;
.source "AttributeMetadataRegistryBuilder.java"


# instance fields
.field private final creators:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/AttributeCreatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Lcom/google/gdata/model/MetadataRegistry;


# direct methods
.method constructor <init>(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 1
    .param p1, "root"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->creators:Ljava/util/SortedMap;

    .line 53
    iput-object p1, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->root:Lcom/google/gdata/model/MetadataRegistry;

    .line 54
    return-void
.end method


# virtual methods
.method build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreatorImpl;
    .locals 4
    .param p3, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/AttributeCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    const-string v2, "parent"

    invoke-static {p1, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "key"

    invoke-static {p2, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p1, p2, p3}, Lcom/google/gdata/model/TransformKey;->forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;

    move-result-object v1

    .line 90
    .local v1, "transformKey":Lcom/google/gdata/model/TransformKey;
    iget-object v3, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->root:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v3

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->creators:Ljava/util/SortedMap;

    invoke-interface {v2, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    .line 92
    .local v0, "creator":Lcom/google/gdata/model/AttributeCreatorImpl;
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    .end local v0    # "creator":Lcom/google/gdata/model/AttributeCreatorImpl;
    iget-object v2, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->root:Lcom/google/gdata/model/MetadataRegistry;

    invoke-direct {v0, v2, v1}, Lcom/google/gdata/model/AttributeCreatorImpl;-><init>(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/TransformKey;)V

    .line 94
    .restart local v0    # "creator":Lcom/google/gdata/model/AttributeCreatorImpl;
    iget-object v2, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->creators:Ljava/util/SortedMap;

    invoke-interface {v2, v1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->root:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v2}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 97
    :cond_0
    monitor-exit v3

    return-object v0

    .line 98
    .end local v0    # "creator":Lcom/google/gdata/model/AttributeCreatorImpl;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method create(Lcom/google/gdata/model/Schema;)Lcom/google/gdata/model/AttributeMetadataRegistry;
    .locals 1
    .param p1, "schema"    # Lcom/google/gdata/model/Schema;

    .prologue
    .line 76
    new-instance v0, Lcom/google/gdata/model/AttributeMetadataRegistry;

    invoke-direct {v0, p1, p0}, Lcom/google/gdata/model/AttributeMetadataRegistry;-><init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;)V

    return-object v0
.end method

.method getCreators()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/AttributeCreatorImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->creators:Ljava/util/SortedMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method merge(Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;)V
    .locals 5
    .param p1, "other"    # Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    .prologue
    .line 61
    iget-object v4, p1, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->creators:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/AttributeCreatorImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/TransformKey;

    .line 63
    .local v3, "key":Lcom/google/gdata/model/TransformKey;
    iget-object v4, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->creators:Ljava/util/SortedMap;

    invoke-interface {v4, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    .line 64
    .local v0, "creator":Lcom/google/gdata/model/AttributeCreatorImpl;
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    .end local v0    # "creator":Lcom/google/gdata/model/AttributeCreatorImpl;
    iget-object v4, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->root:Lcom/google/gdata/model/MetadataRegistry;

    invoke-direct {v0, v4, v3}, Lcom/google/gdata/model/AttributeCreatorImpl;-><init>(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/TransformKey;)V

    .line 66
    .restart local v0    # "creator":Lcom/google/gdata/model/AttributeCreatorImpl;
    iget-object v4, p0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->creators:Ljava/util/SortedMap;

    invoke-interface {v4, v3, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/MetadataCreatorImpl;

    invoke-virtual {v0, v4}, Lcom/google/gdata/model/AttributeCreatorImpl;->merge(Lcom/google/gdata/model/MetadataCreatorImpl;)V

    goto :goto_0

    .line 70
    .end local v0    # "creator":Lcom/google/gdata/model/AttributeCreatorImpl;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/AttributeCreatorImpl;>;"
    .end local v3    # "key":Lcom/google/gdata/model/TransformKey;
    :cond_1
    return-void
.end method
