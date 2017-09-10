.class public Lcom/google/gdata/data/gtt/GttNamespace;
.super Ljava/lang/Object;
.source "GttNamespace.java"


# static fields
.field public static final GTT:Ljava/lang/String; = "http://schemas.google.com/gtt/2009/11"

.field public static final GTT_ALIAS:Ljava/lang/String; = "gtt"

.field public static final GTT_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final GTT_PREFIX:Ljava/lang/String; = "http://schemas.google.com/gtt/2009/11#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gtt"

    const-string v2, "http://schemas.google.com/gtt/2009/11"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/gtt/GttNamespace;->GTT_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
