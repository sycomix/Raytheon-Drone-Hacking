.class public Lcom/google/gdata/data/codesearch/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# static fields
.field public static final gCS:Ljava/lang/String; = "http://schemas.google.com/codesearch/2006"

.field public static final gCSNamespacePrefix:Ljava/lang/String; = "http://schemas.google.com/codesearch/2006#"

.field public static final gCSNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final gCSPrefix:Ljava/lang/String; = "gcs"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gcs"

    const-string v2, "http://schemas.google.com/codesearch/2006"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/codesearch/Namespaces;->gCSNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
