.class final Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$8;
.super Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;
.source "AtomRssTransforms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addSourceTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 0
    .param p1, "xw"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    return-void
.end method

.method public startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .locals 10
    .param p1, "xw"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "parent"    # Lcom/google/gdata/model/Element;
    .param p3, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p4, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 375
    invoke-virtual {p3}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v6

    sget-object v7, Lcom/google/gdata/model/atom/Source;->ICON:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v7}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 376
    .local v1, "isIcon":Z
    invoke-virtual {p3}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v6

    sget-object v7, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v7}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 378
    .local v2, "isLogo":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    instance-of v6, p2, Lcom/google/gdata/model/atom/Source;

    if-nez v6, :cond_3

    .line 379
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z

    move-result v5

    .line 404
    :cond_2
    :goto_0
    return v5

    :cond_3
    move-object v3, p2

    .line 382
    check-cast v3, Lcom/google/gdata/model/atom/Source;

    .line 384
    .local v3, "source":Lcom/google/gdata/model/atom/Source;
    if-eqz v1, :cond_4

    sget-object v6, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v3, v6}, Lcom/google/gdata/model/atom/Source;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 389
    :cond_4
    sget-object v6, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v7, "image"

    invoke-virtual {p1, v6, v7, v9, v9}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 390
    sget-object v6, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v7, "url"

    invoke-virtual {p3}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v6, v7, v9, v8}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v3}, Lcom/google/gdata/model/atom/Source;->getTitle()Lcom/google/gdata/model/atom/TextContent;

    move-result-object v4

    .line 394
    .local v4, "title":Lcom/google/gdata/model/atom/TextContent;
    if-eqz v4, :cond_5

    .line 395
    sget-object v6, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v7, "title"

    invoke-virtual {v4}, Lcom/google/gdata/model/atom/TextContent;->getPlainText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v6, v7, v9, v8}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 398
    :cond_5
    invoke-virtual {v3}, Lcom/google/gdata/model/atom/Source;->getHtmlLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 399
    .local v0, "htmlLink":Lcom/google/gdata/model/atom/Link;
    if-eqz v0, :cond_6

    .line 400
    sget-object v6, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v7, "link"

    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v6, v7, v9, v8}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 402
    :cond_6
    sget-object v6, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v7, "image"

    invoke-virtual {p1, v6, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public textContent(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 0
    .param p1, "xw"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    return-void
.end method
