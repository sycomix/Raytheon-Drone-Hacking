.class final Lcom/google/gdata/model/ElementTransform;
.super Lcom/google/gdata/model/Transform;
.source "ElementTransform.java"


# static fields
.field static final EMPTY:Lcom/google/gdata/model/ElementTransform;


# instance fields
.field private final adaptations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

.field private final contentRequired:Ljava/lang/Boolean;

.field private final elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final flattened:Z

.field private final properties:Ljava/lang/Object;

.field private final validator:Lcom/google/gdata/model/ElementValidator;

.field private final virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/model/ElementTransform;

    invoke-direct {v0}, Lcom/google/gdata/model/ElementTransform;-><init>()V

    sput-object v0, Lcom/google/gdata/model/ElementTransform;->EMPTY:Lcom/google/gdata/model/ElementTransform;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Lcom/google/gdata/model/Transform;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 115
    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    .line 116
    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 117
    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    .line 118
    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    .line 121
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    .line 122
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    .line 123
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    .line 124
    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/model/ElementCreatorImpl;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/gdata/model/ElementCreatorImpl;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Transform;-><init>(Lcom/google/gdata/model/MetadataCreatorImpl;)V

    .line 133
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 134
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getContentRequired()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getValidator()Lcom/google/gdata/model/ElementValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 136
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getProperties()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getVirtualElementHolder()Lcom/google/gdata/model/VirtualElementHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 138
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->isFlattened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    .line 139
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    .line 140
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getElements()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    .line 141
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementCreatorImpl;->getAdaptations()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    .line 142
    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementTransform;Lcom/google/gdata/model/ElementTransform;)V
    .locals 17
    .param p2, "transform"    # Lcom/google/gdata/model/ElementTransform;
    .param p3, "source"    # Lcom/google/gdata/model/ElementTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementTransform;",
            "Lcom/google/gdata/model/ElementTransform;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/Transform;-><init>(Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/Transform;)V

    .line 247
    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/gdata/model/ElementMetadata$Cardinality;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v14}, Lcom/google/gdata/model/ElementTransform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 248
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    .line 249
    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/gdata/model/ElementValidator;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v14}, Lcom/google/gdata/model/ElementTransform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/gdata/model/ElementValidator;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 250
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v14}, Lcom/google/gdata/model/ElementTransform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    .line 251
    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/gdata/model/VirtualElementHolder;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v14}, Lcom/google/gdata/model/ElementTransform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/gdata/model/VirtualElementHolder;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/google/gdata/model/ElementTransform;->isFlattened()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/google/gdata/model/ElementTransform;->isFlattened()Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_0
    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    .line 259
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 260
    .local v7, "compositeAttributes":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/gdata/model/ElementTransform;->getAttributes()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 262
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 263
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/QName;

    .line 264
    .local v4, "attId":Lcom/google/gdata/model/QName;
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 265
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 253
    .end local v4    # "attId":Lcom/google/gdata/model/QName;
    .end local v7    # "compositeAttributes":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;>;"
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 268
    .restart local v7    # "compositeAttributes":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {v7}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    .line 270
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 271
    .local v8, "compositeElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/gdata/model/ElementTransform;->getElements()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 273
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 274
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/model/QName;

    .line 275
    .local v5, "childId":Lcom/google/gdata/model/QName;
    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 276
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v8, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 279
    .end local v5    # "childId":Lcom/google/gdata/model/QName;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;>;"
    :cond_5
    invoke-static {v8}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    .line 281
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 282
    .local v6, "compositeAdaptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/gdata/model/ElementTransform;->getAdaptations()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 284
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 285
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 286
    .local v13, "kind":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/ElementKey;

    .line 287
    .local v3, "adaptor":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-interface {v6, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/gdata/model/ElementTransform;->isValidAdaptation(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 289
    invoke-interface {v6, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 292
    .end local v3    # "adaptor":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gdata/model/ElementKey<**>;>;"
    .end local v13    # "kind":Ljava/lang/String;
    :cond_7
    invoke-static {v6}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    .line 293
    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/model/ElementKey;Ljava/lang/Iterable;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/gdata/model/ElementTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/gdata/model/ElementTransform;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/gdata/model/Transform;-><init>(Ljava/lang/Iterable;)V

    .line 153
    const/4 v9, 0x0

    .line 154
    .local v9, "compositeCardinality":Lcom/google/gdata/model/ElementMetadata$Cardinality;
    const/4 v10, 0x0

    .line 155
    .local v10, "compositeContentRequired":Ljava/lang/Boolean;
    const/4 v14, 0x0

    .line 156
    .local v14, "compositeValidator":Lcom/google/gdata/model/ElementValidator;
    const/4 v13, 0x0

    .line 157
    .local v13, "compositeProperties":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 158
    .local v15, "compositeVirtualElementHolder":Lcom/google/gdata/model/VirtualElementHolder;
    const/4 v12, 0x0

    .line 160
    .local v12, "compositeFlattened":Z
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 161
    .local v8, "compositeAttributes":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v11

    .line 162
    .local v11, "compositeElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 164
    .local v7, "compositeAdaptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v13    # "compositeProperties":Ljava/lang/Object;
    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/gdata/model/ElementTransform;

    .line 165
    .local v21, "part":Lcom/google/gdata/model/ElementTransform;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 166
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 168
    :cond_1
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 169
    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    .line 171
    :cond_2
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 172
    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 174
    :cond_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 175
    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    .line 177
    :cond_4
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 178
    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 180
    :cond_5
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 181
    const/4 v12, 0x1

    .line 184
    :cond_6
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 185
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/QName;

    .line 186
    .local v3, "attId":Lcom/google/gdata/model/QName;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;

    .line 187
    .local v4, "attInfo":Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;
    iget-object v0, v4, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->action:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/gdata/model/ElementCreatorImpl$Action;->ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 188
    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_7
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    .end local v3    # "attId":Lcom/google/gdata/model/QName;
    .end local v4    # "attInfo":Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;>;"
    :cond_8
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 194
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/model/QName;

    .line 195
    .local v5, "childId":Lcom/google/gdata/model/QName;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;

    .line 196
    .local v6, "childInfo":Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;
    iget-object v0, v6, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->action:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/gdata/model/ElementCreatorImpl$Action;->ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 197
    invoke-interface {v11, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_9
    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    .end local v5    # "childId":Lcom/google/gdata/model/QName;
    .end local v6    # "childInfo":Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;>;"
    :cond_a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 203
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementKey;

    .line 204
    .local v2, "adaptor":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/gdata/model/ElementTransform;->isValidAdaptation(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 205
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 211
    .end local v2    # "adaptor":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gdata/model/ElementKey<**>;>;"
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "part":Lcom/google/gdata/model/ElementTransform;
    :cond_c
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 212
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    .line 213
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 214
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    .line 215
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 216
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    .line 217
    invoke-static {v8}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    .line 218
    invoke-static {v11}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    .line 219
    invoke-static {v7}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    .line 220
    return-void
.end method

.method static create(Lcom/google/gdata/model/ElementCreatorImpl;)Lcom/google/gdata/model/ElementTransform;
    .locals 2
    .param p0, "creator"    # Lcom/google/gdata/model/ElementCreatorImpl;

    .prologue
    .line 49
    new-instance v0, Lcom/google/gdata/model/ElementTransform;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/ElementTransform;-><init>(Lcom/google/gdata/model/ElementCreatorImpl;)V

    .line 50
    .local v0, "transform":Lcom/google/gdata/model/ElementTransform;
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementTransform;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v0, Lcom/google/gdata/model/ElementTransform;->EMPTY:Lcom/google/gdata/model/ElementTransform;

    .line 53
    .end local v0    # "transform":Lcom/google/gdata/model/ElementTransform;
    :cond_0
    return-object v0
.end method

.method static create(Lcom/google/gdata/model/ElementKey;Ljava/lang/Iterable;)Lcom/google/gdata/model/ElementTransform;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/gdata/model/ElementTransform;",
            ">;)",
            "Lcom/google/gdata/model/ElementTransform;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p1, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/gdata/model/ElementTransform;>;"
    new-instance v0, Lcom/google/gdata/model/ElementTransform;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/model/ElementTransform;-><init>(Lcom/google/gdata/model/ElementKey;Ljava/lang/Iterable;)V

    .line 65
    .local v0, "composite":Lcom/google/gdata/model/ElementTransform;
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementTransform;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    sget-object v0, Lcom/google/gdata/model/ElementTransform;->EMPTY:Lcom/google/gdata/model/ElementTransform;

    .line 68
    .end local v0    # "composite":Lcom/google/gdata/model/ElementTransform;
    :cond_0
    return-object v0
.end method

.method private static isValidAdaptation(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "source":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p1, "adaptor":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v1

    .line 302
    .local v1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v0

    .line 303
    .local v0, "adaptorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, v0, :cond_0

    .line 304
    const/4 v2, 0x0

    .line 306
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_0
.end method

.method static mergeSource(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementTransform;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;
    .locals 4
    .param p0, "schema"    # Lcom/google/gdata/model/Schema;
    .param p2, "transform"    # Lcom/google/gdata/model/ElementTransform;
    .param p3, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementTransform;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementTransform;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getSource()Lcom/google/gdata/model/TransformKey;

    move-result-object v1

    .line 82
    .local v1, "sourceKey":Lcom/google/gdata/model/TransformKey;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/google/gdata/model/TransformKey;->getParent()Lcom/google/gdata/model/ElementKey;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/gdata/model/TransformKey;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v3, v2, p3}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v0

    .line 85
    .local v0, "source":Lcom/google/gdata/model/ElementTransform;
    if-eqz v0, :cond_0

    .line 86
    new-instance v2, Lcom/google/gdata/model/ElementTransform;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/gdata/model/ElementTransform;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementTransform;Lcom/google/gdata/model/ElementTransform;)V

    move-object p2, v2

    .line 89
    .end local v0    # "source":Lcom/google/gdata/model/ElementTransform;
    .end local p2    # "transform":Lcom/google/gdata/model/ElementTransform;
    :cond_0
    return-object p2
.end method


# virtual methods
.method getAdaptations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    return-object v0
.end method

.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    return-object v0
.end method

.method getContentRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    return-object v0
.end method

.method getElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    return-object v0
.end method

.method getProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    return-object v0
.end method

.method getValidator()Lcom/google/gdata/model/ElementValidator;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    return-object v0
.end method

.method getVirtualElementHolder()Lcom/google/gdata/model/VirtualElementHolder;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Lcom/google/gdata/model/Transform;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->contentRequired:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->validator:Lcom/google/gdata/model/ElementValidator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->properties:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementTransform;->adaptations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFlattened()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/google/gdata/model/ElementTransform;->flattened:Z

    return v0
.end method

.method toMetadata(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;
    .locals 6
    .param p1, "schema"    # Lcom/google/gdata/model/Schema;
    .param p4, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/Schema;",
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
    .line 315
    .local p2, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p3, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    new-instance v0, Lcom/google/gdata/model/ElementMetadataImpl;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/model/ElementMetadataImpl;-><init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)V

    return-object v0
.end method
