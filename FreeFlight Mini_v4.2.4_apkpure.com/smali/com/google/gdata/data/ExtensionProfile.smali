.class public Lcom/google/gdata/data/ExtensionProfile;
.super Ljava/lang/Object;
.source "ExtensionProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;,
        Lcom/google/gdata/data/ExtensionProfile$Handler;
    }
.end annotation


# instance fields
.field private additionalNamespaces:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private allowsArbitraryXml:Z

.field private declared:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private entryLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

.field private feedLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

.field private isAutoExtending:Z

.field private nsDecls:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private final profile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gdata/data/ExtensionManifest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->declared:Ljava/util/HashSet;

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    .line 333
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->additionalNamespaces:Ljava/util/Collection;

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionProfile;->isAutoExtending:Z

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml:Z

    .line 534
    return-void
.end method

.method static synthetic access$002(Lcom/google/gdata/data/ExtensionProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/gdata/data/ExtensionProfile;->extensionPointClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized computeNamespaceDecls()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 438
    .local v2, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile;->additionalNamespaces:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 440
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

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

    check-cast v1, Lcom/google/gdata/data/ExtensionManifest;

    .line 441
    .local v1, "manifest":Lcom/google/gdata/data/ExtensionManifest;
    invoke-virtual {v1}, Lcom/google/gdata/data/ExtensionManifest;->getNamespaceDecls()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "manifest":Lcom/google/gdata/data/ExtensionManifest;
    .end local v2    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 444
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile;->feedLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    if-eqz v3, :cond_1

    .line 445
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile;->feedLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v3}, Lcom/google/gdata/data/ExtensionProfile;->computeNamespaceDecls()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 448
    :cond_1
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile;->entryLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    if-eqz v3, :cond_2

    .line 449
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile;->entryLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v3}, Lcom/google/gdata/data/ExtensionProfile;->computeNamespaceDecls()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 452
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method

.method private extensionPointClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    return-object p1
.end method

