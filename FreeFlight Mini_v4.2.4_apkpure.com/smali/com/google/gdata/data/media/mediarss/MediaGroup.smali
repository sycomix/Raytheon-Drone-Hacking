.class public Lcom/google/gdata/data/media/mediarss/MediaGroup;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "MediaGroup.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "group"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCategory(Lcom/google/gdata/data/media/mediarss/MediaCategory;)V
    .locals 1
    .param p1, "category"    # Lcom/google/gdata/data/media/mediarss/MediaCategory;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public addContent(Lcom/google/gdata/data/media/mediarss/MediaContent;)V
    .locals 0
    .param p1, "content"    # Lcom/google/gdata/data/media/mediarss/MediaContent;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 65
    return-void
.end method

.method public addCredit(Lcom/google/gdata/data/media/mediarss/MediaCredit;)V
    .locals 1
    .param p1, "credit"    # Lcom/google/gdata/data/media/mediarss/MediaCredit;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCredits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public addRating(Lcom/google/gdata/data/media/mediarss/MediaRating;)V
    .locals 1
    .param p1, "rating"    # Lcom/google/gdata/data/media/mediarss/MediaRating;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRatings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public addRestriction(Lcom/google/gdata/data/media/mediarss/MediaRestriction;)V
    .locals 1
    .param p1, "restriction"    # Lcom/google/gdata/data/media/mediarss/MediaRestriction;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRestrictions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public addText(Lcom/google/gdata/data/media/mediarss/MediaText;)V
    .locals 1
    .param p1, "text"    # Lcom/google/gdata/data/media/mediarss/MediaText;

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getTexts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public addThumbnail(Lcom/google/gdata/data/media/mediarss/MediaThumbnail;)V
    .locals 1
    .param p1, "thumbnail"    # Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public clearCategories()V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    return-void
.end method

.method public clearContents()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    return-void
.end method

.method public clearCredits()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCredits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    return-void
.end method

.method public clearRatings()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRatings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    return-void
.end method

.method public clearRestrictions()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRestrictions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    return-void
.end method

.method public clearTexts()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getTexts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    return-void
.end method

.method public clearThumbnails()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 52
    invoke-static {p1}, Lcom/google/gdata/data/media/mediarss/MediaRssNamespace;->declareAll(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 53
    return-void
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaCategory;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategoriesWithScheme(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 82
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/data/media/mediarss/MediaCategory;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCategories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaCategory;

    .line 83
    .local v0, "category":Lcom/google/gdata/data/media/mediarss/MediaCategory;
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaCategory;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaCategory;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v0    # "category":Lcom/google/gdata/data/media/mediarss/MediaCategory;
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCopyright()Lcom/google/gdata/data/media/mediarss/MediaCopyright;
    .locals 1

    .prologue
    .line 101
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaCopyright;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaCopyright;

    return-object v0
.end method

.method public getCredits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaCredit;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Lcom/google/gdata/data/media/mediarss/MediaDescription;
    .locals 1

    .prologue
    .line 228
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaDescription;

    return-object v0
.end method

.method public getHash()Lcom/google/gdata/data/media/mediarss/MediaHash;
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaHash;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaHash;

    return-object v0
.end method

.method public getKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    .locals 1

    .prologue
    .line 137
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    return-object v0
.end method

.method public getPlayer()Lcom/google/gdata/data/media/mediarss/MediaPlayer;
    .locals 1

    .prologue
    .line 149
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaPlayer;

    return-object v0
.end method

.method public getRatings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaRating;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaRating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRestrictions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaRestriction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaText;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaThumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/gdata/data/media/mediarss/MediaTitle;
    .locals 1

    .prologue
    .line 217
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaTitle;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaTitle;

    return-object v0
.end method

.method public setCopyright(Lcom/google/gdata/data/media/mediarss/MediaCopyright;)V
    .locals 1
    .param p1, "copyright"    # Lcom/google/gdata/data/media/mediarss/MediaCopyright;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaCopyright;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->removeExtension(Ljava/lang/Class;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDescription(Lcom/google/gdata/data/media/mediarss/MediaDescription;)V
    .locals 1
    .param p1, "description"    # Lcom/google/gdata/data/media/mediarss/MediaDescription;

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->removeExtension(Ljava/lang/Class;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setHash(Lcom/google/gdata/data/media/mediarss/MediaHash;)V
    .locals 1
    .param p1, "hash"    # Lcom/google/gdata/data/media/mediarss/MediaHash;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaHash;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->removeExtension(Ljava/lang/Class;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V
    .locals 1
    .param p1, "keywords"    # Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->removeExtension(Ljava/lang/Class;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPlayer(Lcom/google/gdata/data/media/mediarss/MediaPlayer;)V
    .locals 1
    .param p1, "player"    # Lcom/google/gdata/data/media/mediarss/MediaPlayer;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->removeExtension(Ljava/lang/Class;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTitle(Lcom/google/gdata/data/media/mediarss/MediaTitle;)V
    .locals 1
    .param p1, "title"    # Lcom/google/gdata/data/media/mediarss/MediaTitle;

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaTitle;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->removeExtension(Ljava/lang/Class;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
