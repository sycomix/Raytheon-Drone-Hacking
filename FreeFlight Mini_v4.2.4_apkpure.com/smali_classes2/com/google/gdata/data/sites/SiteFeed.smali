.class public Lcom/google/gdata/data/sites/SiteFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "SiteFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/sites/SiteFeed;",
        "Lcom/google/gdata/data/sites/SiteEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/gdata/data/sites/SiteEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    const-class v0, Lcom/google/gdata/data/sites/SiteEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 48
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 52
    const-class v0, Lcom/google/gdata/data/sites/SiteFeed;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 56
    const-class v7, Lcom/google/gdata/data/sites/SiteFeed;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/FeedLink;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v6, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v6}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feedLink"

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 59
    new-instance v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/FeedLink;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/FeedLink;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/sites/SiteFeed;

    invoke-static {v4, v4}, Lcom/google/gdata/data/sites/SitesLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getEditLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 102
    const-string v0, "edit"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/SiteFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/SiteFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/FeedLink;

    return-object v0
.end method

.method public hasFeedLink()Z
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/SiteFeed;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setFeedLink(Lcom/google/gdata/data/extensions/FeedLink;)V
    .locals 1
    .param p1, "feedLink"    # Lcom/google/gdata/data/extensions/FeedLink;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/SiteFeed;->removeExtension(Ljava/lang/Class;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/SiteFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{SiteFeed "

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
    .line 107
    return-void
.end method
