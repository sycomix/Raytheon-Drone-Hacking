.class public Lcom/google/gdata/data/webmastertools/SitemapNews$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "SitemapNews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/SitemapNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/webmastertools/SitemapNews;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/webmastertools/SitemapNews;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "profile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/gdata/data/webmastertools/SitemapNews$Handler;->this$0:Lcom/google/gdata/data/webmastertools/SitemapNews;

    .line 107
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapNews;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 108
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v1, "publication-label"

    if-ne p2, v1, :cond_0

    .line 117
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;-><init>()V

    .line 118
    .local v0, "label":Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;
    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/SitemapNews$Handler;->this$0:Lcom/google/gdata/data/webmastertools/SitemapNews;

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/webmastertools/SitemapNews;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v1

    .line 123
    .end local v0    # "label":Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v1

    goto :goto_0
.end method
