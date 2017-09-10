.class final Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
.super Ljava/lang/Object;
.source "ElementMetadataRegistryBuilder.java"


# instance fields
.field private final creators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/ElementCreatorImpl;",
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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->creators:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->root:Lcom/google/gdata/model/MetadataRegistry;

    .line 49
    return-void
.end method


# virtual methods
.method build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 4
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
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    const-string v2, "key"

    invoke-static {p2, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p1, p2, p3}, Lcom/google/gdata/model/TransformKey;->forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;

    move-result-object v1

    .line 94
    .local v1, "transformKey":Lcom/google/gdata/model/TransformKey;
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->root:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v3

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->creators:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl;

    .line 96
    .local v0, "creator":Lcom/google/gdata/model/ElementCreatorImpl;
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/google/gdata/model/ElementCreatorImpl;

    .end local v0    # "creator":Lcom/google/gdata/model/ElementCreatorImpl;
    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->root:Lcom/google/gdata/model/MetadataRegistry;

    invoke-direct {v0, v2, v1}, Lcom/google/gdata/model/ElementCreatorImpl;-><init>(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/TransformKey;)V

    .line 98
    .restart local v0    # "creator":Lcom/google/gdata/model/ElementCreatorImpl;
    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->creators:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->root:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v2}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 101
    :cond_0
    monitor-exit v3

    return-object v0

    .line 102
    .end local v0    # "creator":Lcom/google/gdata/model/ElementCreatorImpl;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method create(Lcom/google/gdata/model/Schema;)Lcom/google/gdata/model/ElementMetadataRegistry;
    .locals 1
    .param p1, "schema"    # Lcom/google/gdata/model/Schema;

    .prologue
    .line 71
    new-instance v0, Lcom/google/gdata/model/ElementMetadataRegistry;

    invoke-direct {v0, p1, p0}, Lcom/google/gdata/model/ElementMetadataRegistry;-><init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementMetadataRegistryBuilder;)V

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
            "Lcom/google/gdata/model/ElementCreatorImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->creators:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method isRegistered(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Z
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
            ")Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    const-string v1, "key"

    invoke-static {p2, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p1, p2, p3}, Lcom/google/gdata/model/TransformKey;->forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;

    move-result-object v0

    .line 82
    .local v0, "transformKey":Lcom/google/gdata/model/TransformKey;
    iget-object v1, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->creators:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method merge(Lcom/google/gdata/model/ElementMetadataRegistryBuilder;)V
    .locals 5
    .param p1, "other"    # Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .prologue
    .line 56
    iget-object v4, p1, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->creators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 57
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/TransformKey;

    .line 58
    .local v3, "key":Lcom/google/gdata/model/TransformKey;
    iget-object v4, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->creators:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl;

    .line 59
    .local v0, "creator":Lcom/google/gdata/model/ElementCreatorImpl;
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/google/gdata/model/ElementCreatorImpl;

    .end local v0    # "creator":Lcom/google/gdata/model/ElementCreatorImpl;
    iget-object v4, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->root:Lcom/google/gdata/model/MetadataRegistry;

    invoke-direct {v0, v4, v3}, Lcom/google/gdata/model/ElementCreatorImpl;-><init>(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/TransformKey;)V

    .line 61
    .restart local v0    # "creator":Lcom/google/gdata/model/ElementCreatorImpl;
    iget-object v4, p0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->creators:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/ElementCreatorImpl;

    invoke-virtual {v0, v4}, Lcom/google/gdata/model/ElementCreatorImpl;->merge(Lcom/google/gdata/model/ElementCreatorImpl;)V

    goto :goto_0

    .line 65
    .end local v0    # "creator":Lcom/google/gdata/model/ElementCreatorImpl;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    .end local v3    # "key":Lcom/google/gdata/model/TransformKey;
    :cond_1
    return-void
.end method
