.class public Lcom/google/gdata/wireformats/AltFormat;
.super Ljava/lang/Object;
.source "AltFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/wireformats/AltFormat$1;,
        Lcom/google/gdata/wireformats/AltFormat$Builder;
    }
.end annotation


# static fields
.field public static final APPLICATION_XML:Lcom/google/gdata/wireformats/AltFormat;

.field public static final ATOM:Lcom/google/gdata/wireformats/AltFormat;

.field public static final ATOM_SERVICE:Lcom/google/gdata/wireformats/AltFormat;

.field public static final MEDIA:Lcom/google/gdata/wireformats/AltFormat;

.field public static final MEDIA_MULTIPART:Lcom/google/gdata/wireformats/AltFormat;

.field public static final OPENSEARCH:Lcom/google/gdata/wireformats/AltFormat;

.field public static final RSS:Lcom/google/gdata/wireformats/AltFormat;


# instance fields
.field private final acceptList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private final base:Lcom/google/gdata/wireformats/AltFormat;

.field private final contentType:Lcom/google/gdata/util/ContentType;

.field private final extraInputFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/wireformats/AltFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final isSelectableByType:Z

.field private final name:Ljava/lang/String;

.field private final wireFormat:Lcom/google/gdata/wireformats/WireFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-static {}, Lcom/google/gdata/wireformats/AltFormat;->builder()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    const-string v1, "rss"

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setWireFormat(Lcom/google/gdata/wireformats/WireFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->RSS:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setAcceptableXmlTypes()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setSelectableByType(Z)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->build()Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/AltFormat;->RSS:Lcom/google/gdata/wireformats/AltFormat;

    .line 62
    invoke-static {}, Lcom/google/gdata/wireformats/AltFormat;->builder()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    const-string v1, "opensearch"

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setWireFormat(Lcom/google/gdata/wireformats/WireFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->OPENSEARCH:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setAcceptableXmlTypes()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setSelectableByType(Z)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->build()Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/AltFormat;->OPENSEARCH:Lcom/google/gdata/wireformats/AltFormat;

    .line 75
    invoke-static {}, Lcom/google/gdata/wireformats/AltFormat;->builder()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    const-string v1, "atom-service"

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setWireFormat(Lcom/google/gdata/wireformats/WireFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->ATOM_SERVICE:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setAcceptableXmlTypes()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setSelectableByType(Z)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->build()Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM_SERVICE:Lcom/google/gdata/wireformats/AltFormat;

    .line 86
    invoke-static {}, Lcom/google/gdata/wireformats/AltFormat;->builder()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    const-string v1, "application-xml"

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setWireFormat(Lcom/google/gdata/wireformats/WireFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->APPLICATION_XML:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setAcceptableXmlTypes()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setSelectableByType(Z)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->build()Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/AltFormat;->APPLICATION_XML:Lcom/google/gdata/wireformats/AltFormat;

    .line 99
    invoke-static {}, Lcom/google/gdata/wireformats/AltFormat;->builder()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->ANY:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->build()Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/AltFormat;->MEDIA:Lcom/google/gdata/wireformats/AltFormat;

    .line 111
    invoke-static {}, Lcom/google/gdata/wireformats/AltFormat;->builder()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    const-string v1, "media-multipart"

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->MULTIPART_RELATED:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setSelectableByType(Z)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->build()Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/AltFormat;->MEDIA_MULTIPART:Lcom/google/gdata/wireformats/AltFormat;

    .line 121
    invoke-static {}, Lcom/google/gdata/wireformats/AltFormat;->builder()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    const-string v1, "atom"

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setWireFormat(Lcom/google/gdata/wireformats/WireFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setAcceptableXmlTypes()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/gdata/wireformats/AltFormat;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/gdata/wireformats/AltFormat;->MEDIA:Lcom/google/gdata/wireformats/AltFormat;

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/gdata/wireformats/AltFormat;->MEDIA_MULTIPART:Lcom/google/gdata/wireformats/AltFormat;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/google/gdata/wireformats/AltFormat;->APPLICATION_XML:Lcom/google/gdata/wireformats/AltFormat;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->addAllowedInputFormats([Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setSelectableByType(Z)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->build()Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/wireformats/AltFormat$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/gdata/wireformats/AltFormat$Builder;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->access$200(Lcom/google/gdata/wireformats/AltFormat$Builder;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/wireformats/AltFormat;->base:Lcom/google/gdata/wireformats/AltFormat;

    .line 176
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->access$300(Lcom/google/gdata/wireformats/AltFormat$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/wireformats/AltFormat;->name:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->access$400(Lcom/google/gdata/wireformats/AltFormat$Builder;)Lcom/google/gdata/wireformats/WireFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/wireformats/AltFormat;->wireFormat:Lcom/google/gdata/wireformats/WireFormat;

    .line 178
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->access$500(Lcom/google/gdata/wireformats/AltFormat$Builder;)Lcom/google/gdata/util/ContentType;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/wireformats/AltFormat;->contentType:Lcom/google/gdata/util/ContentType;

    .line 179
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 181
    .local v0, "acceptListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/gdata/util/ContentType;>;"
    iget-object v1, p0, Lcom/google/gdata/wireformats/AltFormat;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 182
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->access$600(Lcom/google/gdata/wireformats/AltFormat$Builder;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->access$600(Lcom/google/gdata/wireformats/AltFormat$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/wireformats/AltFormat;->acceptList:Ljava/util/List;

    .line 186
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->access$700(Lcom/google/gdata/wireformats/AltFormat$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/gdata/wireformats/AltFormat;->isSelectableByType:Z

    .line 187
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->access$800(Lcom/google/gdata/wireformats/AltFormat$Builder;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/wireformats/AltFormat;->extraInputFormats:Ljava/util/Set;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/wireformats/AltFormat$Builder;Lcom/google/gdata/wireformats/AltFormat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/wireformats/AltFormat$Builder;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/AltFormat$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/AltFormat;-><init>(Lcom/google/gdata/wireformats/AltFormat$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/wireformats/WireFormat;Lcom/google/gdata/util/ContentType;Ljava/util/List;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wireFormat"    # Lcom/google/gdata/wireformats/WireFormat;
    .param p3, "contentType"    # Lcom/google/gdata/util/ContentType;
    .param p5, "isSelectableByType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gdata/wireformats/WireFormat;",
            "Lcom/google/gdata/util/ContentType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    .local p4, "acceptList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/ContentType;>;"
    invoke-static {}, Lcom/google/gdata/wireformats/AltFormat;->builder()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setWireFormat(Lcom/google/gdata/wireformats/WireFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/google/gdata/wireformats/AltFormat$Builder;->access$900(Lcom/google/gdata/wireformats/AltFormat$Builder;Ljava/lang/Iterable;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setSelectableByType(Z)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->access$1000(Lcom/google/gdata/wireformats/AltFormat$Builder;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/wireformats/AltFormat;-><init>(Lcom/google/gdata/wireformats/AltFormat$Builder;)V

    .line 219
    return-void
.end method

.method static synthetic access$1100(Lcom/google/gdata/wireformats/AltFormat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/WireFormat;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->wireFormat:Lcom/google/gdata/wireformats/WireFormat;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/util/ContentType;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->contentType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/gdata/wireformats/AltFormat;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->acceptList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/gdata/wireformats/AltFormat;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->extraInputFormats:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/gdata/wireformats/AltFormat;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/gdata/wireformats/AltFormat;->isSelectableByType:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/AltFormat;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->base:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public static builder()Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/google/gdata/wireformats/AltFormat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;-><init>(Lcom/google/gdata/wireformats/AltFormat$1;)V

    return-object v0
.end method

.method public static builder(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 2
    .param p0, "format"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 142
    new-instance v0, Lcom/google/gdata/wireformats/AltFormat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gdata/wireformats/AltFormat$Builder;-><init>(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/AltFormat$1;)V

    return-object v0
.end method


# virtual methods
.method public allowInputFormat(Lcom/google/gdata/wireformats/AltFormat;)Z
    .locals 1
    .param p1, "inputFormat"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 265
    if-eq p1, p0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->extraInputFormats:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 285
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/gdata/wireformats/AltFormat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->name:Ljava/lang/String;

    check-cast p1, Lcom/google/gdata/wireformats/AltFormat;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/gdata/wireformats/AltFormat;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->base:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->contentType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getMatchingTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->acceptList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWireFormat()Lcom/google/gdata/wireformats/WireFormat;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->wireFormat:Lcom/google/gdata/wireformats/WireFormat;

    return-object v0
.end method

.method public hasBaseFormat()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->base:Lcom/google/gdata/wireformats/AltFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSelectableByType()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/google/gdata/wireformats/AltFormat;->isSelectableByType:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/wireformats/AltFormat;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/wireformats/AltFormat;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
