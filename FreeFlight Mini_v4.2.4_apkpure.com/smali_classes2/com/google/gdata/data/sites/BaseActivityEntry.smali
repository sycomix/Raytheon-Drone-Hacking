.class public abstract Lcom/google/gdata/data/sites/BaseActivityEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "BaseActivityEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/sites/BaseActivityEntry",
        "<TE;>;>",
        "Lcom/google/gdata/data/BaseEntry",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lcom/google/gdata/data/sites/BaseActivityEntry;, "Lcom/google/gdata/data/sites/BaseActivityEntry<TE;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 38
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
    .line 47
    .local p0, "this":Lcom/google/gdata/data/sites/BaseActivityEntry;, "Lcom/google/gdata/data/sites/BaseActivityEntry<TE;>;"
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 48
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 52
    .local p0, "this":Lcom/google/gdata/data/sites/BaseActivityEntry;, "Lcom/google/gdata/data/sites/BaseActivityEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/sites/BaseActivityEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/sites/BaseActivityEntry;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/gdata/data/sites/SitesLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/sites/BaseActivityEntry;

    const-class v1, Lcom/google/gdata/data/dublincore/Publisher;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getCurrentLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 104
    .local p0, "this":Lcom/google/gdata/data/sites/BaseActivityEntry;, "Lcom/google/gdata/data/sites/BaseActivityEntry<TE;>;"
    const-string v0, "http://schemas.google.com/sites/2008#current"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/BaseActivityEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getPublisher()Lcom/google/gdata/data/dublincore/Publisher;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/google/gdata/data/sites/BaseActivityEntry;, "Lcom/google/gdata/data/sites/BaseActivityEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/dublincore/Publisher;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseActivityEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/dublincore/Publisher;

    return-object v0
.end method

.method public getRevisionLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 113
    .local p0, "this":Lcom/google/gdata/data/sites/BaseActivityEntry;, "Lcom/google/gdata/data/sites/BaseActivityEntry<TE;>;"
    const-string v0, "http://schemas.google.com/sites/2008#revision"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/BaseActivityEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public hasPublisher()Z
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/google/gdata/data/sites/BaseActivityEntry;, "Lcom/google/gdata/data/sites/BaseActivityEntry<TE;>;"
    const-class v0, Lcom/google/gdata/data/dublincore/Publisher;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseActivityEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setPublisher(Lcom/google/gdata/data/dublincore/Publisher;)V
    .locals 1
    .param p1, "publisher"    # Lcom/google/gdata/data/dublincore/Publisher;

    .prologue
    .line 80
    .local p0, "this":Lcom/google/gdata/data/sites/BaseActivityEntry;, "Lcom/google/gdata/data/sites/BaseActivityEntry<TE;>;"
    if-nez p1, :cond_0

    .line 81
    const-class v0, Lcom/google/gdata/data/dublincore/Publisher;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/BaseActivityEntry;->removeExtension(Ljava/lang/Class;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/BaseActivityEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    .local p0, "this":Lcom/google/gdata/data/sites/BaseActivityEntry;, "Lcom/google/gdata/data/sites/BaseActivityEntry<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{BaseActivityEntry "

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
    .line 118
    .local p0, "this":Lcom/google/gdata/data/sites/BaseActivityEntry;, "Lcom/google/gdata/data/sites/BaseActivityEntry<TE;>;"
    return-void
.end method
