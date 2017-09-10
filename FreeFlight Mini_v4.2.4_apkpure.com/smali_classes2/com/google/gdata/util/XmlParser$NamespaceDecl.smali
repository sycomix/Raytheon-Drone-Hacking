.class Lcom/google/gdata/util/XmlParser$NamespaceDecl;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamespaceDecl"
.end annotation


# instance fields
.field inBlob:Z

.field ns:Lcom/google/gdata/util/common/xml/XmlNamespace;


# direct methods
.method private constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;)V
    .locals 0
    .param p1, "ns"    # Lcom/google/gdata/util/common/xml/XmlNamespace;

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lcom/google/gdata/util/XmlParser$NamespaceDecl;->ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 523
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Lcom/google/gdata/util/XmlParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "x1"    # Lcom/google/gdata/util/XmlParser$1;

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/google/gdata/util/XmlParser$NamespaceDecl;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    return-void
.end method
