.class public final Lcom/google/gdata/model/MetadataRegistry;
.super Ljava/lang/Object;
.source "MetadataRegistry.java"


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cachedSchema:Lcom/google/gdata/model/Schema;

.field private final elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/ElementMetadataRegistryBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    .line 62
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 0
    .param p1, "source"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/gdata/model/MetadataRegistry;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataRegistry;->merge(Lcom/google/gdata/model/MetadataRegistry;)Lcom/google/gdata/model/MetadataRegistry;

    .line 72
    return-void
.end method

.method private declared-synchronized buildSchema()Lcom/google/gdata/model/Schema;
    .locals 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->cachedSchema:Lcom/google/gdata/model/Schema;

    .line 182
    .local v0, "instance":Lcom/google/gdata/model/Schema;
    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/google/gdata/model/MetadataRegistry;->whitelistAttributes()V

    .line 184
    invoke-direct {p0}, Lcom/google/gdata/model/MetadataRegistry;->whitelistElements()V

    .line 186
    new-instance v0, Lcom/google/gdata/model/Schema;

    .end local v0    # "instance":Lcom/google/gdata/model/Schema;
    invoke-direct {v0, p0}, Lcom/google/gdata/model/Schema;-><init>(Lcom/google/gdata/model/MetadataRegistry;)V

    .restart local v0    # "instance":Lcom/google/gdata/model/Schema;
    iput-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->cachedSchema:Lcom/google/gdata/model/Schema;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-object v0

    .line 181
    .end local v0    # "instance":Lcom/google/gdata/model/Schema;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getOrCreateAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/model/Schema;->getRootKey(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v1

    .line 435
    .local v1, "rootKey":Lcom/google/gdata/model/Schema$RootKey;
    iget-object v2, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    .line 436
    .local v0, "attRegistry":Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    .end local v0    # "attRegistry":Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
    invoke-direct {v0, p0}, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;-><init>(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 438
    .restart local v0    # "attRegistry":Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
    iget-object v2, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-object v0

    .line 434
    .end local v0    # "attRegistry":Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
    .end local v1    # "rootKey":Lcom/google/gdata/model/Schema$RootKey;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getOrCreateElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementMetadataRegistryBuilder;"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/model/Schema;->getRootKey(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v1

    .line 396
    .local v1, "rootKey":Lcom/google/gdata/model/Schema$RootKey;
    iget-object v2, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .line 397
    .local v0, "elementRegistry":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .end local v0    # "elementRegistry":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    invoke-direct {v0, p0}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;-><init>(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 399
    .restart local v0    # "elementRegistry":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    iget-object v2, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-object v0

    .line 395
    .end local v0    # "elementRegistry":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    .end local v1    # "rootKey":Lcom/google/gdata/model/Schema$RootKey;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private whitelistAttributes()V
    .locals 22

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .line 212
    .local v4, "builder":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v17

    .line 215
    .local v17, "whitelistMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/TransformKey;Ljava/util/Set<Lcom/google/gdata/model/AttributeKey<*>;>;>;"
    invoke-virtual {v4}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->getCreators()Ljava/util/Map;

    move-result-object v5

    .line 218
    .local v5, "creators":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 219
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gdata/model/TransformKey;

    .line 220
    .local v11, "key":Lcom/google/gdata/model/TransformKey;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gdata/model/ElementCreatorImpl;

    .line 221
    .local v6, "element":Lcom/google/gdata/model/ElementCreatorImpl;
    invoke-virtual {v6}, Lcom/google/gdata/model/ElementCreatorImpl;->getAttributeWhitelist()Ljava/util/Set;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 222
    invoke-virtual {v6}, Lcom/google/gdata/model/ElementCreatorImpl;->getAttributeWhitelist()Ljava/util/Set;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 227
    .end local v6    # "element":Lcom/google/gdata/model/ElementCreatorImpl;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    .end local v11    # "key":Lcom/google/gdata/model/TransformKey;
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 228
    .local v15, "whitelistEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Ljava/util/Set<Lcom/google/gdata/model/AttributeKey<*>;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gdata/model/TransformKey;

    .line 229
    .restart local v11    # "key":Lcom/google/gdata/model/TransformKey;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    .line 230
    .local v14, "whitelist":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/AttributeKey<*>;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v18

    .line 231
    .local v18, "whitelistNames":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/QName;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/gdata/model/AttributeKey;

    .line 232
    .local v16, "whitelistKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-virtual/range {v16 .. v16}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    .end local v16    # "whitelistKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 237
    .local v2, "allAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/AttributeKey<*>;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 239
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/gdata/model/TransformKey;

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/google/gdata/model/TransformKey;->matches(Lcom/google/gdata/model/TransformKey;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 240
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/gdata/model/ElementCreatorImpl;

    invoke-virtual/range {v19 .. v19}, Lcom/google/gdata/model/ElementCreatorImpl;->getAttributeSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 244
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    :cond_6
    invoke-interface {v2, v14}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 245
    invoke-static {v14}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v12

    .line 246
    .local v12, "missing":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/AttributeKey<*>;>;"
    invoke-interface {v12, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 247
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Missing attributes!  Whitelist specified "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " but did not find those attributes."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 252
    .end local v12    # "missing":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/AttributeKey<*>;>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/AttributeKey;

    .line 253
    .local v3, "attribute":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-virtual {v3}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 254
    invoke-virtual {v11}, Lcom/google/gdata/model/TransformKey;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v13

    check-cast v13, Lcom/google/gdata/model/ElementKey;

    .line 255
    .local v13, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {v11}, Lcom/google/gdata/model/TransformKey;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v3, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    goto :goto_3

    .line 260
    .end local v2    # "allAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/AttributeKey<*>;>;"
    .end local v3    # "attribute":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .end local v4    # "builder":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    .end local v5    # "creators":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "key":Lcom/google/gdata/model/TransformKey;
    .end local v13    # "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v14    # "whitelist":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/AttributeKey<*>;>;"
    .end local v15    # "whitelistEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Ljava/util/Set<Lcom/google/gdata/model/AttributeKey<*>;>;>;"
    .end local v17    # "whitelistMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/TransformKey;Ljava/util/Set<Lcom/google/gdata/model/AttributeKey<*>;>;>;"
    .end local v18    # "whitelistNames":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/QName;>;"
    :cond_9
    return-void
.end method

.method private whitelistElements()V
    .locals 23

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 272
    .local v14, "rootEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/ElementMetadataRegistryBuilder;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .line 273
    .local v3, "builder":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v18

    .line 276
    .local v18, "whitelistMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/TransformKey;Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;>;"
    invoke-virtual {v3}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->getCreators()Ljava/util/Map;

    move-result-object v5

    .line 279
    .local v5, "creators":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 280
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gdata/model/TransformKey;

    .line 281
    .local v11, "key":Lcom/google/gdata/model/TransformKey;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gdata/model/ElementCreatorImpl;

    .line 282
    .local v6, "element":Lcom/google/gdata/model/ElementCreatorImpl;
    invoke-virtual {v6}, Lcom/google/gdata/model/ElementCreatorImpl;->getElementWhitelist()Ljava/util/Set;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 283
    invoke-virtual {v6}, Lcom/google/gdata/model/ElementCreatorImpl;->getElementWhitelist()Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    .end local v6    # "element":Lcom/google/gdata/model/ElementCreatorImpl;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    .end local v11    # "key":Lcom/google/gdata/model/TransformKey;
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 289
    .local v16, "whitelistEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gdata/model/TransformKey;

    .line 290
    .restart local v11    # "key":Lcom/google/gdata/model/TransformKey;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    .line 291
    .local v15, "whitelist":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v19

    .line 292
    .local v19, "whitelistNames":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/QName;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/gdata/model/ElementKey;

    .line 293
    .local v17, "whitelistKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual/range {v17 .. v17}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 296
    .end local v17    # "whitelistKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 298
    .local v2, "allChildren":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 300
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/gdata/model/TransformKey;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/google/gdata/model/TransformKey;->matches(Lcom/google/gdata/model/TransformKey;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 301
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/gdata/model/ElementCreatorImpl;

    invoke-virtual/range {v20 .. v20}, Lcom/google/gdata/model/ElementCreatorImpl;->getElementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 305
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    :cond_6
    invoke-interface {v2, v15}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 306
    invoke-static {v15}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v12

    .line 307
    .local v12, "missing":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-interface {v12, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 308
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Missing children!  Whitelist specified "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " but did not find those child elements."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 313
    .end local v12    # "missing":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/ElementKey;

    .line 314
    .local v4, "child":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {v4}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 315
    invoke-virtual {v11}, Lcom/google/gdata/model/TransformKey;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v13

    check-cast v13, Lcom/google/gdata/model/ElementKey;

    .line 316
    .local v13, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {v11}, Lcom/google/gdata/model/TransformKey;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v4, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lcom/google/gdata/model/ElementCreator;->setVisible(Z)Lcom/google/gdata/model/ElementCreator;

    goto :goto_3

    .line 321
    .end local v2    # "allChildren":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;"
    .end local v3    # "builder":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    .end local v4    # "child":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v5    # "creators":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/ElementCreatorImpl;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "key":Lcom/google/gdata/model/TransformKey;
    .end local v13    # "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v14    # "rootEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/ElementMetadataRegistryBuilder;>;"
    .end local v15    # "whitelist":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;"
    .end local v16    # "whitelistEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/TransformKey;Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;>;"
    .end local v18    # "whitelistMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/TransformKey;Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;>;"
    .end local v19    # "whitelistNames":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/QName;>;"
    :cond_9
    return-void
.end method


# virtual methods
.method public adapt(Lcom/google/gdata/model/ElementKey;Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)V
    .locals 1
    .param p2, "kind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<+TD;+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "source":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    .local p3, "adaptation":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<+TD;+TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/google/gdata/model/ElementCreator;->adapt(Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 450
    return-void
.end method

.method public build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/AttributeCreator;"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "attribute":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;
    .locals 1
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
            "Lcom/google/gdata/model/AttributeCreator;"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "attribute":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-direct {p0, p2}, Lcom/google/gdata/model/MetadataRegistry;->getOrCreateAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation

    .prologue
    .local p1, "element":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "element":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;
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
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "element":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0, p2}, Lcom/google/gdata/model/MetadataRegistry;->getOrCreateElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    .line 383
    .local v0, "creator":Lcom/google/gdata/model/ElementCreatorImpl;
    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    .line 384
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/gdata/model/MetadataRegistry;->register(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/MetadataRegistry;

    .line 386
    :cond_1
    return-object v0
.end method

.method public build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;
    .locals 1
    .param p2, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "element":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    return-object v0
.end method

.method public createSchema()Lcom/google/gdata/model/Schema;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->cachedSchema:Lcom/google/gdata/model/Schema;

    .line 172
    .local v0, "instance":Lcom/google/gdata/model/Schema;
    if-eqz v0, :cond_0

    .end local v0    # "instance":Lcom/google/gdata/model/Schema;
    :goto_0
    return-object v0

    .restart local v0    # "instance":Lcom/google/gdata/model/Schema;
    :cond_0
    invoke-direct {p0}, Lcom/google/gdata/model/MetadataRegistry;->buildSchema()Lcom/google/gdata/model/Schema;

    move-result-object v0

    goto :goto_0
.end method

.method dirty()V
    .locals 2

    .prologue
    .line 198
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Cannot call dirty() without holding the lock on the registry."

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->cachedSchema:Lcom/google/gdata/model/Schema;

    .line 201
    return-void
.end method

.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method getElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/ElementMetadataRegistryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public isRegistered(Lcom/google/gdata/model/ElementKey;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    const/4 v3, 0x0

    .line 328
    invoke-static {p1}, Lcom/google/gdata/model/Schema;->getRootKey(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v1

    .line 329
    .local v1, "rootKey":Lcom/google/gdata/model/Schema$RootKey;
    iget-object v2, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .line 330
    .local v0, "elementRegistry":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, v3, p1, v3}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->isRegistered(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Z

    move-result v2

    .line 333
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized merge(Lcom/google/gdata/model/MetadataRegistry;)Lcom/google/gdata/model/MetadataRegistry;
    .locals 6
    .param p1, "other"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    iget-object v5, p1, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/Schema$RootKey;

    .line 85
    .local v4, "key":Lcom/google/gdata/model/Schema$RootKey;
    iget-object v5, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    .line 86
    .local v0, "builder":Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    .end local v0    # "builder":Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
    invoke-direct {v0, p0}, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;-><init>(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 88
    .restart local v0    # "builder":Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
    iget-object v5, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    invoke-virtual {v0, v5}, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->merge(Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;)V

    goto :goto_0

    .line 102
    .end local v0    # "builder":Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Lcom/google/gdata/model/Schema$RootKey;
    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 93
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v5, p1, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 94
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/ElementMetadataRegistryBuilder;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/Schema$RootKey;

    .line 95
    .restart local v4    # "key":Lcom/google/gdata/model/Schema$RootKey;
    iget-object v5, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .line 96
    .local v0, "builder":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    if-nez v0, :cond_2

    .line 97
    new-instance v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .end local v0    # "builder":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    invoke-direct {v0, p0}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;-><init>(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 98
    .restart local v0    # "builder":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    iget-object v5, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    invoke-virtual {v0, v5}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->merge(Lcom/google/gdata/model/ElementMetadataRegistryBuilder;)V

    goto :goto_1

    .line 102
    .end local v0    # "builder":Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/ElementMetadataRegistryBuilder;>;"
    .end local v4    # "key":Lcom/google/gdata/model/Schema$RootKey;
    :cond_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    monitor-exit p0

    return-object p0
.end method

.method public register(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/MetadataRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/MetadataRegistry;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v0

    .line 118
    .local v0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    const-class v1, Lcom/google/gdata/model/Element;

    if-ne v1, v0, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 124
    .end local v0    # "elementType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 121
    .restart local v0    # "elementType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->registerClass(Ljava/lang/Class;)Lcom/google/gdata/model/MetadataRegistry;

    goto :goto_0
.end method

.method public declared-synchronized registerClass(Ljava/lang/Class;)Lcom/google/gdata/model/MetadataRegistry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;)",
            "Lcom/google/gdata/model/MetadataRegistry;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    monitor-enter p0

    :try_start_0
    const-class v3, Lcom/google/gdata/model/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    move-object v2, p0

    .line 147
    .end local p0    # "this":Lcom/google/gdata/model/MetadataRegistry;
    .local v2, "this":Lcom/google/gdata/model/MetadataRegistry;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 139
    .end local v2    # "this":Lcom/google/gdata/model/MetadataRegistry;
    .restart local p0    # "this":Lcom/google/gdata/model/MetadataRegistry;
    :cond_0
    :try_start_1
    const-string v3, "registerMetadata"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/google/gdata/model/MetadataRegistry;

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 142
    .local v1, "registerMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had a non-static registerMetadata(MetadataRegistry) method."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .end local v1    # "registerMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 146
    .restart local v1    # "registerMethod":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, p0

    .line 147
    .end local p0    # "this":Lcom/google/gdata/model/MetadataRegistry;
    .restart local v2    # "this":Lcom/google/gdata/model/MetadataRegistry;
    goto :goto_0

    .line 151
    .end local v1    # "registerMethod":Ljava/lang/reflect/Method;
    .end local v2    # "this":Lcom/google/gdata/model/MetadataRegistry;
    .restart local p0    # "this":Lcom/google/gdata/model/MetadataRegistry;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t support metadata registration."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 155
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 158
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
