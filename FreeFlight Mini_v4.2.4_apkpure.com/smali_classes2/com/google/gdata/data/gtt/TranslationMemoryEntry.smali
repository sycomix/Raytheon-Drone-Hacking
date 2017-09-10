.class public Lcom/google/gdata/data/gtt/TranslationMemoryEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "TranslationMemoryEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaEntry",
        "<",
        "Lcom/google/gdata/data/gtt/TranslationMemoryEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

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
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 47
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 51
    const-class v0, Lcom/google/gdata/data/gtt/TranslationMemoryEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/gtt/TranslationMemoryEntry;

    const-class v1, Lcom/google/gdata/data/gtt/ScopeEntry;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getAccessControlListLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 97
    const-string v0, "http://schemas.google.com/acl/2007#accessControlList"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/gtt/TranslationMemoryEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lcom/google/gdata/data/gtt/ScopeEntry;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/google/gdata/data/gtt/ScopeEntry;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/TranslationMemoryEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/gtt/ScopeEntry;

    return-object v0
.end method

.method public hasScope()Z
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/google/gdata/data/gtt/ScopeEntry;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/TranslationMemoryEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setScope(Lcom/google/gdata/data/gtt/ScopeEntry;)V
    .locals 1
    .param p1, "scope"    # Lcom/google/gdata/data/gtt/ScopeEntry;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const-class v0, Lcom/google/gdata/data/gtt/ScopeEntry;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/TranslationMemoryEntry;->removeExtension(Ljava/lang/Class;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/TranslationMemoryEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{TranslationMemoryEntry "

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
    .line 102
    return-void
.end method
