.class public abstract Lcom/google/gdata/data/sites/BaseContentEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "BaseContentEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/sites/BaseContentEntry",
        "<TE;>;>",
        "Lcom/google/gdata/data/media/MediaEntry",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

    .line 46
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
    .line 55
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 56
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 9
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 60
    const-class v0, Lcom/google/gdata/data/sites/BaseContentEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 64
    const-class v7, Lcom/google/gdata/data/sites/BaseContentEntry;

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

    .line 67
    const-class v7, Lcom/google/gdata/data/sites/BaseContentEntry;

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

    .line 71
    const-class v7, Lcom/google/gdata/data/sites/BaseContentEntry;

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

    .line 75
    const-class v7, Lcom/google/gdata/data/sites/BaseContentEntry;

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

    .line 79
    const-class v7, Lcom/google/gdata/data/sites/BaseContentEntry;

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

    .line 82
    const-class v0, Lcom/google/gdata/data/sites/BaseContentEntry;

    invoke-static {v8, v8}, Lcom/google/gdata/data/sites/SitesLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 84
    const-class v0, Lcom/google/gdata/data/sites/BaseContentEntry;

    const-class v1, Lcom/google/gdata/data/dublincore/Publisher;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 85
    const-class v0, Lcom/google/gdata/data/sites/BaseContentEntry;

    const-class v1, Lcom/google/gdata/data/sites/Revision;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method public getBatchId()Lcom/google/gdata/data/batch/BatchId;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchId;

    return-object v0
.end method

.method public getBatchInterrupted()Lcom/google/gdata/data/batch/BatchInterrupted;
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    return-object v0
.end method

.method public getBatchOperation()Lcom/google/gdata/data/batch/BatchOperation;
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchOperation;

    return-object v0
.end method

.method public getBatchStatus()Lcom/google/gdata/data/batch/BatchStatus;
    .locals 1

    .prologue
    .line 188
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchStatus;

    return-object v0
.end method

.method public getDeleted()Lcom/google/gdata/data/extensions/Deleted;
    .locals 1

    .prologue
    .line 222
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Deleted;

    return-object v0
.end method

.method public getEntryPostLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 327
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-string v0, "http://schemas.google.com/g/2005#post"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/BaseContentEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getPublisher()Lcom/google/gdata/data/dublincore/Publisher;
    .locals 1

    .prologue
    .line 259
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/dublincore/Publisher;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/dublincore/Publisher;

    return-object v0
.end method

.method public getRevision()Lcom/google/gdata/data/sites/Revision;
    .locals 1

    .prologue
    .line 294
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/sites/Revision;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sites/Revision;

    return-object v0
.end method

.method public getRevisionLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 336
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-string v0, "http://schemas.google.com/sites/2008#revision"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/BaseContentEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public hasBatchId()Z
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchInterrupted()Z
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchOperation()Z
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBatchStatus()Z
    .locals 1

    .prologue
    .line 211
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 248
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPublisher()Z
    .locals 1

    .prologue
    .line 285
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/dublincore/Publisher;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRevision()Z
    .locals 1

    .prologue
    .line 316
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/sites/Revision;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setBatchId(Lcom/google/gdata/data/batch/BatchId;)V
    .locals 1
    .param p1, "batchId"    # Lcom/google/gdata/data/batch/BatchId;

    .prologue
    .line 103
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    if-nez p1, :cond_0

    .line 104
    const-class v0, Lcom/google/gdata/data/batch/BatchId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/BaseContentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchInterrupted(Lcom/google/gdata/data/batch/BatchInterrupted;)V
    .locals 1
    .param p1, "batchInterrupted"    # Lcom/google/gdata/data/batch/BatchInterrupted;

    .prologue
    .line 135
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    if-nez p1, :cond_0

    .line 136
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/BaseContentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchOperation(Lcom/google/gdata/data/batch/BatchOperation;)V
    .locals 1
    .param p1, "batchOperation"    # Lcom/google/gdata/data/batch/BatchOperation;

    .prologue
    .line 166
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    if-nez p1, :cond_0

    .line 167
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/BaseContentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBatchStatus(Lcom/google/gdata/data/batch/BatchStatus;)V
    .locals 1
    .param p1, "batchStatus"    # Lcom/google/gdata/data/batch/BatchStatus;

    .prologue
    .line 198
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    if-nez p1, :cond_0

    .line 199
    const-class v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/BaseContentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDeleted(Lcom/google/gdata/data/extensions/Deleted;)V
    .locals 1
    .param p1, "deleted"    # Lcom/google/gdata/data/extensions/Deleted;

    .prologue
    .line 233
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    if-nez p1, :cond_0

    .line 234
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/BaseContentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPublisher(Lcom/google/gdata/data/dublincore/Publisher;)V
    .locals 1
    .param p1, "publisher"    # Lcom/google/gdata/data/dublincore/Publisher;

    .prologue
    .line 270
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    if-nez p1, :cond_0

    .line 271
    const-class v0, Lcom/google/gdata/data/dublincore/Publisher;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/BaseContentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRevision(Lcom/google/gdata/data/sites/Revision;)V
    .locals 1
    .param p1, "revision"    # Lcom/google/gdata/data/sites/Revision;

    .prologue
    .line 303
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    if-nez p1, :cond_0

    .line 304
    const-class v0, Lcom/google/gdata/data/sites/Revision;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseContentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/BaseContentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{BaseContentEntry "

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
    .line 341
    .local p0, "this":Lcom/google/gdata/data/sites/BaseContentEntry;, "Lcom/google/gdata/data/sites/BaseContentEntry<TE;>;"
    return-void
.end method
