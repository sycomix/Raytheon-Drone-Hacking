.class Lcom/google/gdata/model/PathAdapter$ElementAdapter;
.super Ljava/lang/Object;
.source "PathAdapter.java"

# interfaces
.implements Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;
.implements Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/PathAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElementAdapter"
.end annotation


# instance fields
.field private final path:Lcom/google/gdata/model/Path;


# direct methods
.method constructor <init>(Lcom/google/gdata/model/Path;)V
    .locals 0
    .param p1, "path"    # Lcom/google/gdata/model/Path;

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    .line 362
    return-void
.end method

.method private static mergeKeys(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;
    .locals 3
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
    .line 501
    .local p0, "sourceKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p1, "metadataKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object p0

    .line 505
    .end local p0    # "sourceKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_0
    return-object p0
.end method


# virtual methods
.method public generateMultiple(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Collection;
    .locals 8
    .param p1, "parent"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    .local p2, "parentMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    iget-object v6, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v6}, Lcom/google/gdata/model/Path;->selectsElement()Z

    move-result v6

    const-string v7, "An attribute path cannot be used to generate elements."

    invoke-static {v6, v7}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 425
    iget-object v6, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-static {v6, p1}, Lcom/google/gdata/model/PathAdapter;->getFinalElements(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Ljava/util/Collection;

    move-result-object v1

    .line 426
    .local v1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/gdata/model/Element;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    .end local v1    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/gdata/model/Element;>;"
    :goto_0
    return-object v1

    .line 430
    .restart local v1    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/gdata/model/Element;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 431
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Element;

    .line 433
    .local v0, "e":Lcom/google/gdata/model/Element;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v6

    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->mergeKeys(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;

    move-result-object v4

    .line 435
    .local v4, "realKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-static {v4, v0}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 436
    .end local v4    # "realKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :catch_0
    move-exception v2

    .line 437
    .local v2, "ex":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid metadata"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .end local v0    # "e":Lcom/google/gdata/model/Element;
    .end local v2    # "ex":Lcom/google/gdata/wireformats/ContentCreationException;
    :cond_1
    move-object v1, v5

    .line 440
    goto :goto_0
.end method

.method public generateSingle(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;
    .locals 5
    .param p1, "parent"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 373
    .local p2, "parentMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    iget-object v3, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v3}, Lcom/google/gdata/model/Path;->selectsElement()Z

    move-result v3

    const-string v4, "An attribute path cannot be used to generate elements."

    invoke-static {v3, v4}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 376
    iget-object v3, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-static {v3, p1}, Lcom/google/gdata/model/PathAdapter;->getFinalElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v1

    .line 377
    .local v1, "element":Lcom/google/gdata/model/Element;
    if-nez v1, :cond_0

    .line 378
    const/4 v3, 0x0

    .line 384
    :goto_0
    return-object v3

    .line 382
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v3

    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->mergeKeys(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    .line 384
    .local v2, "realKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-static {v2, v1}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 385
    .end local v2    # "realKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid metadata"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 5
    .param p1, "parent"    # Lcom/google/gdata/model/Element;
    .param p3, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 399
    .local p2, "parentMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .local p4, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    iget-object v3, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v3}, Lcom/google/gdata/model/Path;->selectsElement()Z

    move-result v3

    const-string v4, "An attribute path cannot be used to parse elements."

    invoke-static {v3, v4}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 402
    iget-object v3, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-static {v3, p1}, Lcom/google/gdata/model/PathAdapter;->createParentElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object p1

    .line 403
    iget-object v3, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v3}, Lcom/google/gdata/model/Path;->getSelectedElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    .line 405
    .local v2, "lastKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :try_start_0
    invoke-static {v2, p3}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 406
    .local v0, "child":Lcom/google/gdata/model/Element;
    invoke-virtual {p1, v0}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    return-void

    .line 407
    .end local v0    # "child":Lcom/google/gdata/model/Element;
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v3, Lcom/google/gdata/util/ParseException;

    invoke-direct {v3, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/util/Collection;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 10
    .param p1, "parent"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/Element;",
            ">;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .local p2, "parentMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .local p3, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/model/Element;>;"
    .local p4, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const/4 v9, 0x1

    .line 453
    iget-object v7, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v7}, Lcom/google/gdata/model/Path;->selectsElement()Z

    move-result v7

    const-string v8, "An attribute path cannot be used to parse elements."

    invoke-static {v7, v8}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 456
    iget-object v7, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v7, p2}, Lcom/google/gdata/model/Path;->toAbsolute(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Path;

    move-result-object v0

    .line 458
    .local v0, "bound":Lcom/google/gdata/model/Path;
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v0, p1, p2, v7}, Lcom/google/gdata/model/PathAdapter;->createParentElements(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;I)Ljava/util/Collection;

    move-result-object v6

    .line 461
    .local v6, "parents":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/model/Element;>;"
    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    .line 462
    .local v1, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedElement()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v2

    .line 464
    .local v2, "childMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 465
    .local v5, "pIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Element;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 468
    .local v3, "eIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Element;>;"
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    if-le v7, v9, :cond_0

    .line 469
    invoke-static {v2}, Lcom/google/gdata/model/PathAdapter;->access$000(Lcom/google/gdata/model/ElementMetadata;)V

    .line 471
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 472
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/Element;

    .line 473
    .local v4, "p":Lcom/google/gdata/model/Element;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gdata/model/Element;

    invoke-virtual {v4, v7}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    goto :goto_0

    .line 480
    .end local v4    # "p":Lcom/google/gdata/model/Element;
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v7

    if-le v7, v9, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/gdata/model/ElementMetadata;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v7

    sget-object v8, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-ne v7, v8, :cond_1

    .line 482
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Metadata for key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " represents a single-cardinality element."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " The path must contain at least one multiple-cardinality"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " element in order to parse multiple elements."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 489
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "parent":Lcom/google/gdata/model/Element;
    check-cast p1, Lcom/google/gdata/model/Element;

    .line 490
    .restart local p1    # "parent":Lcom/google/gdata/model/Element;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 491
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gdata/model/Element;

    invoke-virtual {p1, v7}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    goto :goto_1

    .line 493
    :cond_2
    return-void
.end method
