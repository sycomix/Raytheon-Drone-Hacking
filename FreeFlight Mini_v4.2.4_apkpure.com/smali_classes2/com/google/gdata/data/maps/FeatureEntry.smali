.class public Lcom/google/gdata/data/maps/FeatureEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "FeatureEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/maps/2008#feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/maps/FeatureEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/maps/2008#feature"

.field public static final KML_CONTENT:Lcom/google/gdata/util/ContentType;


# instance fields
.field private hasView:Z

.field private isKmlDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/maps/2008#feature"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/maps/FeatureEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    .line 421
    new-instance v0, Lcom/google/gdata/util/ContentType;

    const-string v1, "application/vnd.google-earth.kml+xml"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/maps/FeatureEntry;->KML_CONTENT:Lcom/google/gdata/util/ContentType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/maps/FeatureEntry;->isKmlDefault:Z

    .line 68
    invoke-virtual {p0}, Lcom/google/gdata/data/maps/FeatureEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/maps/FeatureEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/maps/FeatureEntry;->isKmlDefault:Z

    .line 79
    return-void
.end method


# virtual methods
.method public addCustomProperty(Lcom/google/gdata/data/extensions/CustomProperty;)V
    .locals 1
    .param p1, "customProperty"    # Lcom/google/gdata/data/extensions/CustomProperty;

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/google/gdata/data/maps/FeatureEntry;->getCustomProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x0

    .line 83
    const-class v0, Lcom/google/gdata/data/maps/FeatureEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 87
    const-class v7, Lcom/google/gdata/data/maps/FeatureEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchId;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 90
    const-class v7, Lcom/google/gdata/data/maps/FeatureEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchInterrupted;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "interrupted"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 94
    const-class v7, Lcom/google/gdata/data/maps/FeatureEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchOperation;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "operation"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 98
    const-class v7, Lcom/google/gdata/data/maps/FeatureEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/batch/BatchStatus;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "batch"

    const-string v5, "http://schemas.google.com/gdata/batch"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 102
    const-class v0, Lcom/google/gdata/data/maps/FeatureEntry;

    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/google/gdata/data/extensions/CustomProperty;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 104
    const-class v7, Lcom/google/gdata/data/maps/FeatureEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/Deleted;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "deleted"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 107
    const-class v7, Lcom/google/gdata/data/maps/FeatureEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/PostalAddress;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "postalAddress"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 111
    const-class v0, Lcom/google/gdata/data/maps/FeatureEntry;

    const-class v1, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 112
    const-class v0, Lcom/google/gdata/data/maps/FeatureEntry;

    const-class v1, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 113
    new-instance v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0
.end method

.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/google/gdata/data/maps/FeatureEntry;->isKmlDefault:Z

    if-eqz v0, :cond_0

    .line 453
    sget-object v0, Lcom/google/gdata/data/maps/DataConstants;->KML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->setDefaultNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 455
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/data/BaseEntry;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 456
    return-void
.end method

.method public getAtomFeedLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 403
    const-string v0, "http://schemas.google.com/g/2005#feed"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/maps/FeatureEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getBatchId()Lcom/google/gdata/data/batch/BatchId;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchId;

    return-object v0
.end method

.method public getBatchInterrupted()Lcom/google/gdata/data/batch/BatchInterrupted;
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    return-object v0
.end method

.method public getBatchOperation()Lcom/google/gdata/data/batch/BatchOperation;
    .locals 1

    .prologue
    .line 185
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchOperation;

    return-object v0
.end method

.method public getBatchStatus()Lcom/google/gdata/data/batch/BatchStatus;
    .locals 1

    .prologue
    .line 216
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchStatus;

    return-object v0
.end method

.method public getCustomProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/CustomProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    const-class v0, Lcom/google/gdata/data/extensions/CustomProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeleted()Lcom/google/gdata/data/extensions/Deleted;
    .locals 1

    .prologue
    .line 275
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Deleted;

    return-object v0
.end method

.method public getKml()Lcom/google/gdata/util/XmlBlob;
    .locals 2

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/google/gdata/data/maps/FeatureEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v0

    .line 463
    .local v0, "content":Lcom/google/gdata/data/Content;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/gdata/data/OtherContent;

    if-nez v1, :cond_1

    .line 464
    :cond_0
    const/4 v1, 0x0

    .line 466
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/data/maps/FeatureEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/OtherContent;

    invoke-virtual {v1}, Lcom/google/gdata/data/OtherContent;->getXml()Lcom/google/gdata/util/XmlBlob;

    move-result-object v1

    goto :goto_0
.end method

.method public getPostalAddress()Lcom/google/gdata/data/extensions/PostalAddress;
    .locals 1

    .prologue
    .line 306
    const-class v0, Lcom/google/gdata/data/extensions/PostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/PostalAddress;

    return-object v0
