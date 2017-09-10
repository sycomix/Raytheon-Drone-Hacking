.class final Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$7;
.super Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;
.source "AtomRssTransforms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addLinkTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
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
    .line 358
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
    const/4 v9, 0x0

    .line 325
    instance-of v7, p3, Lcom/google/gdata/model/atom/Link;

    if-nez v7, :cond_0

    .line 326
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z

    move-result v7

    .line 349
    :goto_0
    return v7

    :cond_0
    move-object v4, p3

    .line 328
    check-cast v4, Lcom/google/gdata/model/atom/Link;

    .line 329
    .local v4, "link":Lcom/google/gdata/model/atom/Link;
    invoke-virtual {v4}, Lcom/google/gdata/model/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "rel":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/gdata/model/atom/Link;->getType()Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/gdata/model/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "href":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/gdata/model/atom/Link;->getLength()J

    move-result-wide v2

    .line 334
    .local v2, "length":J
    if-eqz v5, :cond_2

    const-string v7, "enclosure"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 335
    invoke-static {p1, v6, v1, v2, v3}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->access$000(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Ljava/lang/String;J)V

    .line 349
    :cond_1
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 336
    :cond_2
    const-string v7, "comments"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 337
    sget-object v7, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v8, "comments"

    invoke-virtual {p1, v7, v8, v9, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 339
    :cond_3
    const-string v7, "alternate"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 340
    sget-object v7, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v8, "link"

    invoke-virtual {p1, v7, v8, v9, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_4
    const-string v7, "via"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 343
    if-eqz v1, :cond_1

    .line 344
    new-instance v7, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v8, "url"

    invoke-direct {v7, v8, v1}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 346
    .local v0, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    sget-object v7, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v8, "source"

    invoke-virtual {p1, v7, v8, v0, v9}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
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
    .line 354
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    return-void
.end method
