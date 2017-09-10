.class public Lcom/google/gdata/data/geo/impl/GmlEnvelope;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "GmlEnvelope.java"

# interfaces
.implements Lcom/google/gdata/data/geo/Box;


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "Envelope"
    nsAlias = "gml"
    nsUri = "http://www.opengis.net/gml"
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "Envelope"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/geo/Box;)V
    .locals 2
    .param p1, "box"    # Lcom/google/gdata/data/geo/Box;

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;-><init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 74
    return-void

    .line 72
    :cond_0
    invoke-interface {p1}, Lcom/google/gdata/data/geo/Box;->getLowerLeft()Lcom/google/gdata/data/geo/Point;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/gdata/data/geo/Box;->getUpperRight()Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 0
    .param p1, "lower"    # Lcom/google/gdata/data/geo/Point;
    .param p2, "upper"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->setGeoLocation(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2
    .param p1, "lowerLat"    # Ljava/lang/Double;
    .param p2, "lowerLon"    # Ljava/lang/Double;
    .param p3, "upperLat"    # Ljava/lang/Double;
    .param p4, "upperLon"    # Ljava/lang/Double;

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlLowerCorner;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GmlLowerCorner;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    new-instance v1, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    invoke-direct {v1, p3, p4}, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;-><init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    .line 53
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeatable"    # Z

    .prologue
    .line 81
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 82
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 83
    sget-object v1, Lcom/google/gdata/data/geo/Namespaces;->GML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 84
    const-string v1, "Envelope"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 86
    return-object v0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v2, 0x0

    .line 103
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GmlLowerCorner;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 105
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-static {v2}, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 107
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 108
    return-void
.end method

.method public bridge synthetic getLowerLeft()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getLowerLeft()Lcom/google/gdata/data/geo/impl/GmlLowerCorner;

    move-result-object v0

    return-object v0
.end method

.method public getLowerLeft()Lcom/google/gdata/data/geo/impl/GmlLowerCorner;
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlLowerCorner;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlLowerCorner;

    return-object v0
.end method

.method public bridge synthetic getUpperRight()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getUpperRight()Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    move-result-object v0

    return-object v0
.end method

.method public getUpperRight()Lcom/google/gdata/data/geo/impl/GmlUpperCorner;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    return-object v0
.end method

.method public setGeoLocation(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 4
    .param p1, "lowerLeft"    # Lcom/google/gdata/data/geo/Point;
    .param p2, "upperRight"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 130
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 131
    instance-of v2, p1, Lcom/google/gdata/data/geo/impl/GmlLowerCorner;

    if-nez v2, :cond_0

    .line 132
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlLowerCorner;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlLowerCorner;-><init>(Lcom/google/gdata/data/geo/Point;)V

    .end local p1    # "lowerLeft":Lcom/google/gdata/data/geo/Point;
    .local v0, "lowerLeft":Lcom/google/gdata/data/geo/Point;
    move-object p1, v0

    .line 134
    .end local v0    # "lowerLeft":Lcom/google/gdata/data/geo/Point;
    .restart local p1    # "lowerLeft":Lcom/google/gdata/data/geo/Point;
    :cond_0
    instance-of v2, p2, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    if-nez v2, :cond_1

    .line 135
    new-instance v1, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    invoke-direct {v1, p2}, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;-><init>(Lcom/google/gdata/data/geo/Point;)V

    .end local p2    # "upperRight":Lcom/google/gdata/data/geo/Point;
    .local v1, "upperRight":Lcom/google/gdata/data/geo/Point;
    move-object p2, v1

    .line 137
    .end local v1    # "upperRight":Lcom/google/gdata/data/geo/Point;
    .restart local p2    # "upperRight":Lcom/google/gdata/data/geo/Point;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    .line 140
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'lower\' and \'upper\' must either both be null or non-null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_4
    const-class v2, Lcom/google/gdata/data/geo/impl/GmlLowerCorner;

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->removeExtension(Ljava/lang/Class;)V

    .line 144
    const-class v2, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setUpperRight(Lcom/google/gdata/data/geo/Point;)V
    .locals 2
    .param p1, "upperRight"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const-class v1, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->removeExtension(Ljava/lang/Class;)V

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_0
    instance-of v1, p1, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    if-nez v1, :cond_1

    .line 157
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlUpperCorner;-><init>(Lcom/google/gdata/data/geo/Point;)V

    .end local p1    # "upperRight":Lcom/google/gdata/data/geo/Point;
    .local v0, "upperRight":Lcom/google/gdata/data/geo/Point;
    move-object p1, v0

    .line 160
    .end local v0    # "upperRight":Lcom/google/gdata/data/geo/Point;
    .restart local p1    # "upperRight":Lcom/google/gdata/data/geo/Point;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method protected validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint;->validate()V

    .line 168
    invoke-virtual {p0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getLowerLeft()Lcom/google/gdata/data/geo/impl/GmlLowerCorner;

    move-result-object v0

    .line 169
    .local v0, "lower":Lcom/google/gdata/data/geo/Point;
    invoke-virtual {p0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->getUpperRight()Lcom/google/gdata/data/geo/impl/GmlUpperCorner;

    move-result-object v1

    .line 171
    .local v1, "upper":Lcom/google/gdata/data/geo/Point;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 173
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Both upper and lower must be set or neither may be set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_2
    return-void
.end method
