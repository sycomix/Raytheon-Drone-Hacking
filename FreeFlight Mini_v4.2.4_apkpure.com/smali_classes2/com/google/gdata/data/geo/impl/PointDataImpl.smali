.class public Lcom/google/gdata/data/geo/impl/PointDataImpl;
.super Ljava/lang/Object;
.source "PointDataImpl.java"

# interfaces
.implements Lcom/google/gdata/data/geo/PointData;


# instance fields
.field private extPoint:Lcom/google/gdata/data/ExtensionPoint;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 0
    .param p1, "extensionPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/gdata/data/geo/impl/PointDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    .line 43
    return-void
.end method

.method public static clearPoint(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 3
    .param p0, "ext"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 178
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->getPointExtension(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    .line 179
    .local v0, "p":Lcom/google/gdata/data/geo/Point;
    if-eqz v0, :cond_0

    .line 180
    instance-of v2, v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 181
    check-cast v1, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    .line 182
    .local v1, "where":Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    invoke-virtual {v1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->hasBox()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-virtual {v1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->clearPoint()V

    .line 191
    .end local v1    # "where":Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionPoint;->removeExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method private declare(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "desc"    # Lcom/google/gdata/data/ExtensionDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;",
            "Lcom/google/gdata/data/ExtensionDescription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    invoke-virtual {p1, p2, p3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 106
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {p1, v0, p3}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static getPoint(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Point;
    .locals 3
    .param p0, "ext"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 156
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->getPointExtension(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Point;

    move-result-object v1

    .line 157
    .local v1, "p":Lcom/google/gdata/data/geo/Point;
    if-eqz v1, :cond_1

    .line 158
    instance-of v2, v1, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 159
    check-cast v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    .line 160
    .local v0, "geoWhere":Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    invoke-virtual {v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->hasPoint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    .end local v0    # "geoWhere":Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 164
    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getPointExtension(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Point;
    .locals 3
    .param p0, "ext"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/gdata/data/ExtensionPoint;->getExtensions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Extension;

    .line 142
    .local v0, "e":Lcom/google/gdata/data/Extension;
    instance-of v2, v0, Lcom/google/gdata/data/geo/Point;

    if-eqz v2, :cond_0

    .line 143
    check-cast v0, Lcom/google/gdata/data/geo/Point;

    .line 146
    .end local v0    # "e":Lcom/google/gdata/data/Extension;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPoint(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/geo/Point;)V
    .locals 3
    .param p0, "ext"    # Lcom/google/gdata/data/ExtensionPoint;
    .param p1, "point"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->getPointExtension(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    .line 121
    .local v0, "existing":Lcom/google/gdata/data/geo/Point;
    if-eqz v0, :cond_3

    .line 122
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/gdata/data/geo/Point;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    .line 123
    .local v1, "lat":Ljava/lang/Double;
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/gdata/data/geo/Point;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    .line 124
    .local v2, "lon":Ljava/lang/Double;
    :cond_0
    invoke-interface {v0, v1, v2}, Lcom/google/gdata/data/geo/Point;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 128
    .end local v1    # "lat":Ljava/lang/Double;
    .end local v2    # "lon":Ljava/lang/Double;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v1, v2

    .line 122
    goto :goto_0

    .line 125
    :cond_3
    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_1
.end method


# virtual methods
.method public clearPoint()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {v0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->clearPoint(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 78
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v1, p0, Lcom/google/gdata/data/geo/impl/PointDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 90
    .local v0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/W3CPoint;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 91
    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GeoRssPoint;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 92
    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 94
    new-instance v1, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-direct {v1}, Lcom/google/gdata/data/geo/impl/W3CPoint;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gdata/data/geo/impl/W3CPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 95
    new-instance v1, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-direct {v1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 96
    return-void
.end method

.method public getGeoLocation()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {v0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->getPoint(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    return-object v0
.end method

.method public setGeoLocation(Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "point"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {v0, p1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->setPoint(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/geo/Point;)V

    .line 66
    return-void
.end method

.method public setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lon"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->setGeoLocation(Lcom/google/gdata/data/geo/Point;)V

    .line 57
    return-void
.end method
