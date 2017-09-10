.class public Lcom/google/gdata/data/books/BooksNamespace;
.super Ljava/lang/Object;
.source "BooksNamespace.java"


# static fields
.field public static final GBS:Ljava/lang/String; = "http://schemas.google.com/books/2008"

.field public static final GBS_ALIAS:Ljava/lang/String; = "gbs"

.field public static final GBS_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final GBS_PREFIX:Ljava/lang/String; = "http://schemas.google.com/books/2008#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gbs"

    const-string v2, "http://schemas.google.com/books/2008"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/books/BooksNamespace;->GBS_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
