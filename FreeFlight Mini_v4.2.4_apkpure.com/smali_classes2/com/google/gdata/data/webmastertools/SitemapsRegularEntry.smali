.class public Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;
.super Lcom/google/gdata/data/webmastertools/SitemapsEntry;
.source "SitemapsRegularEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/webmasters/tools/2007#sitemap-regular"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/webmastertools/SitemapsEntry",
        "<",
        "Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY:Lcom/google/gdata/data/Category;

.field private static final SITEMAP_TYPE:Ljava/lang/String; = "sitemap-type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "http://schemas.google.com/webmasters/tools/2007#sitemap-regular"

    invoke-static {v0}, Lcom/google/gdata/data/webmastertools/Namespaces;->createCategory(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
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
    .line 55
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 71
    return-void
.end method

.method public getSitemapType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;

    .line 91
    .local v0, "type":Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;
    if-nez v0, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setSitemapType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;

    .line 78
    .local v0, "type":Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;

    .end local v0    # "type":Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;
    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;-><init>()V

    .line 80
    .restart local v0    # "type":Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 83
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry$SitemapType;->setValue(Ljava/lang/String;)V

    .line 84
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

    .line 104
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/SitemapsRegularEntry;->getSitemapType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sitemap-type is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    return-void
.end method
