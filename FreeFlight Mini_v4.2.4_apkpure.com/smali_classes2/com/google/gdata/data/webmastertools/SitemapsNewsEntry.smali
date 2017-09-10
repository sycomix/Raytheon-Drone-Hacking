.class public Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;
.super Lcom/google/gdata/data/webmastertools/SitemapsEntry;
.source "SitemapsNewsEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/webmasters/tools/2007#sitemap-news"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/webmastertools/SitemapsEntry",
        "<",
        "Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY:Lcom/google/gdata/data/Category;

.field private static final NEWS_PUBLICATION_LABEL:Ljava/lang/String; = "sitemap-news-publication-label"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "http://schemas.google.com/webmasters/tools/2007#sitemap-news"

    invoke-static {v0}, Lcom/google/gdata/data/webmastertools/Namespaces;->createCategory(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 67
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 70
    return-void
.end method

.method public getPublicationLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;

    .line 90
    .local v0, "label":Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setPublicationLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;

    .line 77
    .local v0, "label":Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;

    .end local v0    # "label":Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;
    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;-><init>()V

    .line 79
    .restart local v0    # "label":Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 82
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry$PublicationLabel;->setValue(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method protected validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->validate()V

    .line 103
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/SitemapsNewsEntry;->getPublicationLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sitemap-news-publication-label is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-void
.end method
