.class public Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;
.super Ljava/lang/Object;
.source "XmlGenerator.java"

# interfaces
.implements Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/wireformats/XmlGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmlElementGenerator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->getName(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/QName;

    move-result-object v0

    .line 224
    .local v0, "name":Lcom/google/gdata/model/QName;
    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method protected getAttributes(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/List;
    .locals 12
    .param p1, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const/4 v8, 0x0

    .line 189
    const/4 v5, 0x0

    .line 190
    .local v5, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    invoke-virtual {p1, p2}, Lcom/google/gdata/model/Element;->getAttributeIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v4

    .line 191
    .local v4, "attributeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Attribute;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 192
    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v6

    .line 193
    .local v6, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .restart local v5    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 195
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/Attribute;

    .line 196
    .local v3, "attribute":Lcom/google/gdata/model/Attribute;
    invoke-virtual {v3}, Lcom/google/gdata/model/Attribute;->getAttributeKey()Lcom/google/gdata/model/AttributeKey;

    move-result-object v1

    .line 197
    .local v1, "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    if-nez p2, :cond_0

    move-object v2, v8

    .line 199
    .local v2, "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/gdata/model/AttributeMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v7

    .line 200
    .local v7, "qName":Lcom/google/gdata/model/QName;
    :goto_2
    invoke-virtual {v7}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "alias":Ljava/lang/String;
    :goto_3
    new-instance v9, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    invoke-virtual {v7}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/gdata/model/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v0, v10, v11}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    .end local v7    # "qName":Lcom/google/gdata/model/QName;
    :cond_0
    invoke-interface {p2, v1}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v2

    goto :goto_1

    .line 199
    .restart local v2    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    :cond_1
    invoke-virtual {v1}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v7

    goto :goto_2

    .restart local v7    # "qName":Lcom/google/gdata/model/QName;
    :cond_2
    move-object v0, v8

    .line 200
    goto :goto_3

    .line 206
    .end local v1    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .end local v2    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    .end local v3    # "attribute":Lcom/google/gdata/model/Attribute;
    .end local v6    # "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v7    # "qName":Lcom/google/gdata/model/QName;
    :cond_3
    return-object v5
.end method

.method protected getName(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/QName;
    .locals 1
    .param p1, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/model/QName;"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNamespaces(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Collection;
    .locals 1
    .param p1, "parent"    # Lcom/google/gdata/model/Element;
    .param p2, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-nez p1, :cond_0

    .line 179
    invoke-static {p2, p3}, Lcom/google/gdata/wireformats/GeneratorUtils;->calculateNamespaces(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .locals 5
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
    .line 155
    .local p4, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->getNamespaces(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Collection;

    move-result-object v2

    .line 156
    .local v2, "namespaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    invoke-virtual {p0, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->getAttributes(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    invoke-virtual {p0, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->getName(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/QName;

    move-result-object v1

    .line 159
    .local v1, "name":Lcom/google/gdata/model/QName;
    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v0, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 160
    const/4 v3, 0x1

    return v3
.end method

.method public textContent(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v1

    .line 213
    .local v1, "value":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "valStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 216
    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;)V

    .line 219
    .end local v0    # "valStr":Ljava/lang/String;
    :cond_0
    return-void

    .line 211
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    invoke-interface {p3, p2, p3}, Lcom/google/gdata/model/ElementMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
