.class public final Lcom/google/gdata/util/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# static fields
.field public static final atom:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field public static final atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final atomPub:Ljava/lang/String; = "http://purl.org/atom/app#"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final atomPubDraft:Ljava/lang/String; = "http://purl.org/atom/app#"

.field public static final atomPubDraftNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final atomPubStandard:Ljava/lang/String; = "http://www.w3.org/2007/app"

.field public static final atomPubStandardNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final batch:Ljava/lang/String; = "http://schemas.google.com/gdata/batch"

.field public static final batchAlias:Ljava/lang/String; = "batch"

.field public static final batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final g:Ljava/lang/String; = "http://schemas.google.com/g/2005"

.field public static final gAlias:Ljava/lang/String; = "gd"

.field public static final gKind:Ljava/lang/String; = "http://schemas.google.com/g/2005#kind"

.field public static final gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final gPrefix:Ljava/lang/String; = "http://schemas.google.com/g/2005#"

.field public static final gdataConfig:Ljava/lang/String; = "http://schemas.google.com/gdata/config/2005"

.field public static final gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final gr:Ljava/lang/String; = "http://schemas.google.com/g/2005#runtime"

.field public static final grNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final openSearch:Ljava/lang/String; = "http://a9.com/-/spec/opensearchrss/1.0/"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final openSearch1_0:Ljava/lang/String; = "http://a9.com/-/spec/opensearchrss/1.0/"

.field public static final openSearch1_0Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final openSearch1_1:Ljava/lang/String; = "http://a9.com/-/spec/opensearch/1.1/"

.field public static final openSearch1_1Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final openSearchDesc:Ljava/lang/String; = "http://a9.com/-/spec/opensearchdescription/1.0/"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final openSearchDesc1_1:Ljava/lang/String; = "http://a9.com/-/spec/opensearchdescription/1.1/"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final openSearchDesc1_1Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final openSearchDescNs:Lcom/google/gdata/util/common/xml/XmlNamespace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final openSearchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final xhtml:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final xhtmlNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final xml:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field public static final xmlNs:Lcom/google/gdata/util/common/xml/XmlNamespace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->xmlNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 44
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "atom"

    const-string v2, "http://www.w3.org/2005/Atom"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 65
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "app"

    const-string v2, "http://purl.org/atom/app#"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->atomPubDraftNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 87
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "app"

    const-string v2, "http://www.w3.org/2007/app"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->atomPubStandardNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 108
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomPubDraftNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    sput-object v0, Lcom/google/gdata/util/Namespaces;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 142
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "openSearch"

    const-string v2, "http://a9.com/-/spec/opensearchrss/1.0/"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->openSearch1_0Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 164
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "openSearch"

    const-string v2, "http://a9.com/-/spec/opensearch/1.1/"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->openSearch1_1Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 186
    sget-object v0, Lcom/google/gdata/util/Namespaces;->openSearch1_0Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    sput-object v0, Lcom/google/gdata/util/Namespaces;->openSearchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 212
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "openSearchDesc"

    const-string v2, "http://a9.com/-/spec/opensearchdescription/1.0/"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->openSearchDescNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 230
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "openSearchDesc"

    const-string v2, "http://a9.com/-/spec/opensearchdescription/1.1/"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->openSearchDesc1_1Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 246
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "xh"

    const-string v2, "http://www.w3.org/1999/xhtml"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->xhtmlNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 255
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gc"

    const-string v2, "http://schemas.google.com/gdata/config/2005"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 265
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gd"

    const-string v2, "http://schemas.google.com/g/2005"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 273
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gr"

    const-string v2, "http://schemas.google.com/g/2005#runtime"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->grNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 282
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "batch"

    const-string v2, "http://schemas.google.com/gdata/batch"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deflate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v0, "http://schemas.google.com/g/2005#"

    invoke-static {p0, v0}, Lcom/google/gdata/util/Namespaces;->deflate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deflate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 323
    if-nez p0, :cond_1

    .line 325
    .end local p0    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 324
    .restart local p0    # "uri":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static final getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomPubStandardNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    goto :goto_0
.end method

.method public static final getOpenSearchDescNs()Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gdata/util/Namespaces;->openSearchDescNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/Namespaces;->openSearchDesc1_1Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    goto :goto_0
.end method

.method public static final getOpenSearchNs()Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gdata/util/Namespaces;->openSearchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/util/Namespaces;->openSearch1_1Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    goto :goto_0
.end method

.method public static inflate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    const-string v0, "http://schemas.google.com/g/2005#"

    invoke-static {p0, v0}, Lcom/google/gdata/util/Namespaces;->inflate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 297
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 298
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
