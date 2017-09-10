.class Lcom/google/gdata/model/AdaptationRegistryFactory;
.super Ljava/lang/Object;
.source "AdaptationRegistryFactory.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/gdata/model/AdaptationRegistryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/AdaptationRegistryFactory;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCompatible(Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataKey;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "first":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    .local p1, "second":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    const/4 v0, 0x1

    .line 203
    .local v0, "compatible":Z
    invoke-virtual {p0}, Lcom/google/gdata/model/MetadataKey;->getDatatype()Ljava/lang/Class;

    move-result-object v1

    .line 204
    .local v1, "firstType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataKey;->getDatatype()Ljava/lang/Class;

    move-result-object v2

    .line 206
    .local v2, "secondType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v2, :cond_0

    .line 207
    sget-object v3, Lcom/google/gdata/model/AdaptationRegistryFactory;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incompatible datatypes.  First("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but Second("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    .line 213
    :cond_0
    return v0
.end method

.method private static checkCompatibleElements(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "first":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p1, "second":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    move-object v2, p0

    .line 229
    .local v2, "match":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    const/4 v0, 0x1

    .line 231
    .local v0, "compatible":Z
    invoke-static {p0, p1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->checkCompatible(Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataKey;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v1

    .line 236
    .local v1, "firstType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v3

    .line 237
    .local v3, "secondType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    if-eq v1, v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    move-object v2, p1

    .line 249
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .end local v2    # "match":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :goto_1
    return-object v2

    .line 242
    .restart local v2    # "match":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_2
    sget-object v4, Lcom/google/gdata/model/AdaptationRegistryFactory;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incompatible element types. First("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but Second("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static create(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Lcom/google/gdata/model/AdaptationRegistry;
    .locals 4
    .param p0, "schema"    # Lcom/google/gdata/model/Schema;
    .param p1, "transform"    # Lcom/google/gdata/model/ElementTransform;

    .prologue
    .line 48
    new-instance v0, Lcom/google/gdata/model/AdaptationRegistry;

    invoke-virtual {p1}, Lcom/google/gdata/model/ElementTransform;->getAdaptations()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->unionAttributes(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->unionElements(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/model/AdaptationRegistry;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method private static getAttributeNames(Lcom/google/gdata/model/ElementTransform;)Ljava/util/Set;
    .locals 4
    .param p0, "transform"    # Lcom/google/gdata/model/ElementTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementTransform;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 118
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/QName;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementTransform;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;

    .line 119
    .local v1, "info":Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;
    iget-object v3, v1, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->key:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {v3}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v1    # "info":Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;
    :cond_0
    return-object v2
.end method

.method private static getElementNames(Lcom/google/gdata/model/ElementTransform;)Ljava/util/Set;
    .locals 4
    .param p0, "transform"    # Lcom/google/gdata/model/ElementTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementTransform;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 189
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/QName;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementTransform;->getElements()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;

    .line 190
    .local v1, "info":Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;
    iget-object v3, v1, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->key:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v3}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v1    # "info":Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;
    :cond_0
    return-object v2
.end method

.method private static unionAttributes(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Ljava/util/Map;
    .locals 14
    .param p0, "schema"    # Lcom/google/gdata/model/Schema;
    .param p1, "transform"    # Lcom/google/gdata/model/ElementTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/ElementTransform;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 67
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 68
    .local v10, "union":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/AttributeKey<*>;>;"
    invoke-static {p1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->getAttributeNames(Lcom/google/gdata/model/ElementTransform;)Ljava/util/Set;

    move-result-object v2

    .line 69
    .local v2, "base":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/QName;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 71
    .local v8, "invalid":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/QName;>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementTransform;->getAdaptations()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/ElementKey;

    .line 74
    .local v1, "adaptorKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p0, v12, v1, v12}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v0

    .line 76
    .local v0, "adaptor":Lcom/google/gdata/model/ElementTransform;
    if-nez v0, :cond_1

    .line 77
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid adaptor key "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 80
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementTransform;->getAttributes()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;

    .line 81
    .local v7, "info":Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;
    iget-object v9, v7, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->key:Lcom/google/gdata/model/AttributeKey;

    .line 82
    .local v9, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-virtual {v9}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v6

    .line 85
    .local v6, "id":Lcom/google/gdata/model/QName;
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 90
    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 94
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/AttributeKey;

    .line 95
    .local v3, "existing":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    if-eqz v3, :cond_3

    .line 98
    invoke-static {v3, v9}, Lcom/google/gdata/model/AdaptationRegistryFactory;->checkCompatible(Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataKey;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 99
    invoke-interface {v10, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_3
    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    .end local v0    # "adaptor":Lcom/google/gdata/model/ElementTransform;
    .end local v1    # "adaptorKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v3    # "existing":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "id":Lcom/google/gdata/model/QName;
    .end local v7    # "info":Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;
    .end local v9    # "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :cond_4
    invoke-static {v10}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v11

    return-object v11
.end method

.method private static unionElements(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Ljava/util/Map;
    .locals 14
    .param p0, "schema"    # Lcom/google/gdata/model/Schema;
    .param p1, "transform"    # Lcom/google/gdata/model/ElementTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/ElementTransform;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 139
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v11

    .line 140
    .local v11, "union":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 141
    .local v9, "invalid":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/QName;>;"
    invoke-static {p1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->getElementNames(Lcom/google/gdata/model/ElementTransform;)Ljava/util/Set;

    move-result-object v2

    .line 143
    .local v2, "base":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/QName;>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementTransform;->getAdaptations()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/ElementKey;

    .line 146
    .local v1, "adaptorKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p0, v13, v1, v13}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v0

    .line 148
    .local v0, "adaptor":Lcom/google/gdata/model/ElementTransform;
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementTransform;->getElements()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;

    .line 149
    .local v8, "info":Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;
    iget-object v10, v8, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->key:Lcom/google/gdata/model/ElementKey;

    .line 150
    .local v10, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {v10}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v7

    .line 153
    .local v7, "id":Lcom/google/gdata/model/QName;
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 158
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 162
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/ElementKey;

    .line 163
    .local v4, "existing":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    move-object v3, v10

    .line 164
    .local v3, "compatible":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    if-eqz v4, :cond_2

    .line 167
    invoke-static {v4, v10}, Lcom/google/gdata/model/AdaptationRegistryFactory;->checkCompatibleElements(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;

    move-result-object v3

    .line 170
    :cond_2
    if-nez v3, :cond_3

    .line 171
    invoke-interface {v11, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_3
    if-ne v3, v10, :cond_1

    .line 174
    invoke-interface {v11, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    .end local v0    # "adaptor":Lcom/google/gdata/model/ElementTransform;
    .end local v1    # "adaptorKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v3    # "compatible":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v4    # "existing":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "id":Lcom/google/gdata/model/QName;
    .end local v8    # "info":Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;
    .end local v10    # "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_4
    invoke-static {v11}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v12

    return-object v12
.end method
