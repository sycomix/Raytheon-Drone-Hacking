.class public Lcom/google/gdata/data/extensions/Rating;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Rating.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/Rating$Handler;,
        Lcom/google/gdata/data/extensions/Rating$Rel;
    }
.end annotation


# instance fields
.field protected average:Ljava/lang/Float;

.field protected max:Ljava/lang/Integer;

.field protected min:Ljava/lang/Integer;

.field protected numRaters:Ljava/lang/Integer;

.field protected rating:Ljava/lang/Integer;

.field protected rel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/extensions/Rating;-><init>(Ljava/lang/Integer;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "rating"    # Ljava/lang/Integer;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Rating;->rating:Ljava/lang/Integer;

    .line 69
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Rating;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeatable"    # Z

    .prologue
    .line 145
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 146
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 147
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 148
    const-string v1, "rating"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 150
    return-object v0
.end method


# virtual methods
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
    .line 162
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v4, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->rel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "rel"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Rating;->rel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->rating:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "value"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Rating;->rating:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->min:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 173
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "min"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Rating;->min:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->max:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 177
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "max"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Rating;->max:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->numRaters:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 181
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "numRaters"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Rating;->numRaters:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->average:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 185
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "average"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%2.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/gdata/data/extensions/Rating;->average:Ljava/lang/Float;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_5
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "rating"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/Rating;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/Rating;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 194
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "rating"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public getAverage()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->average:Ljava/lang/Float;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 202
    new-instance v0, Lcom/google/gdata/data/extensions/Rating$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/Rating$Handler;-><init>(Lcom/google/gdata/data/extensions/Rating;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getMax()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->max:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMin()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->min:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumRaters()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->numRaters:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Rating;->rating:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAverage(Ljava/lang/Float;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Float;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Rating;->average:Ljava/lang/Float;

    .line 138
    return-void
.end method

.method public setMax(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Integer;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Rating;->max:Ljava/lang/Integer;

    .line 116
    return-void
.end method

.method public setMin(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Integer;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Rating;->min:Ljava/lang/Integer;

    .line 104
    return-void
.end method

.method public setNumRaters(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Integer;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Rating;->numRaters:Ljava/lang/Integer;

    .line 127
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Rating;->rel:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setValue(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Integer;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Rating;->rating:Ljava/lang/Integer;

    .line 92
    return-void
.end method
