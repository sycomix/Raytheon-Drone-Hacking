.class public Lcom/google/gdata/data/webmastertools/MessagesFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "MessagesFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/webmastertools/MessagesFeed;",
        "Lcom/google/gdata/data/webmastertools/MessageEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY:Lcom/google/gdata/data/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "http://schemas.google.com/webmasters/tools/2007#messages-feed"

    invoke-static {v0}, Lcom/google/gdata/data/webmastertools/Namespaces;->createCategory(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/webmastertools/MessagesFeed;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/google/gdata/data/webmastertools/MessageEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/MessagesFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/webmastertools/MessagesFeed;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 55
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 56
    return-void
.end method
