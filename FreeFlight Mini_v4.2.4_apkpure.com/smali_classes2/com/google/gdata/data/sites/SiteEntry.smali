.class public Lcom/google/gdata/data/sites/SiteEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "SiteEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/sites/SiteEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 37
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
    .line 46
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 47
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v1, 0x1

    .line 51
    const-class v0, Lcom/google/gdata/data/sites/SiteEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/sites/SiteEntry;

    invoke-static {v1, v1}, Lcom/google/gdata/data/sites/SitesLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 57
    const-class v0, Lcom/google/gdata/data/sites/SiteEntry;

    const-class v1, Lcom/google/gdata/data/sites/SiteName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/sites/SiteEntry;

    const-class v1, Lcom/google/gdata/data/sites/Theme;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getEntryPostLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 131
    const-string v0, "http://schemas.google.com/g/2005#post"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/SiteEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getSiteName()Lcom/google/gdata/data/sites/SiteName;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/google/gdata/data/sites/SiteName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/SiteEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sites/SiteName;

    return-object v0
.end method

.method public getSourceLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 140
    const-string v0, "http://schemas.google.com/sites/2008#source"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/SiteEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Lcom/google/gdata/data/sites/Theme;
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/google/gdata/data/sites/Theme;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/SiteEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sites/Theme;

    return-object v0
.end method

.method public getWebAddressMappingLinks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const-string v0, "http://schemas.google.com/sites/2008#webAddressMapping"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/SiteEntry;->getLinks(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasSiteName()Z
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/google/gdata/data/sites/SiteName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/SiteEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTheme()Z
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/google/gdata/data/sites/Theme;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/SiteEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setSiteName(Lcom/google/gdata/data/sites/SiteName;)V
    .locals 1
    .param p1, "siteName"    # Lcom/google/gdata/data/sites/SiteName;

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const-class v0, Lcom/google/gdata/data/sites/SiteName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/SiteEntry;->removeExtension(Ljava/lang/Class;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/SiteEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTheme(Lcom/google/gdata/data/sites/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/google/gdata/data/sites/Theme;

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    const-class v0, Lcom/google/gdata/data/sites/Theme;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/SiteEntry;->removeExtension(Ljava/lang/Class;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/SiteEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{SiteEntry "

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
    .line 154
    return-void
.end method
