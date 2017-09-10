.class public final Lcom/google/gdata/data/webmastertools/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# static fields
.field public static final KIND_MESSAGE:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007#message"

.field public static final KIND_MESSAGES_FEED:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007#messages-feed"

.field public static final KIND_SITEMAPS_FEED:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007#sitemaps-feed"

.field public static final KIND_SITEMAP_MOBILE:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007#sitemap-mobile"

.field public static final KIND_SITEMAP_NEWS:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007#sitemap-news"

.field public static final KIND_SITEMAP_REGULAR:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007#sitemap-regular"

.field public static final KIND_SITES_FEED:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007#sites-feed"

.field public static final KIND_SITE_INFO:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007#site-info"

.field public static final WT:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007"

.field public static final WT_ALIAS:Ljava/lang/String; = "wt"

.field public static final WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final WT_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final WT_PREFIX:Ljava/lang/String; = "http://schemas.google.com/webmasters/tools/2007#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "wt"

    const-string v2, "http://schemas.google.com/webmasters/tools/2007"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 51
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    sput-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCategory(Ljava/lang/String;)Lcom/google/gdata/data/Category;
    .locals 2
    .param p0, "kindTerm"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    invoke-direct {v0, v1, p0}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
