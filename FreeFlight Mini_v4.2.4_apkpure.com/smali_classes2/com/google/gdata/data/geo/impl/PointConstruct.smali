.class public abstract Lcom/google/gdata/data/geo/impl/PointConstruct;
.super Lcom/google/gdata/data/ValueConstruct;
.source "PointConstruct.java"

# interfaces
.implements Lcom/google/gdata/data/geo/Point;


# instance fields
.field private lat:Ljava/lang/Double;

.field private lon:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/PointConstruct;->setRequired(Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/data/geo/Point;)V
    .locals 2
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "copyFrom"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    const/4 v0, 0x0

    .line 63
    if-nez p3, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/gdata/data/geo/impl/PointConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 65
    return-void

    .line 63
    :cond_0
    invoke-interface {p3}, Lcom/google/gdata/data/geo/Point;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/gdata/data/geo/Point;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lat"    # Ljava/lang/Double;
    .param p4, "lon"    # Ljava/lang/Double;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/impl/PointConstruct;->setRequired(Z)V

    .line 56
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/google/gdata/data/geo/impl/PointConstruct;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 57
    return-void
.end method

.method private createInvalidValueException()Ljava/lang/IllegalArgumentException;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format of a coordinate is \"latitude longitude\", where latitude and longitude are doubles, separated by a space."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lon:Ljava/lang/Double;

    return-object v0
.end method

.method public setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lon"    # Ljava/lang/Double;

    .prologue
    .line 87
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 88
    const-wide v0, -0x3fa9800000000000L    # -90.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    if-lez v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Latitude must be between -90 and 90 degrees."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    const-wide v0, -0x3f99800000000000L    # -180.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    if-ltz v0, :cond_2

    const-wide v0, 0x4066800000000000L    # 180.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    if-lez v0, :cond_5

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Longitude must be between -180 and 180 degrees."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 100
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "latitude and longitude must either both be null or non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_5
    iput-object p1, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lat:Ljava/lang/Double;

    .line 105
    iput-object p2, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lon:Ljava/lang/Double;

    .line 107
    invoke-virtual {p0}, Lcom/google/gdata/data/geo/impl/PointConstruct;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/gdata/data/ValueConstruct;->setValue(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 7
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "lat":Ljava/lang/Double;
    const/4 v3, 0x0

    .line 131
    .local v3, "lon":Ljava/lang/Double;
    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 133
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 134
    .local v5, "space":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/google/gdata/data/geo/impl/PointConstruct;->createInvalidValueException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 138
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "latString":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "lonString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 142
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 149
    .end local v2    # "latString":Ljava/lang/String;
    .end local v4    # "lonString":Ljava/lang/String;
    .end local v5    # "space":I
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/google/gdata/data/geo/impl/PointConstruct;->setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 150
    return-void

    .line 143
    .restart local v2    # "latString":Ljava/lang/String;
    .restart local v4    # "lonString":Ljava/lang/String;
    .restart local v5    # "space":I
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/google/gdata/data/geo/impl/PointConstruct;->createInvalidValueException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lat:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lon:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lat:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lon:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0}, Lcom/google/gdata/data/ValueConstruct;->validate()V

    .line 156
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lat:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lon:Ljava/lang/Double;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lat:Ljava/lang/Double;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gdata/data/geo/impl/PointConstruct;->lon:Ljava/lang/Double;

    if-nez v0, :cond_2

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "latitude and longitude must either both be null or non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    return-void
.end method
