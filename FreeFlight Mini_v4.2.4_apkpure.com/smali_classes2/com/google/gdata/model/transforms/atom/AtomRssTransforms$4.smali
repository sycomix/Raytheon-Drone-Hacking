.class final Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$4;
.super Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;
.source "AtomRssTransforms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addEntryOutOfLineContentTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
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
    .line 254
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    return-void
.end method

.method public startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .locals 8
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
    const/4 v3, 0x0

    .line 234
    instance-of v4, p3, Lcom/google/gdata/model/atom/OutOfLineContent;

    if-nez v4, :cond_0

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z

    move-result v3

    .line 245
    :goto_0
    return v3

    :cond_0
    move-object v0, p3

    .line 238
    check-cast v0, Lcom/google/gdata/model/atom/OutOfLineContent;

    .line 239
    .local v0, "content":Lcom/google/gdata/model/atom/OutOfLineContent;
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/OutOfLineContent;->getMimeType()Lcom/google/gdata/util/ContentType;

    move-result-object v2

    .line 240
    .local v2, "type":Lcom/google/gdata/util/ContentType;
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/OutOfLineContent;->getSrc()Ljava/net/URI;

    move-result-object v1

    .line 241
    .local v1, "src":Ljava/net/URI;
    if-nez v2, :cond_1

    move-object v4, v3

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/OutOfLineContent;->getLength()J

    move-result-wide v6

    invoke-static {p1, v4, v3, v6, v7}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->access$000(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Ljava/lang/String;J)V

    .line 245
    const/4 v3, 0x0

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v2}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
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
    .line 250
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    return-void
.end method