.end method

.method public getResourceId()Lcom/google/gdata/data/extensions/ResourceId;
    .locals 1

    .prologue
    .line 337
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/ResourceId;

    return-object v0
.end method

.method public getStructuredPostalAddress()Lcom/google/gdata/data/extensions/StructuredPostalAddress;
    .locals 1

    .prologue
    .line 368
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    return-object v0
.end method

.method public getViewLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 442
    const-string v0, "http://schemas.google.com/maps/2008#view"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/maps/FeatureEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public hasBatchId()Z
    .locals 1

    .prologue
    .line 144
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchInterrupted()Z
    .locals 1

    .prologue
    .line 176
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchOperation()Z
    .locals 1

    .prologue
    .line 207
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchStatus()Z
    .locals 1

    .prologue
    .line 239
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCustomProperties()Z
    .locals 1

    .prologue
    .line 266
    const-class v0, Lcom/google/gdata/data/extensions/CustomProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 297
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPostalAddress()Z
    .locals 1

    .prologue
    .line 328
    const-class v0, Lcom/google/gdata/data/extensions/PostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasResourceId()Z
    .locals 1

    .prologue
    .line 359
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStructuredPostalAddress()Z
    .locals 1

    .prologue
    .line 392
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasView()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/google/gdata/data/maps/FeatureEntry;->hasView:Z

    return v0
.end method

.method public setBatchId(Lcom/google/gdata/data/batch/BatchId;)V
    .locals 1
    .param p1, "batchId"    # Lcom/google/gdata/data/batch/BatchId;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->removeExtension(Ljava/lang/Class;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/FeatureEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchInterrupted(Lcom/google/gdata/data/batch/BatchInterrupted;)V
    .locals 1
    .param p1, "batchInterrupted"    # Lcom/google/gdata/data/batch/BatchInterrupted;

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->removeExtension(Ljava/lang/Class;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/FeatureEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchOperation(Lcom/google/gdata/data/batch/BatchOperation;)V
    .locals 1
    .param p1, "batchOperation"    # Lcom/google/gdata/data/batch/BatchOperation;

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->removeExtension(Ljava/lang/Class;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/FeatureEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchStatus(Lcom/google/gdata/data/batch/BatchStatus;)V
    .locals 1
    .param p1, "batchStatus"    # Lcom/google/gdata/data/batch/BatchStatus;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->removeExtension(Ljava/lang/Class;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/FeatureEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDeleted(Lcom/google/gdata/data/extensions/Deleted;)V
    .locals 1
    .param p1, "deleted"    # Lcom/google/gdata/data/extensions/Deleted;

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->removeExtension(Ljava/lang/Class;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/FeatureEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setHasView(Z)V
    .locals 0
    .param p1, "hasView"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/google/gdata/data/maps/FeatureEntry;->hasView:Z

    .line 434
    return-void
.end method

.method public setKml(Lcom/google/gdata/util/XmlBlob;)V
    .locals 2
    .param p1, "kml"    # Lcom/google/gdata/util/XmlBlob;

    .prologue
    .line 477
    new-instance v0, Lcom/google/gdata/data/OtherContent;

    invoke-direct {v0}, Lcom/google/gdata/data/OtherContent;-><init>()V

    .line 478
    .local v0, "content":Lcom/google/gdata/data/OtherContent;
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/OtherContent;->setXml(Lcom/google/gdata/util/XmlBlob;)V

    .line 479
    sget-object v1, Lcom/google/gdata/data/maps/FeatureEntry;->KML_CONTENT:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/OtherContent;->setMimeType(Lcom/google/gdata/util/ContentType;)V

    .line 480
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->setContent(Lcom/google/gdata/data/Content;)V

    .line 481
    return-void
.end method

.method public setKmlDefault(Z)V
    .locals 0
    .param p1, "isDefault"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/google/gdata/data/maps/FeatureEntry;->isKmlDefault:Z

    .line 426
    return-void
.end method

.method public setPostalAddress(Lcom/google/gdata/data/extensions/PostalAddress;)V
    .locals 1
    .param p1, "postalAddress"    # Lcom/google/gdata/data/extensions/PostalAddress;

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    const-class v0, Lcom/google/gdata/data/extensions/PostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->removeExtension(Ljava/lang/Class;)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/FeatureEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setResourceId(Lcom/google/gdata/data/extensions/ResourceId;)V
    .locals 1
    .param p1, "resourceId"    # Lcom/google/gdata/data/extensions/ResourceId;

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->removeExtension(Ljava/lang/Class;)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/FeatureEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStructuredPostalAddress(Lcom/google/gdata/data/extensions/StructuredPostalAddress;)V
    .locals 1
    .param p1, "structuredPostalAddress"    # Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/FeatureEntry;->removeExtension(Ljava/lang/Class;)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/FeatureEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{FeatureEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method
