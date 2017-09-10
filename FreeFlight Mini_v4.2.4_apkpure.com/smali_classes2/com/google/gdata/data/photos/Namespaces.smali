.class public Lcom/google/gdata/data/photos/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# static fields
.field public static final EXIF:Ljava/lang/String; = "http://schemas.google.com/photos/exif/2007"

.field public static final EXIF_ALIAS:Ljava/lang/String; = "exif"

.field public static final EXIF_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final EXIF_PREFIX:Ljava/lang/String; = "http://schemas.google.com/photos/exif/2007#"

.field public static final KML:Ljava/lang/String; = "http://earth.google.com/kml/2.1"

.field public static final KML_ALIAS:Ljava/lang/String; = "kml"

.field public static final KML_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final KML_PREFIX:Ljava/lang/String; = "http://earth.google.com/kml/2.1#"

.field public static final PHEED:Ljava/lang/String; = "http://www.pheed.com/pheed/"

.field public static final PHEED_ALIAS:Ljava/lang/String; = "pheed"

.field public static final PHEED_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final PHEED_PREFIX:Ljava/lang/String; = "http://www.pheed.com/pheed/#"

.field public static final PHOTOS:Ljava/lang/String; = "http://schemas.google.com/photos/2007"

.field public static final PHOTOS_ALIAS:Ljava/lang/String; = "gphoto"

.field public static final PHOTOS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final PHOTOS_PREFIX:Ljava/lang/String; = "http://schemas.google.com/photos/2007#"

.field public static final REPORT_REL:Ljava/lang/String; = "http://schemas.google.com/photos/2007#report"

.field public static final SLIDESHOW_REL:Ljava/lang/String; = "http://schemas.google.com/photos/2007#slideshow"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "exif"

    const-string v2, "http://schemas.google.com/photos/exif/2007"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/Namespaces;->EXIF_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 54
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gphoto"

    const-string v2, "http://schemas.google.com/photos/2007"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/Namespaces;->PHOTOS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 67
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "pheed"

    const-string v2, "http://www.pheed.com/pheed/"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/Namespaces;->PHEED_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 81
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "kml"

    const-string v2, "http://earth.google.com/kml/2.1"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/Namespaces;->KML_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
