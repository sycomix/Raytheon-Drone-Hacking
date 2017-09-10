.class public Lcom/google/gdata/data/sidewiki/SidewikiNamespace;
.super Ljava/lang/Object;
.source "SidewikiNamespace.java"


# static fields
.field public static final SIDEWIKI:Ljava/lang/String; = "http://schemas.google.com/sidewiki/2009"

.field public static final SIDEWIKI_ALIAS:Ljava/lang/String; = "sidewiki"

.field public static final SIDEWIKI_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final SIDEWIKI_PREFIX:Ljava/lang/String; = "http://schemas.google.com/sidewiki/2009#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "sidewiki"

    const-string v2, "http://schemas.google.com/sidewiki/2009"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/sidewiki/SidewikiNamespace;->SIDEWIKI_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
