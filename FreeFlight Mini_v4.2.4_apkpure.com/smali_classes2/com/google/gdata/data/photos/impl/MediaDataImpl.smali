.class public Lcom/google/gdata/data/photos/impl/MediaDataImpl;
.super Ljava/lang/Object;
.source "MediaDataImpl.java"

# interfaces
.implements Lcom/google/gdata/data/photos/MediaData;


# instance fields
.field private extPoint:Lcom/google/gdata/data/ExtensionPoint;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 0
    .param p1, "extensionPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    .line 55
    return-void
.end method


# virtual methods
.method public addExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/google/gdata/data/Extension;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 170
    return-void
.end method

.method public addRepeatingExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/google/gdata/data/Extension;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 178
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 5
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x1

    .line 61
    iget-object v2, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 63
    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 66
    const-class v2, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-class v2, Lcom/google/gdata/data/BaseEntry;

    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 70
    :cond_0
    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-static {v4}, Lcom/google/gdata/data/media/mediarss/MediaContent;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 72
    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {p1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 73
    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    const-class v3, Lcom/google/gdata/data/media/mediarss/MediaTitle;

    invoke-static {v3}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 75
    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    const-class v3, Lcom/google/gdata/data/media/mediarss/MediaDescription;

    invoke-static {v3}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 77
    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaKeywords;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 78
    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    .line 79
    .local v1, "thumbDesc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v1, v4}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 80
    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p1, v2, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 81
    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-virtual {p1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 82
    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    const-class v3, Lcom/google/gdata/data/media/mediarss/MediaCredit;

    invoke-static {v3}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 84
    return-void
.end method

.method public getMediaCategories()Ljava/util/List;
    .locals 2
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
    .line 109
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 110
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCategories()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaContents()Ljava/util/List;
    .locals 2
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
    .line 97
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 98
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getContents()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaCredits()Ljava/util/List;
    .locals 2
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
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 122
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCredits()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    return-object v0
.end method

.method public getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 146
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaThumbnails()Ljava/util/List;
    .locals 2
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
    .line 133
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 134
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getThumbnails()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public removeExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/google/gdata/data/Extension;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->removeExtension(Lcom/google/gdata/data/Extension;)V

    .line 186
    return-void
.end method

.method public removeExtension(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Extension;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->removeExtension(Ljava/lang/Class;)V

    .line 182
    return-void
.end method

.method public removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/google/gdata/data/Extension;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 190
    return-void
.end method

.method public setExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/google/gdata/data/Extension;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 174
    return-void
.end method

.method public setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V
    .locals 3
    .param p1, "keywords"    # Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/ExtensionPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    .line 158
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    .end local v0    # "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    invoke-direct {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;-><init>()V

    .line 160
    .restart local v0    # "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    iget-object v1, p0, Lcom/google/gdata/data/photos/impl/MediaDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/ExtensionPoint;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 162
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V

    .line 163
    return-void
.end method
