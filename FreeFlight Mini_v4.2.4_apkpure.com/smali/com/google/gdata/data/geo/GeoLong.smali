.class public Lcom/google/gdata/data/geo/GeoLong;
.super Lcom/google/gdata/data/ValueConstruct;
.source "GeoLong.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "long"
    nsAlias = "geo"
    nsUri = "http://www.w3.org/2003/01/geo/wgs84_pos#"
.end annotation


# static fields
.field public static final COORDINATE_PRECISION:I = 0x6

.field public static final MAX_LONG:D = 180.0

.field public static final MIN_LONG:D = -180.0

.field private static final NUM_FORMAT:Ljava/text/NumberFormat;


# instance fields
.field private lon:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 58
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/geo/GeoLong;->NUM_FORMAT:Ljava/text/NumberFormat;

    .line 61
    sget-object v0, Lcom/google/gdata/data/geo/GeoLong;->NUM_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 62
    sget-object v0, Lcom/google/gdata/data/geo/GeoLong;->NUM_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/geo/GeoLong;-><init>(Ljava/lang/Double;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .locals 4
    .param p1, "lon"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->W3C_GEO_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "long"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object v2, p0, Lcom/google/gdata/data/geo/GeoLong;->lon:Ljava/lang/Double;

    .line 85
    invoke-virtual {p0, v3}, Lcom/google/gdata/data/geo/GeoLong;->setRequired(Z)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/geo/GeoLong;->setLongitude(Ljava/lang/Double;)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/google/gdata/data/geo/GeoLong;->setImmutable(Z)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/gdata/data/geo/GeoLong;->lon:Ljava/lang/Double;

    return-object v0
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 4
    .param p1, "longitude"    # Ljava/lang/Double;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/gdata/data/geo/GeoLong;->lon:Ljava/lang/Double;

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "value":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 113
    const-wide v2, -0x3f99800000000000L    # -180.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    if-ltz v1, :cond_0

    const-wide v2, 0x4066800000000000L    # 180.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    if-lez v1, :cond_1

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Longitude must be between -180 and 180 degrees."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_1
    sget-object v1, Lcom/google/gdata/data/geo/GeoLong;->NUM_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_2
    invoke-super {p0, v0}, Lcom/google/gdata/data/ValueConstruct;->setValue(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "d":Ljava/lang/Double;
    if-eqz p1, :cond_0

    .line 139
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/geo/GeoLong;->setLongitude(Ljava/lang/Double;)V

    .line 146
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'value\' must be a double."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
