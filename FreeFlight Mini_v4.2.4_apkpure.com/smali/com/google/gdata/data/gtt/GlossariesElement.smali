.class public Lcom/google/gdata/data/gtt/GlossariesElement;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "GlossariesElement.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "glossary"
    nsAlias = "gtt"
    nsUri = "http://schemas.google.com/gtt/2009/11"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "glossary"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 99
    const-class v1, Lcom/google/gdata/data/gtt/GlossariesElement;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 101
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 102
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 103
    return-object v0
.end method


# virtual methods
.method public addLink(Lcom/google/gdata/data/Link;)V
    .locals 1
    .param p1, "link"    # Lcom/google/gdata/data/Link;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/gdata/data/gtt/GlossariesElement;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x1

    .line 50
    const-class v0, Lcom/google/gdata/data/gtt/GlossariesElement;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    const-class v7, Lcom/google/gdata/data/gtt/GlossariesElement;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/Link;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "atom"

    const-string v5, "http://www.w3.org/2005/Atom"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "link"

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
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
    .line 64
    const-class v0, Lcom/google/gdata/data/Link;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/GlossariesElement;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasLinks()Z
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/gdata/data/Link;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/GlossariesElement;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "{GlossariesElement}"

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
