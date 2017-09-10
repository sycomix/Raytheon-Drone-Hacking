.class public Lcom/google/gdata/data/docs/DocsNamespace;
.super Ljava/lang/Object;
.source "DocsNamespace.java"


# static fields
.field public static final DOCS:Ljava/lang/String; = "http://schemas.google.com/docs/2007"

.field public static final DOCS_ALIAS:Ljava/lang/String; = "docs"

.field public static final DOCS_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final DOCS_PREFIX:Ljava/lang/String; = "http://schemas.google.com/docs/2007#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "docs"

    const-string v2, "http://schemas.google.com/docs/2007"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocsNamespace;->DOCS_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
