.class public Lcom/google/gdata/data/webmastertools/SitemapMobile$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "SitemapMobile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/SitemapMobile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/webmastertools/SitemapMobile;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/webmastertools/SitemapMobile;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "profile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/gdata/data/webmastertools/SitemapMobile$Handler;->this$0:Lcom/google/gdata/data/webmastertools/SitemapMobile;

    .line 108
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapMobile;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 109
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
    .line 117
    const-string v1, "markup-language"

    if-ne p2, v1, :cond_0

    .line 118
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;

    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;-><init>()V

    .line 119
    .local v0, "lang":Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;
    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/SitemapMobile$Handler;->this$0:Lcom/google/gdata/data/webmastertools/SitemapMobile;

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/webmastertools/SitemapMobile;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v1

    .line 124
    .end local v0    # "lang":Lcom/google/gdata/data/webmastertools/SitemapMobile$MarkupLanguageConstruct;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v1

    goto :goto_0
.end method
