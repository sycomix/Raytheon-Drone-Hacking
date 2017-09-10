.class public Lcom/google/gdata/model/transforms/atom/AtomVersionTransforms;
.super Ljava/lang/Object;
.source "AtomVersionTransforms.java"


# static fields
.field private static final V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-static {v0}, Lcom/google/gdata/model/MetadataContext;->forVersion(Lcom/google/gdata/util/Version;)Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/transforms/atom/AtomVersionTransforms;->V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOssTransform(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/ElementKey;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataRegistry;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    sget-object v0, Lcom/google/gdata/model/transforms/atom/AtomVersionTransforms;->V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/model/QName;

    sget-object v2, Lcom/google/gdata/util/Namespaces;->openSearchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;

    .line 53
    return-void
.end method

.method public static addTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v3, 0x0

    .line 40
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->TOTAL_RESULTS:Lcom/google/gdata/model/ElementKey;

    invoke-static {p0, v0}, Lcom/google/gdata/model/transforms/atom/AtomVersionTransforms;->addOssTransform(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/ElementKey;)V

    .line 41
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->START_INDEX:Lcom/google/gdata/model/ElementKey;

    invoke-static {p0, v0}, Lcom/google/gdata/model/transforms/atom/AtomVersionTransforms;->addOssTransform(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/ElementKey;)V

    .line 42
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->ITEMS_PER_PAGE:Lcom/google/gdata/model/ElementKey;

    invoke-static {p0, v0}, Lcom/google/gdata/model/transforms/atom/AtomVersionTransforms;->addOssTransform(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/ElementKey;)V

    .line 44
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/gd/GdAttributes;->KIND:Lcom/google/gdata/model/AttributeKey;

    sget-object v2, Lcom/google/gdata/model/transforms/atom/AtomVersionTransforms;->V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 45
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    sget-object v1, Lcom/google/gdata/model/gd/GdAttributes;->KIND:Lcom/google/gdata/model/AttributeKey;

    sget-object v2, Lcom/google/gdata/model/transforms/atom/AtomVersionTransforms;->V1_CONTEXT:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 46
    return-void
.end method
