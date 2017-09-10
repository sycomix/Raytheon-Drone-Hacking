.class public Lcom/google/gdata/data/analytics/AnalyticsNamespace;
.super Ljava/lang/Object;
.source "AnalyticsNamespace.java"


# static fields
.field public static final DXP:Ljava/lang/String; = "http://schemas.google.com/analytics/2009"

.field public static final DXP_ALIAS:Ljava/lang/String; = "dxp"

.field public static final DXP_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final DXP_PREFIX:Ljava/lang/String; = "http://schemas.google.com/analytics/2009#"

.field public static final GA:Ljava/lang/String; = "http://schemas.google.com/ga/2009"

.field public static final GA_ALIAS:Ljava/lang/String; = "ga"

.field public static final GA_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final GA_PREFIX:Ljava/lang/String; = "http://schemas.google.com/ga/2009#"

.field public static final GWO:Ljava/lang/String; = "http://schemas.google.com/analytics/websiteoptimizer/2009"

.field public static final GWO_ALIAS:Ljava/lang/String; = "gwo"

.field public static final GWO_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final GWO_PREFIX:Ljava/lang/String; = "http://schemas.google.com/analytics/websiteoptimizer/2009#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "dxp"

    const-string v2, "http://schemas.google.com/analytics/2009"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/AnalyticsNamespace;->DXP_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 52
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "ga"

    const-string v2, "http://schemas.google.com/ga/2009"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/AnalyticsNamespace;->GA_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 65
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gwo"

    const-string v2, "http://schemas.google.com/analytics/websiteoptimizer/2009"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/AnalyticsNamespace;->GWO_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
