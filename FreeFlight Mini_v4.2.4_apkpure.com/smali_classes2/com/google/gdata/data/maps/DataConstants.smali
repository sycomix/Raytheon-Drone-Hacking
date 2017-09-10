.class public interface abstract Lcom/google/gdata/data/maps/DataConstants;
.super Ljava/lang/Object;
.source "DataConstants.java"


# static fields
.field public static final KML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final KML_PREFIX:Ljava/lang/String; = "kml"

.field public static final KML_URL:Ljava/lang/String; = "http://www.opengis.net/kml/2.2"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "kml"

    const-string v2, "http://www.opengis.net/kml/2.2"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/maps/DataConstants;->KML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method
