.class public Lcom/google/gdata/data/geo/impl/BoxDataImpl;
.super Ljava/lang/Object;
.source "BoxDataImpl.java"

# interfaces
.implements Lcom/google/gdata/data/geo/BoxData;


# instance fields
.field private final extPoint:Lcom/google/gdata/data/ExtensionPoint;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 0
    .param p1, "extensionPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    .line 43
    return-void
.end method

.method public static clearBox(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 3
    .param p0, "ext"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->getBoxExtension(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Box;

    move-result-object v0

    .line 148
    .local v0, "b":Lcom/google/gdata/data/geo/Box;
    if-eqz v0, :cond_0

    .line 149
    instance-of v2, v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 150
    check-cast v1, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    .line 151
    .local v1, "where":Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    invoke-virtual {v1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->hasPoint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->clearBox()V

    .line 160
    .end local v1    # "where":Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionPoint;->removeExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public static getBox(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Box;
    .locals 3
    .param p0, "ext"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->getBoxExtension(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Box;

    move-result-object v0

    .line 107
    .local v0, "b":Lcom/google/gdata/data/geo/Box;
    if-eqz v0, :cond_1

    .line 108
    instance-of v2, v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 109
    check-cast v1, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    .line 110
    .local v1, "geoWhere":Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    invoke-virtual {v1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->hasBox()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    .end local v1    # "geoWhere":Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getBoxExtension(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Box;
    .locals 3
    .param p0, "ext"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 131
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

    .line 132
    .local v0, "e":Lcom/google/gdata/data/Extension;
    instance-of v2, v0, Lcom/google/gdata/data/geo/Box;

    if-eqz v2, :cond_0

    .line 133
    check-cast v0, Lcom/google/gdata/data/geo/Box;

    .line 136
    .end local v0    # "e":Lcom/google/gdata/data/Extension;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setBox(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/geo/Box;)V
    .locals 3
    .param p0, "ext"    # Lcom/google/gdata/data/ExtensionPoint;
    .param p1, "box"    # Lcom/google/gdata/data/geo/Box;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->getBoxExtension(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Box;

    move-result-object v0

    .line 84
    .local v0, "existing":Lcom/google/gdata/data/geo/Box;
    if-eqz v0, :cond_3

    .line 85
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/gdata/data/geo/Box;->getLowerLeft()Lcom/google/gdata/data/geo/Point;

    move-result-object v1

    .line 86
    .local v1, "lowerLeft":Lcom/google/gdata/data/geo/Point;
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/gdata/data/geo/Box;->getUpperRight()Lcom/google/gdata/data/geo/Point;

    move-result-object v2

    .line 88
    .local v2, "upperRight":Lcom/google/gdata/data/geo/Point;
    :cond_0
    invoke-interface {v0, v1, v2}, Lcom/google/gdata/data/geo/Box;->setGeoLocation(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 94
    .end local v1    # "lowerLeft":Lcom/google/gdata/data/geo/Point;
    .end local v2    # "upperRight":Lcom/google/gdata/data/geo/Point;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v1, v2

    .line 85
    goto :goto_0

    .line 89
    :cond_3
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_1
.end method


# virtual methods
.method public clearGeoBoundingBox()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {v0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->clearBox(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 72
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v1, p0, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 170
    .local v0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GeoRssBox;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 171
    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 172
    new-instance v1, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-direct {v1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 177
    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 178
    new-instance v1, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-direct {v1}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 179
    return-void
.end method

.method public getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {v0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->getBox(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Box;

    move-result-object v0

    return-object v0
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V
    .locals 1
    .param p1, "box"    # Lcom/google/gdata/data/geo/Box;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {v0, p1}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->setBox(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/geo/Box;)V

    .line 61
    return-void
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "lowerLeft"    # Lcom/google/gdata/data/geo/Point;
    .param p2, "upperRight"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V

    .line 52
    return-void
.end method
