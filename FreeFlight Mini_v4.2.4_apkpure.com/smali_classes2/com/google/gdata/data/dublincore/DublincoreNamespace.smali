.class public Lcom/google/gdata/data/dublincore/DublincoreNamespace;
.super Ljava/lang/Object;
.source "DublincoreNamespace.java"


# static fields
.field public static final DC:Ljava/lang/String; = "http://purl.org/dc/terms"

.field public static final DC_ALIAS:Ljava/lang/String; = "dc"

.field public static final DC_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final DC_PREFIX:Ljava/lang/String; = "http://purl.org/dc/terms#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "dc"

    const-string v2, "http://purl.org/dc/terms"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/dublincore/DublincoreNamespace;->DC_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
