.class final Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$3;
.super Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;
.source "AtomRssTransforms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->addEntryTransforms(Lcom/google/gdata/model/MetadataRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
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
    .line 213
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    return-void
.end method

.method public startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .locals 11
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
    const/4 v6, 0x0

    .line 176
    instance-of v7, p3, Lcom/google/gdata/model/atom/Person;

    if-nez v7, :cond_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z

    move-result v6

    .line 204
    :goto_0
    return v6

    :cond_0
    move-object v3, p3

    .line 180
    check-cast v3, Lcom/google/gdata/model/atom/Person;

    .line 181
    .local v3, "person":Lcom/google/gdata/model/atom/Person;
    invoke-virtual {v3}, Lcom/google/gdata/model/atom/Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/gdata/model/atom/Person;->getName()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v4, "text":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 187
    .local v1, "hasEmail":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    if-eqz v2, :cond_3

    .line 192
    if-eqz v1, :cond_2

    .line 193
    const-string v7, " ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    if-eqz v1, :cond_3

    .line 197
    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_3
    invoke-virtual {p0, p3, p4}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$3;->getName(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/QName;

    move-result-object v5

    .line 202
    .local v5, "xmlName":Lcom/google/gdata/model/QName;
    invoke-virtual {v5}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "hasEmail":Z
    .end local v5    # "xmlName":Lcom/google/gdata/model/QName;
    :cond_4
    move v1, v6

    .line 185
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
    .line 209
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    return-void
.end method
