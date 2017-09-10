.class public Lcom/google/gdata/data/gtt/DocumentEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "DocumentEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaEntry",
        "<",
        "Lcom/google/gdata/data/gtt/DocumentEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

    .line 41
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
    .line 50
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 51
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x0

    .line 55
    const-class v0, Lcom/google/gdata/data/gtt/DocumentEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 59
    const-class v7, Lcom/google/gdata/data/gtt/DocumentEntry;

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

    .line 62
    const-class v0, Lcom/google/gdata/data/gtt/DocumentEntry;

    const-class v1, Lcom/google/gdata/data/gtt/DocumentSource;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 63
    const-class v0, Lcom/google/gdata/data/gtt/DocumentEntry;

    const-class v1, Lcom/google/gdata/data/gtt/GlossariesElement;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 64
    new-instance v0, Lcom/google/gdata/data/gtt/GlossariesElement;

    invoke-direct {v0}, Lcom/google/gdata/data/gtt/GlossariesElement;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/gtt/GlossariesElement;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 65
    const-class v0, Lcom/google/gdata/data/gtt/DocumentEntry;

    const-class v1, Lcom/google/gdata/data/extensions/LastModifiedBy;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 66
    const-class v0, Lcom/google/gdata/data/gtt/DocumentEntry;

    const-class v1, Lcom/google/gdata/data/gtt/NumberOfSourceWords;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 67
    const-class v0, Lcom/google/gdata/data/gtt/DocumentEntry;

    const-class v1, Lcom/google/gdata/data/gtt/PercentComplete;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/gtt/DocumentEntry;

    const-class v1, Lcom/google/gdata/data/gtt/SourceLanguage;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 69
    const-class v0, Lcom/google/gdata/data/gtt/DocumentEntry;

    const-class v1, Lcom/google/gdata/data/gtt/TargetLanguage;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 70
    const-class v0, Lcom/google/gdata/data/gtt/DocumentEntry;

    const-class v1, Lcom/google/gdata/data/gtt/TmsElement;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 71
    new-instance v0, Lcom/google/gdata/data/gtt/TmsElement;

    invoke-direct {v0}, Lcom/google/gdata/data/gtt/TmsElement;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/gtt/TmsElement;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getAccessControlListLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 362
    const-string v0, "http://schemas.google.com/acl/2007#accessControlList"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/gtt/DocumentEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getDeleted()Lcom/google/gdata/data/extensions/Deleted;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Deleted;

    return-object v0
.end method

.method public getDocumentSource()Lcom/google/gdata/data/gtt/DocumentSource;
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/google/gdata/data/gtt/DocumentSource;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/gtt/DocumentSource;

    return-object v0
.end method

.method public getGlossary()Lcom/google/gdata/data/gtt/GlossariesElement;
    .locals 1

    .prologue
    .line 142
    const-class v0, Lcom/google/gdata/data/gtt/GlossariesElement;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/gtt/GlossariesElement;

    return-object v0
.end method

.method public getLastModifiedBy()Lcom/google/gdata/data/extensions/LastModifiedBy;
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/google/gdata/data/extensions/LastModifiedBy;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/LastModifiedBy;

    return-object v0
.end method

.method public getNumberOfSourceWords()Lcom/google/gdata/data/gtt/NumberOfSourceWords;
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/google/gdata/data/gtt/NumberOfSourceWords;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/gtt/NumberOfSourceWords;

    return-object v0
.end method

.method public getPercentComplete()Lcom/google/gdata/data/gtt/PercentComplete;
    .locals 1

    .prologue
    .line 236
    const-class v0, Lcom/google/gdata/data/gtt/PercentComplete;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/gtt/PercentComplete;

    return-object v0
.end method

.method public getSourceLanguage()Lcom/google/gdata/data/gtt/SourceLanguage;
    .locals 1

    .prologue
    .line 267
    const-class v0, Lcom/google/gdata/data/gtt/SourceLanguage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/gtt/SourceLanguage;

    return-object v0
.end method

.method public getTargetLanguage()Lcom/google/gdata/data/gtt/TargetLanguage;
    .locals 1

    .prologue
    .line 298
    const-class v0, Lcom/google/gdata/data/gtt/TargetLanguage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/gtt/TargetLanguage;

    return-object v0
