.class public Lcom/google/gdata/model/gd/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# static fields
.field public static final g:Ljava/lang/String; = "http://schemas.google.com/g/2005"

.field public static final gAlias:Ljava/lang/String; = "gd"

.field public static final gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final gPrefix:Ljava/lang/String; = "http://schemas.google.com/g/2005#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gd"

    const-string v2, "http://schemas.google.com/g/2005"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/gd/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
