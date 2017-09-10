.class public Lcom/google/gdata/data/threading/ThreadingNamespace;
.super Ljava/lang/Object;
.source "ThreadingNamespace.java"


# static fields
.field public static final THR:Ljava/lang/String; = "http://purl.org/syndication/thread/1.0"

.field public static final THR_ALIAS:Ljava/lang/String; = "thr"

.field public static final THR_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final THR_PREFIX:Ljava/lang/String; = "http://purl.org/syndication/thread/1.0#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "thr"

    const-string v2, "http://purl.org/syndication/thread/1.0"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/threading/ThreadingNamespace;->THR_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
