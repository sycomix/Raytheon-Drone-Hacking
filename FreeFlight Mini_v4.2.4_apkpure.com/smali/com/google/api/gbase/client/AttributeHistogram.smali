.class public Lcom/google/api/gbase/client/AttributeHistogram;
.super Ljava/lang/Object;
.source "AttributeHistogram.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "attribute"
    nsAlias = "gm"
    nsUri = "http://base.google.com/ns-metadata/1.0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gbase/client/AttributeHistogram$AddValueHandler;,
        Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;
    }
.end annotation


# instance fields
.field private attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

.field private totalValueCount:I

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram;->values:Ljava/util/List;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/google/api/gbase/client/GoogleBaseAttributeId;)V
    .locals 1
    .param p1, "attributeId"    # Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram;->values:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/google/api/gbase/client/AttributeHistogram;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeType"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram;->values:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-direct {v0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    iput-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    .line 67
    return-void
.end method


# virtual methods
.method public addValue(ILjava/lang/String;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "stringRepresentation"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram;->values:Ljava/util/List;

    new-instance v1, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;-><init>(ILjava/lang/String;Lcom/google/api/gbase/client/AttributeHistogram$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v3, p0, Lcom/google/api/gbase/client/AttributeHistogram;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    if-nez v3, :cond_0

    .line 227
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v3, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v4, "name"

    iget-object v5, p0, Lcom/google/api/gbase/client/AttributeHistogram;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-virtual {v5}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v3, p0, Lcom/google/api/gbase/client/AttributeHistogram;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-virtual {v3}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 209
    new-instance v3, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v4, "type"

    iget-object v5, p0, Lcom/google/api/gbase/client/AttributeHistogram;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-virtual {v5}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    iget v3, p0, Lcom/google/api/gbase/client/AttributeHistogram;->totalValueCount:I

    if-lez v3, :cond_2

    .line 213
    new-instance v3, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v4, "count"

    iget v5, p0, Lcom/google/api/gbase/client/AttributeHistogram;->totalValueCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2
    sget-object v3, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v4, "attribute"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v0, v5}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 218
    iget-object v3, p0, Lcom/google/api/gbase/client/AttributeHistogram;->values:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 219
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 220
    iget-object v3, p0, Lcom/google/api/gbase/client/AttributeHistogram;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;

    .line 221
    .local v2, "value":Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;
    invoke-virtual {v2, p1}, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    goto :goto_1

    .line 223
    .end local v2    # "value":Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;
    :cond_3
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 226
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    goto :goto_0
.end method

.method public getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    return-object v0
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 6
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    new-instance v0, Lcom/google/gdata/data/AttributeHelper;

    invoke-direct {v0, p4}, Lcom/google/gdata/data/AttributeHelper;-><init>(Lorg/xml/sax/Attributes;)V

    .line 245
    .local v0, "helper":Lcom/google/gdata/data/AttributeHelper;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v5}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->getInstance(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v1

    .line 247
    .local v1, "type":Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    new-instance v2, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    const-string v3, "name"

    invoke-virtual {v0, v3, v5}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    invoke-virtual {p0, v2}, Lcom/google/api/gbase/client/AttributeHistogram;->setAttributeId(Lcom/google/api/gbase/client/GoogleBaseAttributeId;)V

    .line 250
    const-string v2, "count"

    invoke-virtual {v0, v2, v4, v4}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;ZI)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/api/gbase/client/AttributeHistogram;->setTotalValueCount(I)V

    .line 252
    invoke-virtual {v0}, Lcom/google/gdata/data/AttributeHelper;->assertAllConsumed()V

    .line 254
    new-instance v2, Lcom/google/api/gbase/client/AttributeHistogram$1;

    invoke-direct {v2, p0}, Lcom/google/api/gbase/client/AttributeHistogram$1;-><init>(Lcom/google/api/gbase/client/AttributeHistogram;)V

    return-object v2
.end method

.method public getTotalValueCount()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/api/gbase/client/AttributeHistogram;->totalValueCount:I

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram;->values:Ljava/util/List;

    return-object v0
.end method

.method public getValues(I)Ljava/util/List;
    .locals 4
    .param p1, "minimumCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    if-gtz p1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/google/api/gbase/client/AttributeHistogram;->values:Ljava/util/List;

    .line 154
    :cond_0
    return-object v1

    .line 148
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/api/gbase/client/AttributeHistogram;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .local v1, "retval":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;>;"
    iget-object v3, p0, Lcom/google/api/gbase/client/AttributeHistogram;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;

    .line 150
    .local v2, "value":Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;
    invoke-virtual {v2}, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;->getCount()I

    move-result v3

    if-lt v3, p1, :cond_2

    .line 151
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAttributeId(Lcom/google/api/gbase/client/GoogleBaseAttributeId;)V
    .locals 0
    .param p1, "attributeId"    # Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/api/gbase/client/AttributeHistogram;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    .line 188
    return-void
.end method

.method public setAttributeId(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .prologue
    .line 180
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-direct {v0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/AttributeHistogram;->setAttributeId(Lcom/google/api/gbase/client/GoogleBaseAttributeId;)V

    .line 181
    return-void
.end method

.method public setTotalValueCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/google/api/gbase/client/AttributeHistogram;->totalValueCount:I

    .line 173
    return-void
.end method