.method private getOrCreateManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)",
            "Lcom/google/gdata/data/ExtensionManifest;"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/ExtensionProfile;->getManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v1

    .line 393
    .local v1, "manifest":Lcom/google/gdata/data/ExtensionManifest;
    if-eqz v1, :cond_1

    iget-object v6, v1, Lcom/google/gdata/data/ExtensionManifest;->extendedType:Ljava/lang/Class;

    if-ne v6, p1, :cond_1

    move-object v2, v1

    .line 430
    :cond_0
    return-object v2

    .line 397
    :cond_1
    new-instance v2, Lcom/google/gdata/data/ExtensionManifest;

    invoke-direct {v2, p1}, Lcom/google/gdata/data/ExtensionManifest;-><init>(Ljava/lang/Class;)V

    .line 402
    .local v2, "newManifest":Lcom/google/gdata/data/ExtensionManifest;
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 403
    .local v5, "superManifests":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/data/ExtensionManifest;>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {v5, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v6, v1, Lcom/google/gdata/data/ExtensionManifest;->extendedType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/gdata/data/ExtensionProfile;->getManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v1

    goto :goto_0

    .line 411
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 412
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/data/ExtensionManifest;

    .line 413
    .local v4, "superManifest":Lcom/google/gdata/data/ExtensionManifest;
    iget-object v6, v2, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    iget-object v7, v4, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 415
    iget-boolean v6, v4, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    iput-boolean v6, v2, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    .line 416
    iget-object v6, v4, Lcom/google/gdata/data/ExtensionManifest;->subclassManifests:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    .end local v4    # "superManifest":Lcom/google/gdata/data/ExtensionManifest;
    :cond_3
    iget-object v6, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 425
    .local v3, "profileMapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/google/gdata/data/ExtensionManifest;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 426
    iget-object v6, v2, Lcom/google/gdata/data/ExtensionManifest;->subclassManifests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V
    .locals 2
    .param p1, "adaptor"    # Lcom/google/gdata/data/Kind$Adaptor;

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "adaptorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Kind$Adaptor;>;"
    iget-object v1, p0, Lcom/google/gdata/data/ExtensionProfile;->declared:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {p1, p0}, Lcom/google/gdata/data/Kind$Adaptor;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 73
    :cond_0
    return-void
.end method

.method public allowsArbitraryXml()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml:Z

    return v0
.end method

.method public declared-synchronized declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V
    .locals 18
    .param p2, "extDescription"    # Lcom/google/gdata/data/ExtensionDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;",
            "Lcom/google/gdata/data/ExtensionDescription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    monitor-enter p0

    const/16 v17, 0x0

    .local v17, "wasRequirednessRemoved":Z
    move-object/from16 v10, p2

    .line 94
    .end local p2    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    .local v10, "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/gdata/data/ExtensionProfile;->isAutoExtending:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/google/gdata/data/Kind$Adaptable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    if-nez v17, :cond_3

    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    const/16 v17, 0x1

    .line 101
    new-instance p2, Lcom/google/gdata/data/ExtensionDescription;

    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->getExtensionClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->getNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->isRepeatable()Z

    move-result v6

    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->isAggregate()Z

    move-result v7

    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->allowsArbitraryXml()Z

    move-result v8

    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->allowsMixedContent()Z

    move-result v9

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v10    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    .restart local p2    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :goto_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->extensionPointClass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p1

    move-object/from16 v10, p2

    .end local p2    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    .restart local v10    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    goto :goto_0

    .line 114
    :cond_0
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/google/gdata/data/ExtensionProfile;->getOrCreateManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v15

    .line 115
    .local v15, "manifest":Lcom/google/gdata/data/ExtensionManifest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v13, Lcom/google/gdata/util/common/base/Pair;

    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->getNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v1, v2}, Lcom/google/gdata/util/common/base/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .local v13, "extensionQName":Lcom/google/gdata/util/common/base/Pair;, "Lcom/google/gdata/util/common/base/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v15, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    invoke-interface {v1, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, v15, Lcom/google/gdata/data/ExtensionManifest;->subclassManifests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/gdata/data/ExtensionManifest;

    .line 125
    .local v16, "subclassManifest":Lcom/google/gdata/data/ExtensionManifest;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    invoke-interface {v1, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 93
    .end local v13    # "extensionQName":Lcom/google/gdata/util/common/base/Pair;, "Lcom/google/gdata/util/common/base/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "manifest":Lcom/google/gdata/data/ExtensionManifest;
    .end local v16    # "subclassManifest":Lcom/google/gdata/data/ExtensionManifest;
    :catchall_0
    move-exception v1

    move-object/from16 p2, v10

    .end local v10    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    .restart local p2    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :goto_3
    monitor-exit p0

    throw v1

    .line 128
    .end local p2    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    .restart local v10    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    .restart local v13    # "extensionQName":Lcom/google/gdata/util/common/base/Pair;, "Lcom/google/gdata/util/common/base/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "manifest":Lcom/google/gdata/data/ExtensionManifest;
    :cond_1
    :try_start_3
    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->allowsArbitraryXml()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->getExtensionClass()Ljava/lang/Class;

    move-result-object v12

    .line 131
    .local v12, "extType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/gdata/data/ExtensionProfile;->getOrCreateManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v11

    .line 132
    .local v11, "extManifest":Lcom/google/gdata/data/ExtensionManifest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v1, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v10}, Lcom/google/gdata/data/ExtensionDescription;->allowsMixedContent()Z

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;Z)V

    .line 136
    .end local v11    # "extManifest":Lcom/google/gdata/data/ExtensionManifest;
    .end local v12    # "extType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 93
    .end local v10    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    .end local v13    # "extensionQName":Lcom/google/gdata/util/common/base/Pair;, "Lcom/google/gdata/util/common/base/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "manifest":Lcom/google/gdata/data/ExtensionManifest;
    .restart local p2    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :catchall_1
    move-exception v1

    goto :goto_3

    .end local p2    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    .restart local v10    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :cond_3
    move-object/from16 p2, v10

    .end local v10    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    .restart local p2    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    goto :goto_1
.end method

