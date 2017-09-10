.class public Lcom/google/api/gbase/client/GmAttributes;
.super Ljava/lang/Object;
.source "GmAttributes.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "attributes"
    nsAlias = "gm"
    nsUri = "http://base.google.com/ns-metadata/1.0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gbase/client/GmAttributes$GmAttribute;
    }
.end annotation


# instance fields
.field private final attributeIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/api/gbase/client/GoogleBaseAttributeId;",
            ">;"
        }
    .end annotation
.end field

.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/GmAttributes$GmAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/GmAttributes;->attributes:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/GmAttributes;->attributeIds:Ljava/util/Set;

    .line 179
    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttributeId;Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;)V
    .locals 3
    .param p1, "attributeId"    # Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    .param p2, "importance"    # Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/gbase/client/GmAttributes;->attributeIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute id already registered in the attributes group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/GmAttributes;->attributes:Ljava/util/List;

    new-instance v1, Lcom/google/api/gbase/client/GmAttributes$GmAttribute;

    invoke-direct {v1, p1, p2}, Lcom/google/api/gbase/client/GmAttributes$GmAttribute;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributeId;Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/google/api/gbase/client/GmAttributes;->attributeIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .prologue
    .line 81
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-direct {v0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 82
    .local v0, "attributeId":Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/gbase/client/GmAttributes;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttributeId;Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;)V

    .line 83
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 113
    iget-object v4, p0, Lcom/google/api/gbase/client/GmAttributes;->attributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v4, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v5, "attributes"

    invoke-virtual {p1, v4, v5, v7, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 119
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 120
    iget-object v4, p0, Lcom/google/api/gbase/client/GmAttributes;->attributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute;

    .line 121
    .local v0, "attribute":Lcom/google/api/gbase/client/GmAttributes$GmAttribute;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GmAttributes$GmAttribute;->getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    move-result-object v3

    .line 124
    .local v3, "id":Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v5, "name"

    invoke-virtual {v3}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v3}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 126
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v5, "type"

    invoke-virtual {v3}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GmAttributes$GmAttribute;->getImportance()Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 129
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v5, "importance"

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GmAttributes$GmAttribute;->getImportance()Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;->getXmlValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_2
    sget-object v4, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v5, "attribute"

    invoke-virtual {p1, v4, v5, v1, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 134
    .end local v0    # "attribute":Lcom/google/api/gbase/client/GmAttributes$GmAttribute;
    .end local v1    # "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    .end local v3    # "id":Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    :cond_3
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 136
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    goto :goto_0
.end method

.method public getAttributeIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/GoogleBaseAttributeId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/gbase/client/GmAttributes;->attributeIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/gbase/client/GmAttributes$GmAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/api/gbase/client/GmAttributes;->attributes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
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
    .line 144
    iget-object v0, p0, Lcom/google/api/gbase/client/GmAttributes;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    new-instance v0, Lcom/google/api/gbase/client/GmAttributes$1;

    invoke-direct {v0, p0}, Lcom/google/api/gbase/client/GmAttributes$1;-><init>(Lcom/google/api/gbase/client/GmAttributes;)V

    return-object v0
.end method
