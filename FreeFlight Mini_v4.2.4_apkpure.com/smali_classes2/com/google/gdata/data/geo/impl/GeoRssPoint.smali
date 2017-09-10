.class public final Lcom/google/gdata/data/geo/impl/GeoRssPoint;
.super Lcom/google/gdata/data/geo/impl/PointConstruct;
.source "GeoRssPoint.java"


# static fields
.field static final NAME:Ljava/lang/String; = "point"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "point"

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/data/geo/impl/PointConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/geo/Point;)V
    .locals 2
    .param p1, "copyFrom"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 55
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "point"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/gdata/data/geo/impl/PointConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/data/geo/Point;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lon"    # Ljava/lang/Double;

    .prologue
    .line 47
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "point"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/gdata/data/geo/impl/PointConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 48
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/geo/impl/GeoRssPoint;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeatable"    # Z

    .prologue
    .line 63
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 64
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 65
    sget-object v1, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 66
    const-string v1, "point"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 68
    return-object v0
.end method
