.class public Lcom/google/gdata/data/geo/impl/W3CPoint;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "W3CPoint.java"

# interfaces
.implements Lcom/google/gdata/data/geo/Point;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/geo/impl/W3CPoint$Handler;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "Point"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/geo/Point;)V
    .locals 2
    .param p1, "copyFrom"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/google/gdata/data/geo/impl/W3CPoint;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 72
    return-void

    .line 70
    :cond_0
    invoke-interface {p1}, Lcom/google/gdata/data/geo/Point;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/gdata/data/geo/Point;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lon"    # Ljava/lang/Double;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/geo/impl/W3CPoint;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 62
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/geo/impl/W3CPoint;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeatable"    # Z

    .prologue
    .line 79
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 80
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 81
    sget-object v1, Lcom/google/gdata/data/geo/Namespaces;->W3C_GEO_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 82
    const-string v1, "Point"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 84
    return-object v0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 102
    const-class v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    const-class v1, Lcom/google/gdata/data/geo/GeoLat;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 104
    const-class v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    const-class v1, Lcom/google/gdata/data/geo/GeoLong;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 106
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 107
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

    .line 150
    sget-object v2, Lcom/google/gdata/data/geo/Namespaces;->W3C_GEO_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "Point"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/geo/impl/W3CPoint;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/geo/impl/W3CPoint;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 155
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->W3C_GEO_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "Point"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 165
    new-instance v0, Lcom/google/gdata/data/geo/impl/W3CPoint$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/geo/impl/W3CPoint$Handler;-><init>(Lcom/google/gdata/data/geo/impl/W3CPoint;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 113
    const-class v1, Lcom/google/gdata/data/geo/GeoLat;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/geo/impl/W3CPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/GeoLat;

    .line 114
    .local v0, "lat":Lcom/google/gdata/data/geo/GeoLat;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/GeoLat;->getLatitude()Ljava/lang/Double;

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
    .line 121
    const-class v1, Lcom/google/gdata/data/geo/GeoLong;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/geo/impl/W3CPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/GeoLong;

    .line 122
    .local v0, "lon":Lcom/google/gdata/data/geo/GeoLong;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/geo/GeoLong;->getLongitude()Ljava/lang/Double;

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
    .line 131
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 132
    new-instance v0, Lcom/google/gdata/data/geo/GeoLat;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/geo/GeoLat;-><init>(Ljava/lang/Double;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/W3CPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 133
    new-instance v0, Lcom/google/gdata/data/geo/GeoLong;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/geo/GeoLong;-><init>(Ljava/lang/Double;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/W3CPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'lat\' and \'lon\' must either both be null or non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    const-class v0, Lcom/google/gdata/data/geo/GeoLat;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/W3CPoint;->removeExtension(Ljava/lang/Class;)V

    .line 139
    const-class v0, Lcom/google/gdata/data/geo/GeoLong;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/W3CPoint;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method
