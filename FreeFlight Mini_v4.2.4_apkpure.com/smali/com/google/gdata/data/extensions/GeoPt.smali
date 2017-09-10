.class public Lcom/google/gdata/data/extensions/GeoPt;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "GeoPt.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/GeoPt$Handler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected elev:Ljava/lang/Float;

.field protected label:Ljava/lang/String;

.field protected lat:Ljava/lang/Float;

.field protected lon:Ljava/lang/Float;

.field protected time:Lcom/google/gdata/data/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 131
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/extensions/GeoPt;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeatable"    # Z

    .prologue
    .line 74
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 75
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/GeoPt;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 76
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 77
    const-string v1, "geoPt"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 79
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
    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "label"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/GeoPt;->label:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt;->lat:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "lat"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/GeoPt;->lat:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt;->lon:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 102
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "lon"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/GeoPt;->lon:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt;->elev:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 106
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "elev"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/GeoPt;->elev:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt;->time:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_4

    .line 110
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "time"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/GeoPt;->time:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_4
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "geoPt"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/GeoPt;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/GeoPt;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 118
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "geoPt"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public getElev()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt;->elev:Ljava/lang/Float;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 127
    new-instance v0, Lcom/google/gdata/data/extensions/GeoPt$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/GeoPt$Handler;-><init>(Lcom/google/gdata/data/extensions/GeoPt;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt;->lat:Ljava/lang/Float;

    return-object v0
.end method

.method public getLon()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt;->lon:Ljava/lang/Float;

    return-object v0
.end method

.method public getTime()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/gdata/data/extensions/GeoPt;->time:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public setElev(Ljava/lang/Float;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Float;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/gdata/data/extensions/GeoPt;->elev:Ljava/lang/Float;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/gdata/data/extensions/GeoPt;->label:Ljava/lang/String;

    return-void
.end method

.method public setLat(Ljava/lang/Float;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Float;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/gdata/data/extensions/GeoPt;->lat:Ljava/lang/Float;

    return-void
.end method

.method public setLon(Ljava/lang/Float;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Float;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/gdata/data/extensions/GeoPt;->lon:Ljava/lang/Float;

    return-void
.end method

.method public setTime(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/gdata/data/extensions/GeoPt;->time:Lcom/google/gdata/data/DateTime;

    return-void
.end method