.method public declared-synchronized declare(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    .local p2, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Extension;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V
    .locals 1
    .param p1, "ns"    # Lcom/google/gdata/util/common/xml/XmlNamespace;

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->additionalNamespaces:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareArbitraryXmlExtension(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareArbitraryXmlExtension(Ljava/lang/Class;Z)V
    .locals 4
    .param p2, "mixedContent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/gdata/data/ExtensionProfile;->getOrCreateManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v1

    .line 244
    .local v1, "manifest":Lcom/google/gdata/data/ExtensionManifest;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    .line 245
    iput-boolean p2, v1, Lcom/google/gdata/data/ExtensionManifest;->mixedContent:Z

    .line 248
    iget-object v3, v1, Lcom/google/gdata/data/ExtensionManifest;->subclassManifests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/ExtensionManifest;

    .line 249
    .local v2, "subclassManifest":Lcom/google/gdata/data/ExtensionManifest;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    .line 250
    iput-boolean p2, v2, Lcom/google/gdata/data/ExtensionManifest;->mixedContent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "manifest":Lcom/google/gdata/data/ExtensionManifest;
    .end local v2    # "subclassManifest":Lcom/google/gdata/data/ExtensionManifest;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 253
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "manifest":Lcom/google/gdata/data/ExtensionManifest;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized declareEntryExtension(Lcom/google/gdata/data/ExtensionDescription;)V
    .locals 1
    .param p1, "extDesc"    # Lcom/google/gdata/data/ExtensionDescription;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareEntryExtension(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    .local p1, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Extension;>;"
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareEntryLinkProfile(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionProfile;->entryLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareFeedExtension(Lcom/google/gdata/data/ExtensionDescription;)V
    .locals 1
    .param p1, "extDesc"    # Lcom/google/gdata/data/ExtensionDescription;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareFeedExtension(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    .local p1, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Extension;>;"
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareFeedLinkProfile(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionProfile;->feedLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateConfig(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 16
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v3, "epAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v13, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v14, "arbitraryXml"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml:Z

    invoke-direct {v13, v14, v15}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v13, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v14, "extensionProfile"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v3, v15}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/gdata/data/ExtensionProfile;->additionalNamespaces:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 660
    .local v10, "namespace":Lcom/google/gdata/util/common/xml/XmlNamespace;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v11, "nsAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v13, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v14, "alias"

    invoke-virtual {v10}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v13, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v14, "uri"

    invoke-virtual {v10}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    sget-object v13, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v14, "namespaceDescription"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v11, v15}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    .end local v10    # "namespace":Lcom/google/gdata/util/common/xml/XmlNamespace;
    .end local v11    # "nsAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    :cond_0
    new-instance v6, Ljava/util/TreeSet;

    new-instance v13, Lcom/google/gdata/data/ExtensionProfile$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/gdata/data/ExtensionProfile$1;-><init>(Lcom/google/gdata/data/ExtensionProfile;)V

    invoke-direct {v6, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 677
    .local v6, "extensionSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Class<*>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 678
    .local v5, "extensionPoint":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 681
    .end local v5    # "extensionPoint":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 683
    .restart local v5    # "extensionPoint":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gdata/data/ExtensionManifest;

    .line 685
    .local v9, "manifest":Lcom/google/gdata/data/ExtensionManifest;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v12, "ptAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v13, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v14, "extendedClass"

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v13, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v14, "arbitraryXml"

    iget-boolean v15, v9, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    invoke-direct {v13, v14, v15}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    sget-object v13, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v14, "extensionPoint"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v12, v15}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 691
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 695
    .local v2, "descSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/gdata/data/ExtensionDescription;>;"
    invoke-virtual {v9}, Lcom/google/gdata/data/ExtensionManifest;->getSupportedExtensions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/data/ExtensionDescription;

    .line 696
    .local v4, "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 700
    .end local v4    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :cond_2
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/data/ExtensionDescription;

    .line 701
    .restart local v4    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->generateConfig(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_4

    .line 704
    .end local v4    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :cond_3
    sget-object v13, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v14, "extensionPoint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 707
    .end local v2    # "descSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/gdata/data/ExtensionDescription;>;"
    .end local v5    # "extensionPoint":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "manifest":Lcom/google/gdata/data/ExtensionManifest;
    .end local v12    # "ptAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    :cond_4
    sget-object v13, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v14, "extensionProfile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public declared-synchronized getEntryLinkProfile()Lcom/google/gdata/data/ExtensionProfile;
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->entryLinkProfile:Lcom/google/gdata/data/ExtensionProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFeedLinkProfile()Lcom/google/gdata/data/ExtensionProfile;
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->feedLinkProfile:Lcom/google/gdata/data/ExtensionProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/gdata/data/ExtensionManifest;"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 296
    .local v0, "manifest":Lcom/google/gdata/data/ExtensionManifest;
    :goto_0
    if-eqz p1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "manifest":Lcom/google/gdata/data/ExtensionManifest;
    check-cast v0, Lcom/google/gdata/data/ExtensionManifest;

    .line 298
    .restart local v0    # "manifest":Lcom/google/gdata/data/ExtensionManifest;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 302
    :goto_1
    return-object v1

    .line 300
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 302
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getNamespaceDecls()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionProfile;->computeNamespaceDecls()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAutoExtending()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/google/gdata/data/ExtensionProfile;->isAutoExtending:Z

    return v0
.end method

.method public isDeclared(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseConfig(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/ClassLoader;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "configProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 633
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/gdata/data/ExtensionProfile$Handler;-><init>(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/ClassLoader;Lorg/xml/sax/Attributes;)V

    .line 634
    .local v0, "handler":Lcom/google/gdata/data/ExtensionProfile$Handler;
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string v2, "http://schemas.google.com/gdata/config/2005"

    const-string v3, "extensionProfile"

    invoke-virtual {v1, p3, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/InputStream;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public setArbitraryXml(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml:Z

    return-void
.end method

.method public setAutoExtending(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionProfile;->isAutoExtending:Z

    return-void
.end method
