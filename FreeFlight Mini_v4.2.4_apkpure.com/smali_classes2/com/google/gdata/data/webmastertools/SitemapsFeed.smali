.class public Lcom/google/gdata/data/webmastertools/SitemapsFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "SitemapsFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/webmastertools/SitemapsFeed;",
        "Lcom/google/gdata/data/webmastertools/SitemapsEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY:Lcom/google/gdata/data/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "http://schemas.google.com/webmasters/tools/2007#sitemaps-feed"

    invoke-static {v0}, Lcom/google/gdata/data/webmastertools/Namespaces;->createCategory(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/webmastertools/SitemapsFeed;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/SitemapsFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/webmastertools/SitemapsFeed;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 82
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapsFeed;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapMobile;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 85
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapsFeed;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapNews;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 89
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 90
    return-void
.end method

.method public getSitemapMobile()Lcom/google/gdata/data/webmastertools/SitemapMobile;
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapMobile;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitemapsFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapMobile;

    return-object v0
.end method

.method public getSitemapNews()Lcom/google/gdata/data/webmastertools/SitemapNews;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapNews;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitemapsFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapNews;

    return-object v0
.end method

.method public setSitemapMobile(Lcom/google/gdata/data/webmastertools/SitemapMobile;)V
    .locals 0
    .param p1, "sitemap"    # Lcom/google/gdata/data/webmastertools/SitemapMobile;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 106
    return-void
.end method

.method public setSitemapNews(Lcom/google/gdata/data/webmastertools/SitemapNews;)V
    .locals 0
    .param p1, "sitemap"    # Lcom/google/gdata/data/webmastertools/SitemapNews;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 122
    return-void
.end method
