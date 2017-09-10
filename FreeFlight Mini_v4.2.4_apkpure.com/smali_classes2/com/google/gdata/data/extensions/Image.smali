.class public Lcom/google/gdata/data/extensions/Image;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Image.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/Image$Handler;,
        Lcom/google/gdata/data/extensions/Image$Rel;
    }
.end annotation


# instance fields
.field protected height:Ljava/lang/Integer;

.field protected rel:Ljava/lang/String;

.field protected src:Ljava/lang/String;

.field protected width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 158
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 112
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/Image;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 113
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 114
    const-string v1, "image"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 116
    return-object v0
.end method


# virtual methods
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
    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v4, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image;->rel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "rel"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Image;->rel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image;->width:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "width"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Image;->width:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image;->height:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "height"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Image;->height:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image;->src:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 138
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "src"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Image;->src:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "image"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/Image;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/Image;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 146
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "image"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 154
    new-instance v0, Lcom/google/gdata/data/extensions/Image$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/Image$Handler;-><init>(Lcom/google/gdata/data/extensions/Image;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image;->height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Image;->height:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Image;->rel:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Image;->src:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Image;->width:Ljava/lang/Integer;

    .line 79
    return-void
.end method
