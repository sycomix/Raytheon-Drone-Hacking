.class final Lcom/google/gdata/model/ElementMetadataImpl;
.super Lcom/google/gdata/model/MetadataImpl;
.source "ElementMetadataImpl.java"

# interfaces
.implements Lcom/google/gdata/model/ElementMetadata;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/google/gdata/model/Element;",
        ">",
        "Lcom/google/gdata/model/MetadataImpl",
        "<TD;>;",
        "Lcom/google/gdata/model/ElementMetadata",
        "<TD;TE;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VALIDATOR:Lcom/google/gdata/model/ElementValidator;


# instance fields
.field private final adaptations:Lcom/google/gdata/model/AdaptationRegistry;

.field private final attributes:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

.field private final elemKey:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;"
        }
    .end annotation
.end field

.field private final elements:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final isContentRequired:Z

.field private final isFlattened:Z

.field private final properties:Ljava/lang/Object;

.field private referencedNamespaces:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private final renamedAttributes:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final renamedElements:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final sourceKey:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;"
        }
    .end annotation
.end field

.field private final validator:Lcom/google/gdata/model/ElementValidator;

.field private final virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/gdata/model/MetadataValidator;

    invoke-direct {v0}, Lcom/google/gdata/model/MetadataValidator;-><init>()V

    sput-object v0, Lcom/google/gdata/model/ElementMetadataImpl;->DEFAULT_VALIDATOR:Lcom/google/gdata/model/ElementValidator;

    return-void
.end method

