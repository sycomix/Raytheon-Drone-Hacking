.class public Lcom/google/gdata/data/maps/MapEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "MapEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/maps/2008#map"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaEntry",
        "<",
        "Lcom/google/gdata/data/maps/MapEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/maps/2008#map"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/maps/2008#map"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/maps/MapEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/google/gdata/data/maps/MapEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/maps/MapEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 73
    return-void
.end method


# virtual methods
.method public addCustomProperty(Lcom/google/gdata/data/extensions/CustomProperty;)V
    .locals 1
    .param p1, "customProperty"    # Lcom/google/gdata/data/extensions/CustomProperty;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/gdata/data/maps/MapEntry;->getCustomProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x0

    .line 77
    const-class v0, Lcom/google/gdata/data/maps/MapEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 81
    const-class v7, Lcom/google/gdata/data/maps/MapEntry;

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

    .line 84
    const-class v7, Lcom/google/gdata/data/maps/MapEntry;

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

    .line 88
    const-class v7, Lcom/google/gdata/data/maps/MapEntry;

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

    .line 92
    const-class v7, Lcom/google/gdata/data/maps/MapEntry;

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

    .line 96
    const-class v0, Lcom/google/gdata/data/maps/MapEntry;

    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/google/gdata/data/extensions/CustomProperty;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 98
    const-class v7, Lcom/google/gdata/data/maps/MapEntry;

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

    .line 101
    const-class v7, Lcom/google/gdata/data/maps/MapEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/FeedLink;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feedLink"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 104
    new-instance v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/FeedLink;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/FeedLink;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 105
    const-class v0, Lcom/google/gdata/data/maps/MapEntry;

    const-class v1, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method public getAtomAlternateLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 362
    const-string v0, "alternate"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/maps/MapEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getAtomFeedLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 373
    const-string v0, "http://schemas.google.com/g/2005#feed"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/maps/MapEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getBatchId()Lcom/google/gdata/data/batch/BatchId;
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchId;

    return-object v0
.end method

.method public getBatchInterrupted()Lcom/google/gdata/data/batch/BatchInterrupted;
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    return-object v0
.end method

.method public getBatchOperation()Lcom/google/gdata/data/batch/BatchOperation;
    .locals 1

    .prologue
    .line 177
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchOperation;

    return-object v0
.end method

.method public getBatchStatus()Lcom/google/gdata/data/batch/BatchStatus;
    .locals 1

    .prologue
    .line 208
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

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
    .line 240
    const-class v0, Lcom/google/gdata/data/extensions/CustomProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeleted()Lcom/google/gdata/data/extensions/Deleted;
    .locals 1

    .prologue
    .line 267
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Deleted;

    return-object v0
.end method

.method public getFeatureFeedUrl()Ljava/net/URL;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/google/gdata/data/maps/MapEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v1

    instance-of v1, v1, Lcom/google/gdata/data/OutOfLineContent;

    if-eqz v1, :cond_0

    .line 394
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/google/gdata/data/maps/MapEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {v1}, Lcom/google/gdata/data/OutOfLineContent;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 400
    :goto_0
    return-object v1

    .line 396
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    move-object v1, v3

    .line 397
    goto :goto_0

    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    move-object v1, v3

    .line 400
    goto :goto_0
.end method

.method public getFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1

    .prologue
    .line 298
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/FeedLink;

    return-object v0
.end method

.method public getResourceId()Lcom/google/gdata/data/extensions/ResourceId;
    .locals 1

    .prologue
    .line 329
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/ResourceId;

    return-object v0
.end method

.method public getViewLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 409
    const-string v0, "http://schemas.google.com/maps/2008#view"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/maps/MapEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public hasBatchId()Z
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchInterrupted()Z
    .locals 1

    .prologue
    .line 168
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchOperation()Z
    .locals 1

    .prologue
    .line 199
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchStatus()Z
    .locals 1

    .prologue
    .line 231
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCustomProperties()Z
    .locals 1

    .prologue
    .line 258
    const-class v0, Lcom/google/gdata/data/extensions/CustomProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 289
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasFeedLink()Z
    .locals 1

    .prologue
    .line 320
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasResourceId()Z
    .locals 1

    .prologue
    .line 351
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setBatchId(Lcom/google/gdata/data/batch/BatchId;)V
    .locals 1
    .param p1, "batchId"    # Lcom/google/gdata/data/batch/BatchId;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->removeExtension(Ljava/lang/Class;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/MapEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchInterrupted(Lcom/google/gdata/data/batch/BatchInterrupted;)V
    .locals 1
    .param p1, "batchInterrupted"    # Lcom/google/gdata/data/batch/BatchInterrupted;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->removeExtension(Ljava/lang/Class;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/MapEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchOperation(Lcom/google/gdata/data/batch/BatchOperation;)V
    .locals 1
    .param p1, "batchOperation"    # Lcom/google/gdata/data/batch/BatchOperation;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->removeExtension(Ljava/lang/Class;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/MapEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchStatus(Lcom/google/gdata/data/batch/BatchStatus;)V
    .locals 1
    .param p1, "batchStatus"    # Lcom/google/gdata/data/batch/BatchStatus;

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->removeExtension(Ljava/lang/Class;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/MapEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDeleted(Lcom/google/gdata/data/extensions/Deleted;)V
    .locals 1
    .param p1, "deleted"    # Lcom/google/gdata/data/extensions/Deleted;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->removeExtension(Ljava/lang/Class;)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/MapEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFeedLink(Lcom/google/gdata/data/extensions/FeedLink;)V
    .locals 1
    .param p1, "feedLink"    # Lcom/google/gdata/data/extensions/FeedLink;

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->removeExtension(Ljava/lang/Class;)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/MapEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setResourceId(Lcom/google/gdata/data/extensions/ResourceId;)V
    .locals 1
    .param p1, "resourceId"    # Lcom/google/gdata/data/extensions/ResourceId;

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 339
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/maps/MapEntry;->removeExtension(Ljava/lang/Class;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/maps/MapEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{MapEntry "

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
    .line 378
    return-void
.end method
