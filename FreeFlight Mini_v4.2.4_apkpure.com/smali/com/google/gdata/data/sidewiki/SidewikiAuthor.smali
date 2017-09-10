.class public Lcom/google/gdata/data/sidewiki/SidewikiAuthor;
.super Lcom/google/gdata/data/Person;
.source "SidewikiAuthor.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "author"
    nsAlias = "atom"
    nsUri = "http://www.w3.org/2005/Atom"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "author"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/gdata/data/Person;-><init>()V

    .line 46
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 236
    const-class v1, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 238
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 239
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 240
    return-object v0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x0

    .line 50
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/Person;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 54
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;

    const-class v1, Lcom/google/gdata/data/sidewiki/SidewikiUserDescription;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;

    const-class v1, Lcom/google/gdata/data/sidewiki/EntriesNumber;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    const-class v7, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;

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

    .line 59
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;

    const/4 v1, 0x1

    invoke-static {v1, v4}, Lcom/google/gdata/data/extensions/ResourceId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 61
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;

    const-class v1, Lcom/google/gdata/data/sidewiki/SidewikiThumbnail;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getDescription()Lcom/google/gdata/data/sidewiki/SidewikiUserDescription;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiUserDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sidewiki/SidewikiUserDescription;

    return-object v0
.end method

.method public getNumEntries()Lcom/google/gdata/data/sidewiki/EntriesNumber;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/google/gdata/data/sidewiki/EntriesNumber;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sidewiki/EntriesNumber;

    return-object v0
.end method

.method public getRating()Lcom/google/gdata/data/extensions/Rating;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Rating;

    return-object v0
.end method

.method public getResourceId()Lcom/google/gdata/data/extensions/ResourceId;
    .locals 1

    .prologue
    .line 166
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/ResourceId;

    return-object v0
.end method

.method public getThumbnail()Lcom/google/gdata/data/sidewiki/SidewikiThumbnail;
    .locals 1

    .prologue
    .line 197
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sidewiki/SidewikiThumbnail;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiUserDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNumEntries()Z
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/google/gdata/data/sidewiki/EntriesNumber;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 157
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasResourceId()Z
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setDescription(Lcom/google/gdata/data/sidewiki/SidewikiUserDescription;)V
    .locals 1
    .param p1, "description"    # Lcom/google/gdata/data/sidewiki/SidewikiUserDescription;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiUserDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->removeExtension(Ljava/lang/Class;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNumEntries(Lcom/google/gdata/data/sidewiki/EntriesNumber;)V
    .locals 1
    .param p1, "numEntries"    # Lcom/google/gdata/data/sidewiki/EntriesNumber;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    const-class v0, Lcom/google/gdata/data/sidewiki/EntriesNumber;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->removeExtension(Ljava/lang/Class;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRating(Lcom/google/gdata/data/extensions/Rating;)V
    .locals 1
    .param p1, "rating"    # Lcom/google/gdata/data/extensions/Rating;

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->removeExtension(Ljava/lang/Class;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setResourceId(Lcom/google/gdata/data/extensions/ResourceId;)V
    .locals 1
    .param p1, "resourceId"    # Lcom/google/gdata/data/extensions/ResourceId;

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->removeExtension(Ljava/lang/Class;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setThumbnail(Lcom/google/gdata/data/sidewiki/SidewikiThumbnail;)V
    .locals 1
    .param p1, "thumbnail"    # Lcom/google/gdata/data/sidewiki/SidewikiThumbnail;

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    const-class v0, Lcom/google/gdata/data/sidewiki/SidewikiThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->removeExtension(Ljava/lang/Class;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/SidewikiAuthor;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SidewikiAuthor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method
