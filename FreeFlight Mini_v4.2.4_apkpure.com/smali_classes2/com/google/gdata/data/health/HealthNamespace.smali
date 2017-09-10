.class public Lcom/google/gdata/data/health/HealthNamespace;
.super Ljava/lang/Object;
.source "HealthNamespace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;
    }
.end annotation


# static fields
.field public static final CCR:Ljava/lang/String; = "urn:astm-org:CCR"

.field public static final CCR_ALIAS:Ljava/lang/String; = "ccr"

.field public static final CCR_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final CCR_PREFIX:Ljava/lang/String; = "urn:astm-org:CCR#"

.field public static final H9:Ljava/lang/String; = "http://schemas.google.com/health/data"

.field public static final H9KINDS:Ljava/lang/String; = "http://schemas.google.com/health/kinds"

.field public static final H9KINDS_ALIAS:Ljava/lang/String; = "h9kinds"

.field public static final H9KINDS_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final H9KINDS_PREFIX:Ljava/lang/String; = "http://schemas.google.com/health/kinds#"

.field public static final H9M:Ljava/lang/String; = "http://schemas.google.com/health/metadata"

.field public static final H9M_ALIAS:Ljava/lang/String; = "h9m"

.field public static final H9M_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final H9M_PREFIX:Ljava/lang/String; = "http://schemas.google.com/health/metadata#"

.field public static final H9_ALIAS:Ljava/lang/String; = "h9"

.field public static final H9_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final H9_PREFIX:Ljava/lang/String; = "http://schemas.google.com/health/data#"

.field public static final REL_COMPLETE_URL:Ljava/lang/String; = "http://schemas.google.com/health/data#complete"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "ccr"

    const-string v2, "urn:astm-org:CCR"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/health/HealthNamespace;->CCR_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 64
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "h9m"

    const-string v2, "http://schemas.google.com/health/metadata"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/health/HealthNamespace;->H9M_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 71
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "h9"

    const-string v2, "http://schemas.google.com/health/data"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/health/HealthNamespace;->H9_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 78
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "h9kinds"

    const-string v2, "http://schemas.google.com/health/kinds"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/health/HealthNamespace;->H9KINDS_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