.end method

.method public getTranslationMemory()Lcom/google/gdata/data/gtt/TmsElement;
    .locals 1

    .prologue
    .line 329
    const-class v0, Lcom/google/gdata/data/gtt/TmsElement;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/gtt/TmsElement;

    return-object v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDocumentSource()Z
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/google/gdata/data/gtt/DocumentSource;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGlossary()Z
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/google/gdata/data/gtt/GlossariesElement;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasLastModifiedBy()Z
    .locals 1

    .prologue
    .line 195
    const-class v0, Lcom/google/gdata/data/extensions/LastModifiedBy;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNumberOfSourceWords()Z
    .locals 1

    .prologue
    .line 227
    const-class v0, Lcom/google/gdata/data/gtt/NumberOfSourceWords;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPercentComplete()Z
    .locals 1

    .prologue
    .line 258
    const-class v0, Lcom/google/gdata/data/gtt/PercentComplete;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSourceLanguage()Z
    .locals 1

    .prologue
    .line 289
    const-class v0, Lcom/google/gdata/data/gtt/SourceLanguage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTargetLanguage()Z
    .locals 1

    .prologue
    .line 320
    const-class v0, Lcom/google/gdata/data/gtt/TargetLanguage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTranslationMemory()Z
    .locals 1

    .prologue
    .line 351
    const-class v0, Lcom/google/gdata/data/gtt/TmsElement;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setDeleted(Lcom/google/gdata/data/extensions/Deleted;)V
    .locals 1
    .param p1, "deleted"    # Lcom/google/gdata/data/extensions/Deleted;

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDocumentSource(Lcom/google/gdata/data/gtt/DocumentSource;)V
    .locals 1
    .param p1, "documentSource"    # Lcom/google/gdata/data/gtt/DocumentSource;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    const-class v0, Lcom/google/gdata/data/gtt/DocumentSource;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGlossary(Lcom/google/gdata/data/gtt/GlossariesElement;)V
    .locals 1
    .param p1, "glossary"    # Lcom/google/gdata/data/gtt/GlossariesElement;

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const-class v0, Lcom/google/gdata/data/gtt/GlossariesElement;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setLastModifiedBy(Lcom/google/gdata/data/extensions/LastModifiedBy;)V
    .locals 1
    .param p1, "lastModifiedBy"    # Lcom/google/gdata/data/extensions/LastModifiedBy;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const-class v0, Lcom/google/gdata/data/extensions/LastModifiedBy;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNumberOfSourceWords(Lcom/google/gdata/data/gtt/NumberOfSourceWords;)V
    .locals 1
    .param p1, "numberOfSourceWords"    # Lcom/google/gdata/data/gtt/NumberOfSourceWords;

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const-class v0, Lcom/google/gdata/data/gtt/NumberOfSourceWords;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPercentComplete(Lcom/google/gdata/data/gtt/PercentComplete;)V
    .locals 1
    .param p1, "percentComplete"    # Lcom/google/gdata/data/gtt/PercentComplete;

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    const-class v0, Lcom/google/gdata/data/gtt/PercentComplete;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSourceLanguage(Lcom/google/gdata/data/gtt/SourceLanguage;)V
    .locals 1
    .param p1, "sourceLanguage"    # Lcom/google/gdata/data/gtt/SourceLanguage;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const-class v0, Lcom/google/gdata/data/gtt/SourceLanguage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTargetLanguage(Lcom/google/gdata/data/gtt/TargetLanguage;)V
    .locals 1
    .param p1, "targetLanguage"    # Lcom/google/gdata/data/gtt/TargetLanguage;

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    const-class v0, Lcom/google/gdata/data/gtt/TargetLanguage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTranslationMemory(Lcom/google/gdata/data/gtt/TmsElement;)V
    .locals 1
    .param p1, "translationMemory"    # Lcom/google/gdata/data/gtt/TmsElement;

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 339
    const-class v0, Lcom/google/gdata/data/gtt/TmsElement;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{DocumentEntry "

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
    .line 367
    return-void
.end method
