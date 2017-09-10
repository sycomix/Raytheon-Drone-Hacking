.class public Lcom/google/gdata/data/geo/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# static fields
.field public static final GEO_RSS:Ljava/lang/String; = "http://www.georss.org/georss"

.field public static final GEO_RSS_ALIAS:Ljava/lang/String; = "georss"

.field public static final GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final GML:Ljava/lang/String; = "http://www.opengis.net/gml"

.field public static final GML_ALIAS:Ljava/lang/String; = "gml"

.field public static final GML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final W3C_GEO:Ljava/lang/String; = "http://www.w3.org/2003/01/geo/wgs84_pos#"

.field public static final W3C_GEO_ALIAS:Ljava/lang/String; = "geo"

.field public static final W3C_GEO_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "geo"

    const-string v2, "http://www.w3.org/2003/01/geo/wgs84_pos#"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/geo/Namespaces;->W3C_GEO_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 49
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "georss"

    const-string v2, "http://www.georss.org/georss"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 60
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gml"

    const-string v2, "http://www.opengis.net/gml"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/geo/Namespaces;->GML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
