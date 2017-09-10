.class public Lcom/google/gdata/data/webmastertools/SitemapNews;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "SitemapNews.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "sitemap-news"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;,
        Lcom/google/gdata/data/webmastertools/SitemapNews$Handler;
    }
.end annotation


# static fields
.field public static final SITEMAP_NEWS:Ljava/lang/String; = "sitemap-news"

.field private static final SITEMAP_PUBLICATION_LABEL:Ljava/lang/String; = "publication-label"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public addPublicationLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;-><init>()V

    .line 65
    .local v0, "val":Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;->setValue(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitemapNews;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 67
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "writer"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "profile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 87
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionDescription;->getNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionDescription;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v3, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/webmastertools/SitemapNews;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 91
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    .line 92
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 100
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapNews$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/webmastertools/SitemapNews$Handler;-><init>(Lcom/google/gdata/data/webmastertools/SitemapNews;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getPublicationLabels()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v4, Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;

    invoke-virtual {p0, v4}, Lcom/google/gdata/data/webmastertools/SitemapNews;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "labels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;

    .line 76
    .local v1, "l":Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;
    invoke-virtual {v1}, Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v1    # "l":Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;
    :cond_0
    return-object v3
.end method
