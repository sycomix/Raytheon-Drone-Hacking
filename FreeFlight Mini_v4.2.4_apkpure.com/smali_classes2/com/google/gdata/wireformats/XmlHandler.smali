.class public Lcom/google/gdata/wireformats/XmlHandler;
.super Lcom/google/gdata/wireformats/XmlParser$ElementHandler;
.source "XmlHandler.java"


# instance fields
.field protected final element:Lcom/google/gdata/model/Element;

.field protected final metadata:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field protected final parentElement:Lcom/google/gdata/model/Element;

.field protected final vc:Lcom/google/gdata/model/ValidationContext;


# direct methods
.method public constructor <init>(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 0
    .param p1, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .param p2, "parent"    # Lcom/google/gdata/model/Element;
    .param p3, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ValidationContext;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p4, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-direct {p0}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/gdata/wireformats/XmlHandler;->vc:Lcom/google/gdata/model/ValidationContext;

    .line 68
    iput-object p2, p0, Lcom/google/gdata/wireformats/XmlHandler;->parentElement:Lcom/google/gdata/model/Element;

    .line 69
    iput-object p3, p0, Lcom/google/gdata/wireformats/XmlHandler;->element:Lcom/google/gdata/model/Element;

    .line 70
    iput-object p4, p0, Lcom/google/gdata/wireformats/XmlHandler;->metadata:Lcom/google/gdata/model/ElementMetadata;

    .line 71
    return-void
.end method


# virtual methods
.method protected createChildElement(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;
    .locals 2
    .param p1, "qName"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-nez p2, :cond_0

    .line 163
    new-instance v1, Lcom/google/gdata/model/Element;

    invoke-direct {v1, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/QName;)V

    .line 167
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->createElement()Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createHandler(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlHandler;
    .locals 2
    .param p1, "qName"    # Lcom/google/gdata/model/QName;
    .param p2, "parent"    # Lcom/google/gdata/model/Element;
    .param p3, "child"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/wireformats/XmlHandler;"
        }
    .end annotation

    .prologue
    .line 134
    .local p4, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    new-instance v0, Lcom/google/gdata/wireformats/XmlHandler;

    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->vc:Lcom/google/gdata/model/ValidationContext;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlHandler;-><init>(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    return-object v0
.end method

.method protected findMetadata(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementMetadata;
    .locals 3
    .param p1, "qName"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlHandler;->metadata:Lcom/google/gdata/model/ElementMetadata;

    if-nez v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v1

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlHandler;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v2, p1}, Lcom/google/gdata/model/ElementMetadata;->findElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .line 147
    .local v0, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    if-eqz v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlHandler;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v2, v0}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v1

    .line 153
    .local v1, "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    goto :goto_0
.end method

.method public bridge synthetic getAbsoluteUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->getAbsoluteUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "x0"    # Lorg/xml/sax/Attributes;
    .param p2, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getChildHandler(Lcom/google/gdata/model/QName;Lorg/xml/sax/Attributes;Ljava/util/List;)Lcom/google/gdata/wireformats/XmlHandler;
    .locals 5
    .param p1, "qName"    # Lcom/google/gdata/model/QName;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            "Lorg/xml/sax/Attributes;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;)",
            "Lcom/google/gdata/wireformats/XmlHandler;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    .local p3, "namespaces":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/wireformats/XmlHandler;->findMetadata(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v1

    .line 114
    .local v1, "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-virtual {p0, p1, v1}, Lcom/google/gdata/wireformats/XmlHandler;->createChildElement(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 120
    .local v0, "childElement":Lcom/google/gdata/model/Element;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/gdata/model/ElementMetadata;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v3

    sget-object v4, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SET:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-ne v3, v4, :cond_0

    .line 121
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlHandler;->element:Lcom/google/gdata/model/Element;

    .line 126
    .local v2, "parent":Lcom/google/gdata/model/Element;
    :goto_0
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/gdata/wireformats/XmlHandler;->createHandler(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlHandler;

    move-result-object v3

    return-object v3

    .line 123
    .end local v2    # "parent":Lcom/google/gdata/model/Element;
    :cond_0
    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlHandler;->element:Lcom/google/gdata/model/Element;

    invoke-virtual {v3, v0}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 124
    const/4 v2, 0x0

    .restart local v2    # "parent":Lcom/google/gdata/model/Element;
    goto :goto_0
.end method

.method public bridge synthetic getChildHandler(Lcom/google/gdata/model/QName;Lorg/xml/sax/Attributes;Ljava/util/List;)Lcom/google/gdata/wireformats/XmlParser$ElementHandler;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/model/QName;
    .param p2, "x1"    # Lorg/xml/sax/Attributes;
    .param p3, "x2"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/XmlHandler;->getChildHandler(Lcom/google/gdata/model/QName;Lorg/xml/sax/Attributes;Ljava/util/List;)Lcom/google/gdata/wireformats/XmlHandler;

    move-result-object v0

    return-object v0
.end method

.method public getElement()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlHandler;->element:Lcom/google/gdata/model/Element;

    return-object v0
.end method

.method public bridge synthetic initializeXmlBlob(Lcom/google/gdata/util/XmlBlob;ZZ)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/util/XmlBlob;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->initializeXmlBlob(Lcom/google/gdata/util/XmlBlob;ZZ)V

    return-void
.end method

.method public processAttribute(Lcom/google/gdata/model/QName;Ljava/lang/String;)V
    .locals 5
    .param p1, "qn"    # Lcom/google/gdata/model/QName;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->element:Lcom/google/gdata/model/Element;

    invoke-virtual {v1, p1}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/QName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->duplicateAttributeValue:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate value for attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v1

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->metadata:Lcom/google/gdata/model/ElementMetadata;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 91
    .local v0, "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 92
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->element:Lcom/google/gdata/model/Element;

    invoke-virtual {v0}, Lcom/google/gdata/model/AttributeKey;->getDatatype()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/gdata/wireformats/ObjectConverter;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 96
    :goto_1
    return-void

    .line 89
    .end local v0    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v1, p1}, Lcom/google/gdata/model/ElementMetadata;->findAttribute(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    goto :goto_0

    .line 94
    .restart local v0    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->element:Lcom/google/gdata/model/Element;

    invoke-virtual {v1, p1, p2}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/QName;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    goto :goto_1
.end method

.method public processEndElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->value:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->value:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->element:Lcom/google/gdata/model/Element;

    invoke-virtual {v1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .line 181
    .local v0, "elementKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->element:Lcom/google/gdata/model/Element;

    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlHandler;->value:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gdata/wireformats/ObjectConverter;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 186
    .end local v0    # "elementKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->parentElement:Lcom/google/gdata/model/Element;

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlHandler;->parentElement:Lcom/google/gdata/model/Element;

    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlHandler;->element:Lcom/google/gdata/model/Element;

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 189
    :cond_1
    return-void
.end method
