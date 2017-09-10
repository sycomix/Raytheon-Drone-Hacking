.class public Lcom/google/gdata/data/sidewiki/SidewikiEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "SidewikiEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/sidewiki/SidewikiEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 38
    const-string v0, "sidewiki#sidewikiEntry"

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->setKind(Ljava/lang/String;)V

    .line 39
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
    .line 48
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 49
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 9
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 53
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 57
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 59
    new-instance v0, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;

    invoke-direct {v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiEntry;

    const-class v1, Lcom/google/gdata/data/sidewiki/Source;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 61
    const-class v7, Lcom/google/gdata/data/sidewiki/SidewikiEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/Rating;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "rating"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 64
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiEntry;

    invoke-static {v8, v4}, Lcom/google/gdata/data/extensions/ResourceId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 66
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiEntry;

    const-class v1, Lcom/google/gdata/data/sidewiki/Usefulness;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getEntrySource()Lcom/google/gdata/data/sidewiki/Source;
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/google/gdata/data/sidewiki/Source;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sidewiki/Source;

    return-object v0
.end method

.method public getRating()Lcom/google/gdata/data/extensions/Rating;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Rating;

    return-object v0
.end method

.method public getResourceId()Lcom/google/gdata/data/extensions/ResourceId;
    .locals 1

    .prologue
    .line 142
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/ResourceId;

    return-object v0
.end method

.method public getUsefulness()Lcom/google/gdata/data/sidewiki/Usefulness;
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/google/gdata/data/sidewiki/Usefulness;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sidewiki/Usefulness;

    return-object v0
.end method

.method public hasEntrySource()Z
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/google/gdata/data/sidewiki/Source;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasResourceId()Z
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasUsefulness()Z
    .locals 1

    .prologue
    .line 195
    const-class v0, Lcom/google/gdata/data/sidewiki/Usefulness;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setEntrySource(Lcom/google/gdata/data/sidewiki/Source;)V
    .locals 1
    .param p1, "entrySource"    # Lcom/google/gdata/data/sidewiki/Source;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    const-class v0, Lcom/google/gdata/data/sidewiki/Source;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->removeExtension(Ljava/lang/Class;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRating(Lcom/google/gdata/data/extensions/Rating;)V
    .locals 1
    .param p1, "rating"    # Lcom/google/gdata/data/extensions/Rating;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->removeExtension(Ljava/lang/Class;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setResourceId(Lcom/google/gdata/data/extensions/ResourceId;)V
    .locals 1
    .param p1, "resourceId"    # Lcom/google/gdata/data/extensions/ResourceId;

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->removeExtension(Ljava/lang/Class;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUsefulness(Lcom/google/gdata/data/sidewiki/Usefulness;)V
    .locals 1
    .param p1, "usefulness"    # Lcom/google/gdata/data/sidewiki/Usefulness;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const-class v0, Lcom/google/gdata/data/sidewiki/Usefulness;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->removeExtension(Ljava/lang/Class;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/SidewikiEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{SidewikiEntry "

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
    .line 200
    return-void
.end method
