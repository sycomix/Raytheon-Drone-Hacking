.class public Lcom/google/gdata/data/geo/impl/GmlPoint;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "GmlPoint.java"

# interfaces
.implements Lcom/google/gdata/data/geo/Point;


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "Point"
    nsAlias = "gml"
    nsUri = "http://www.opengis.net/gml"
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "Point"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/geo/Point;)V
    .locals 2
    .param p1, "point"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 62
    if-eqz p1, :cond_1

    .line 63
    instance-of v1, p1, Lcom/google/gdata/data/geo/impl/GmlPos;

    if-nez v1, :cond_0

    .line 64
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlPos;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlPos;-><init>(Lcom/google/gdata/data/geo/Point;)V

    .end local p1    # "point":Lcom/google/gdata/data/geo/Point;
    .local v0, "point":Lcom/google/gdata/data/geo/Point;
    move-object p1, v0

    .line 66
    .end local v0    # "point":Lcom/google/gdata/data/geo/Point;
    .restart local p1    # "point":Lcom/google/gdata/data/geo/Point;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/geo/impl/GmlPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 68
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lon"    # Ljava/lang/Double;

    .prologue
    .line 52
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlPos;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlPos;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lcom/google/gdata/data/geo/impl/GmlPoint;-><init>(Lcom/google/gdata/data/geo/Point;)V

    .line 53
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/geo/impl/GmlPoint;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeatable"    # Z

    .prologue
    .line 75
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 76
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 77
    sget-object v1, Lcom/google/gdata/data/geo/Namespaces;->GML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 78
    const-string v1, "Point"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 80
    return-object v0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 98
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/gdata/data/geo/impl/GmlPos;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 100
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 101
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
    const/4 v4, 0x0

    .line 148
    sget-object v2, Lcom/google/gdata/data/geo/Namespaces;->GML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "Point"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/geo/impl/GmlPoint;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlPoint;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 153
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->GML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "Point"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 107
    const-class v1, Lcom/google/gdata/data/geo/impl/GmlPos;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/geo/impl/GmlPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlPos;

    .line 108
    .local v0, "coord":Lcom/google/gdata/data/geo/impl/GmlPos;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/GmlPos;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 115
    const-class v1, Lcom/google/gdata/data/geo/impl/GmlPos;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/geo/impl/GmlPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlPos;

    .line 116
    .local v0, "coord":Lcom/google/gdata/data/geo/impl/GmlPos;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/GmlPos;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lon"    # Ljava/lang/Double;

    .prologue
    .line 127
    const-class v1, Lcom/google/gdata/data/geo/impl/GmlPos;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/geo/impl/GmlPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlPos;

    .line 128
    .local v0, "point":Lcom/google/gdata/data/geo/impl/GmlPos;
    if-eqz v0, :cond_2

    .line 129
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 130
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GmlPoint;->removeExtension(Lcom/google/gdata/data/Extension;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlPos;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_0

    .line 134
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_0

    .line 135
    :cond_3
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlPos;

    .end local v0    # "point":Lcom/google/gdata/data/geo/impl/GmlPos;
    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GmlPos;-><init>()V

    .line 136
    .restart local v0    # "point":Lcom/google/gdata/data/geo/impl/GmlPos;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GmlPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 137
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlPos;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_0
.end method