.method constructor <init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)V
    .locals 9
    .param p1, "schema"    # Lcom/google/gdata/model/Schema;
    .param p2, "transform"    # Lcom/google/gdata/model/ElementTransform;
    .param p5, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/ElementTransform;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    .local p3, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p4, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/google/gdata/model/MetadataImpl;-><init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)V

    .line 446
    iput-object v8, p0, Lcom/google/gdata/model/ElementMetadataImpl;->referencedNamespaces:Ljava/util/Collection;

    .line 80
    iput-object p4, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elemKey:Lcom/google/gdata/model/ElementKey;

    .line 81
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getSource()Lcom/google/gdata/model/TransformKey;

    move-result-object v0

    .line 82
    .local v0, "transformSource":Lcom/google/gdata/model/TransformKey;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/google/gdata/model/TransformKey;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/model/MetadataKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-virtual {p4}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p4}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    .line 88
    .local v1, "transformSourceKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elemKey:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/ElementKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elemKey:Lcom/google/gdata/model/ElementKey;

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->sourceKey:Lcom/google/gdata/model/ElementKey;

    .line 97
    .end local v1    # "transformSourceKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    :goto_0
    invoke-static {p1, p4, p2, p5}, Lcom/google/gdata/model/ElementTransform;->mergeSource(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementTransform;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;

    move-result-object p2

    .line 99
    new-array v2, v7, [Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/gdata/model/ElementMetadataImpl;->firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 101
    new-array v2, v7, [Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getContentRequired()Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/gdata/model/ElementMetadataImpl;->firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->isContentRequired:Z

    .line 102
    new-array v2, v7, [Lcom/google/gdata/model/ElementValidator;

    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getValidator()Lcom/google/gdata/model/ElementValidator;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/gdata/model/ElementMetadataImpl;->DEFAULT_VALIDATOR:Lcom/google/gdata/model/ElementValidator;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/gdata/model/ElementMetadataImpl;->firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementValidator;

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 103
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getProperties()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->properties:Ljava/lang/Object;

    .line 104
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getVirtualElementHolder()Lcom/google/gdata/model/VirtualElementHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 105
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->isFlattened()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->isFlattened:Z

    .line 107
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/gdata/model/ElementMetadataImpl;->getAttributes(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 108
    invoke-direct {p0}, Lcom/google/gdata/model/ElementMetadataImpl;->getRenamedAttributes()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->renamedAttributes:Lcom/google/common/collect/ImmutableMap;

    .line 109
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getElements()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/gdata/model/ElementMetadataImpl;->getElements(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elements:Lcom/google/common/collect/ImmutableMap;

    .line 110
    invoke-direct {p0}, Lcom/google/gdata/model/ElementMetadataImpl;->getRenamedElements()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->renamedElements:Lcom/google/common/collect/ImmutableMap;

    .line 112
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementTransform;->getAdaptations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iput-object v8, p0, Lcom/google/gdata/model/ElementMetadataImpl;->adaptations:Lcom/google/gdata/model/AdaptationRegistry;

    .line 117
    :goto_1
    return-void

    .line 91
    .restart local v1    # "transformSourceKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    :cond_0
    iput-object v1, p0, Lcom/google/gdata/model/ElementMetadataImpl;->sourceKey:Lcom/google/gdata/model/ElementKey;

    goto/16 :goto_0

    .line 94
    .end local v1    # "transformSourceKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elemKey:Lcom/google/gdata/model/ElementKey;

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->sourceKey:Lcom/google/gdata/model/ElementKey;

    goto/16 :goto_0

    .line 115
    :cond_2
    invoke-static {p1, p2}, Lcom/google/gdata/model/AdaptationRegistryFactory;->create(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Lcom/google/gdata/model/AdaptationRegistry;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->adaptations:Lcom/google/gdata/model/AdaptationRegistry;

    goto :goto_1
.end method

.method private static addReferencedNamespaces(Lcom/google/gdata/model/ElementMetadata;Lcom/google/common/collect/ImmutableSet$Builder;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .local p1, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    .local p2, "added":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-interface {p0}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 490
    :cond_0
    return-void

    .line 468
    :cond_1
    invoke-interface {p0}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-interface {p0}, Lcom/google/gdata/model/ElementMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v5

    .line 472
    .local v5, "elemNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    if-eqz v5, :cond_2

    .line 473
    invoke-virtual {p1, v5}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 477
    :cond_2
    invoke-interface {p0}, Lcom/google/gdata/model/ElementMetadata;->getAttributes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 478
    .local v0, "attrKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-interface {p0, v0}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v1

    .line 479
    .local v1, "attrMetadata":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    invoke-interface {v1}, Lcom/google/gdata/model/AttributeMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v2

    .line 480
    .local v2, "attrNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    if-eqz v2, :cond_3

    .line 481
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 486
    .end local v0    # "attrKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .end local v1    # "attrMetadata":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    .end local v2    # "attrNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :cond_4
    invoke-interface {p0}, Lcom/google/gdata/model/ElementMetadata;->getElements()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/ElementKey;

    .line 487
    .local v4, "elemKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-interface {p0, v4}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v3

    .line 488
    .local v3, "childMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-static {v3, p1, p2}, Lcom/google/gdata/model/ElementMetadataImpl;->addReferencedNamespaces(Lcom/google/gdata/model/ElementMetadata;Lcom/google/common/collect/ImmutableSet$Builder;Ljava/util/Set;)V

    goto :goto_1
.end method

.method private getAttributes(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    .local p1, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 129
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/AttributeKey<*>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;

    .line 130
    .local v2, "info":Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;
    iget-object v3, v2, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->key:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {v3}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v3

    iget-object v4, v2, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->key:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 132
    .end local v2    # "info":Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method private getElements(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    .local p1, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 163
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;

    .line 164
    .local v2, "info":Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;
    iget-object v3, v2, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->key:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v3}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v3

    iget-object v4, v2, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->key:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 166
    .end local v2    # "info":Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method private getRenamedAttributes()Lcom/google/common/collect/ImmutableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 143
    .local v2, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/AttributeKey<*>;>;"
    iget-object v5, p0, Lcom/google/gdata/model/ElementMetadataImpl;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/AttributeKey;

    .line 144
    .local v4, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-virtual {p0, v4}, Lcom/google/gdata/model/ElementMetadataImpl;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v0

    .line 145
    .local v0, "bound":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    invoke-interface {v0}, Lcom/google/gdata/model/AttributeMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v1

    .line 146
    .local v1, "boundName":Lcom/google/gdata/model/QName;
    invoke-virtual {v4}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    invoke-virtual {v2, v1, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 150
    .end local v0    # "bound":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    .end local v1    # "boundName":Lcom/google/gdata/model/QName;
    .end local v4    # "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    return-object v5
.end method

.method private getRenamedElements()Lcom/google/common/collect/ImmutableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 179
    .local v3, "renamed":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementKey<**>;>;"
    iget-object v5, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elements:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementKey;

    .line 180
    .local v2, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    iget-object v5, p0, Lcom/google/gdata/model/ElementMetadataImpl;->schema:Lcom/google/gdata/model/Schema;

    iget-object v6, p0, Lcom/google/gdata/model/ElementMetadataImpl;->sourceKey:Lcom/google/gdata/model/ElementKey;

    iget-object v7, p0, Lcom/google/gdata/model/ElementMetadataImpl;->context:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {v5, v6, v2, v7}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v4

    .line 181
    .local v4, "transform":Lcom/google/gdata/model/ElementTransform;
    invoke-virtual {v4}, Lcom/google/gdata/model/ElementTransform;->getName()Lcom/google/gdata/model/QName;

    move-result-object v0

    .line 182
    .local v0, "childName":Lcom/google/gdata/model/QName;
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 187
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    .end local v0    # "childName":Lcom/google/gdata/model/QName;
    .end local v2    # "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v4    # "transform":Lcom/google/gdata/model/ElementTransform;
    :cond_1
    invoke-static {v3}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    return-object v5
.end method

.method private toWildcardLocalName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/QName;
    .locals 3
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 497
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    new-instance v0, Lcom/google/gdata/model/QName;

    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public adapt(Ljava/lang/String;)Lcom/google/gdata/model/ElementKey;
    .locals 1
    .param p1, "kind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->adaptations:Lcom/google/gdata/model/AdaptationRegistry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->adaptations:Lcom/google/gdata/model/AdaptationRegistry;

    invoke-virtual {v0, p1}, Lcom/google/gdata/model/AdaptationRegistry;->getAdaptation(Ljava/lang/String;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bind(Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;
    .locals 3
    .param p1, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TD;TE;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->schema:Lcom/google/gdata/model/Schema;

    iget-object v1, p0, Lcom/google/gdata/model/ElementMetadataImpl;->parent:Lcom/google/gdata/model/ElementKey;

    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elemKey:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/AttributeKey",
            "<TK;>;)",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TK;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->schema:Lcom/google/gdata/model/Schema;

    iget-object v1, p0, Lcom/google/gdata/model/ElementMetadataImpl;->sourceKey:Lcom/google/gdata/model/ElementKey;

    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->context:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "L:Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<TK;T",
            "L;",
            ">;)",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TK;T",
            "L;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TK;TL;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->schema:Lcom/google/gdata/model/Schema;

    iget-object v1, p0, Lcom/google/gdata/model/ElementMetadataImpl;->sourceKey:Lcom/google/gdata/model/ElementKey;

    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->context:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    return-object v0
.end method

.method public createElement()Lcom/google/gdata/model/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/wireformats/ContentCreationException;
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elemKey:Lcom/google/gdata/model/ElementKey;

    invoke-static {v0}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    return-object v0
.end method

.method public findAttribute(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;
    .locals 5
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->renamedAttributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->renamedAttributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 225
    .local v0, "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    if-eqz v0, :cond_1

    .line 259
    .end local v0    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 230
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 231
    .restart local v0    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->matchesAnyNamespace()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 239
    .local v1, "attrEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/AttributeKey<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/QName;

    invoke-virtual {p1, v3}, Lcom/google/gdata/model/QName;->matches(Lcom/google/gdata/model/QName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/AttributeKey;

    move-object v0, v3

    goto :goto_0

    .line 243
    .end local v1    # "attrEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/AttributeKey<*>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->matchesAnyLocalName()Z

    move-result v3

    if-nez v3, :cond_4

    .line 245
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0, p1}, Lcom/google/gdata/model/ElementMetadataImpl;->toWildcardLocalName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 246
    .restart local v0    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    if-eqz v0, :cond_4

    .line 247
    invoke-virtual {v0}, Lcom/google/gdata/model/AttributeKey;->getDatatype()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    goto :goto_0

    .line 252
    .end local v0    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :cond_4
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->adaptations:Lcom/google/gdata/model/AdaptationRegistry;

    if-eqz v3, :cond_5

    .line 253
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->adaptations:Lcom/google/gdata/model/AdaptationRegistry;

    invoke-virtual {v3, p1}, Lcom/google/gdata/model/AdaptationRegistry;->findAttribute(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    .line 254
    .restart local v0    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    if-nez v0, :cond_0

    .line 259
    .end local v0    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;
    .locals 5
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->renamedElements:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->renamedElements:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 282
    .local v0, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    if-eqz v0, :cond_1

    .line 317
    .end local v0    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_0
    :goto_0
    return-object v0

    .line 286
    :cond_1
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elements:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 287
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elements:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 288
    .restart local v0    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->matchesAnyNamespace()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elements:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    .local v1, "elemEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/QName;

    invoke-virtual {p1, v3}, Lcom/google/gdata/model/QName;->matches(Lcom/google/gdata/model/QName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/ElementKey;

    move-object v0, v3

    goto :goto_0

    .line 300
    .end local v1    # "elemEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementKey<**>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->matchesAnyLocalName()Z

    move-result v3

    if-nez v3, :cond_4

    .line 302
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elements:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0, p1}, Lcom/google/gdata/model/ElementMetadataImpl;->toWildcardLocalName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 303
    .restart local v0    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    if-eqz v0, :cond_4

    .line 304
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    goto :goto_0

    .line 310
    .end local v0    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_4
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->adaptations:Lcom/google/gdata/model/AdaptationRegistry;

    if-eqz v3, :cond_5

    .line 311
    iget-object v3, p0, Lcom/google/gdata/model/ElementMetadataImpl;->adaptations:Lcom/google/gdata/model/AdaptationRegistry;

    invoke-virtual {v3, p1}, Lcom/google/gdata/model/AdaptationRegistry;->findElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .line 312
    .restart local v0    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    if-nez v0, :cond_0

    .line 317
    .end local v0    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .locals 2
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/MetadataImpl;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    .line 397
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 398
    iget-object v1, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elemKey:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p1, v1}, Lcom/google/gdata/model/Element;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    .line 400
    :cond_0
    return-object v0
.end method

.method public getAttributeIterator(Lcom/google/gdata/model/Element;)Ljava/util/Iterator;
    .locals 1
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/gdata/model/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    invoke-virtual {p1, p0}, Lcom/google/gdata/model/Element;->getAttributeIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAttributes()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementMetadataImpl;->getAttributes()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;
    .locals 1

    .prologue
    .line 335
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    return-object v0
.end method

.method public getDefaultNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1

    .prologue
    .line 438
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementMetadataImpl;->getName()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method public getElementIterator(Lcom/google/gdata/model/Element;)Ljava/util/Iterator;
    .locals 1
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    invoke-virtual {p1, p0}, Lcom/google/gdata/model/Element;->getElementIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elements:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getElements()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementMetadataImpl;->getElements()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lcom/google/gdata/model/ElementKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elemKey:Lcom/google/gdata/model/ElementKey;

    return-object v0
.end method

.method public bridge synthetic getKey()Lcom/google/gdata/model/MetadataKey;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementMetadataImpl;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    return-object v0
.end method

.method public getMultipleVirtualElement()Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Lcom/google/gdata/model/ElementMetadataImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-ne v1, v2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-object v0

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/model/ElementMetadataImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    if-eqz v1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    invoke-virtual {v0}, Lcom/google/gdata/model/VirtualElementHolder;->getMultipleVirtualElement()Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->properties:Ljava/lang/Object;

    return-object v0
.end method

.method public getReferencedNamespaces()Ljava/util/Collection;
    .locals 3
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
    .line 452
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->referencedNamespaces:Ljava/util/Collection;

    if-nez v2, :cond_0

    .line 453
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 454
    .local v1, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 455
    .local v0, "added":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-static {p0, v1, v0}, Lcom/google/gdata/model/ElementMetadataImpl;->addReferencedNamespaces(Lcom/google/gdata/model/ElementMetadata;Lcom/google/common/collect/ImmutableSet$Builder;Ljava/util/Set;)V

    .line 456
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->referencedNamespaces:Ljava/util/Collection;

    .line 458
    .end local v0    # "added":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/ElementKey<**>;>;"
    .end local v1    # "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/gdata/model/ElementMetadataImpl;->referencedNamespaces:Ljava/util/Collection;

    return-object v2
.end method

.method public getSingleVirtualElement()Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    const/4 v0, 0x0

    .line 413
    iget-object v1, p0, Lcom/google/gdata/model/ElementMetadataImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-eq v1, v2, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-object v0

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/model/ElementMetadataImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    if-eqz v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    invoke-virtual {v0}, Lcom/google/gdata/model/VirtualElementHolder;->getSingleVirtualElement()Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getValidator()Lcom/google/gdata/model/ElementValidator;
    .locals 1

    .prologue
    .line 359
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->validator:Lcom/google/gdata/model/ElementValidator;

    return-object v0
.end method

.method public isContentRequired()Z
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-boolean v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->isContentRequired:Z

    return v0
.end method

.method public isDeclared(Lcom/google/gdata/model/AttributeKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeclared(Lcom/google/gdata/model/ElementKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    .local p1, "element":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elements:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFlattened()Z
    .locals 1

    .prologue
    .line 351
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-boolean v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->isFlattened:Z

    return v0
.end method

.method public isReferenced()Z
    .locals 1

    .prologue
    .line 343
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementMetadataImpl;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isSelected(Lcom/google/gdata/model/Element;)Z
    .locals 1
    .param p1, "e"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 347
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementMetadataImpl;->isVisible()Z

    move-result v0

    return v0
.end method

.method public parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/model/MetadataImpl;->parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->elemKey:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/gdata/wireformats/ObjectConverter;->getValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 410
    :cond_0
    return-void
.end method

.method public validate(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;)V
    .locals 1
    .param p1, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .param p2, "e"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 363
    .local p0, "this":Lcom/google/gdata/model/ElementMetadataImpl;, "Lcom/google/gdata/model/ElementMetadataImpl<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->validator:Lcom/google/gdata/model/ElementValidator;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/google/gdata/model/ElementMetadataImpl;->validator:Lcom/google/gdata/model/ElementValidator;

    invoke-interface {v0, p1, p2, p0}, Lcom/google/gdata/model/ElementValidator;->validate(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    .line 366
    :cond_0
    return-void
.end method
