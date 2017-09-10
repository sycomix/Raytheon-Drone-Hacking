.class public Lcom/google/api/gbase/client/Stats;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "stats"
    nsAlias = "gm"
    nsUri = "http://base.google.com/ns-metadata/1.0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gbase/client/Stats$StatsSubElementHandler;,
        Lcom/google/api/gbase/client/Stats$Statistics;
    }
.end annotation


# instance fields
.field private final clicks:Lcom/google/api/gbase/client/Stats$Statistics;

.field private final impressions:Lcom/google/api/gbase/client/Stats$Statistics;

.field private final pageViews:Lcom/google/api/gbase/client/Stats$Statistics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/api/gbase/client/Stats$Statistics;

    invoke-direct {v0}, Lcom/google/api/gbase/client/Stats$Statistics;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/Stats;->impressions:Lcom/google/api/gbase/client/Stats$Statistics;

    .line 46
    new-instance v0, Lcom/google/api/gbase/client/Stats$Statistics;

    invoke-direct {v0}, Lcom/google/api/gbase/client/Stats$Statistics;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/Stats;->clicks:Lcom/google/api/gbase/client/Stats$Statistics;

    .line 47
    new-instance v0, Lcom/google/api/gbase/client/Stats$Statistics;

    invoke-direct {v0}, Lcom/google/api/gbase/client/Stats$Statistics;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/Stats;->pageViews:Lcom/google/api/gbase/client/Stats$Statistics;

    .line 222
    return-void
.end method

.method static synthetic access$100(Lcom/google/api/gbase/client/Stats;)Lcom/google/api/gbase/client/Stats$Statistics;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/gbase/client/Stats;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->impressions:Lcom/google/api/gbase/client/Stats$Statistics;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/api/gbase/client/Stats;)Lcom/google/api/gbase/client/Stats$Statistics;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/gbase/client/Stats;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->pageViews:Lcom/google/api/gbase/client/Stats$Statistics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/api/gbase/client/Stats;)Lcom/google/api/gbase/client/Stats$Statistics;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/gbase/client/Stats;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->clicks:Lcom/google/api/gbase/client/Stats$Statistics;

    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->impressions:Lcom/google/api/gbase/client/Stats$Statistics;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/Stats$Statistics;->getTotal()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->clicks:Lcom/google/api/gbase/client/Stats$Statistics;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/Stats$Statistics;->getTotal()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->pageViews:Lcom/google/api/gbase/client/Stats$Statistics;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/Stats$Statistics;->getTotal()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v1, "stats"

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 74
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->impressions:Lcom/google/api/gbase/client/Stats$Statistics;

    const-string v1, "impressions"

    invoke-static {v0, p1, v1}, Lcom/google/api/gbase/client/Stats$Statistics;->access$000(Lcom/google/api/gbase/client/Stats$Statistics;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->clicks:Lcom/google/api/gbase/client/Stats$Statistics;

    const-string v1, "clicks"

    invoke-static {v0, p1, v1}, Lcom/google/api/gbase/client/Stats$Statistics;->access$000(Lcom/google/api/gbase/client/Stats$Statistics;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->pageViews:Lcom/google/api/gbase/client/Stats$Statistics;

    const-string v1, "page_views"

    invoke-static {v0, p1, v1}, Lcom/google/api/gbase/client/Stats$Statistics;->access$000(Lcom/google/api/gbase/client/Stats$Statistics;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    goto :goto_0
.end method

.method public getClicks()Lcom/google/api/gbase/client/Stats$Statistics;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->clicks:Lcom/google/api/gbase/client/Stats$Statistics;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->impressions:Lcom/google/api/gbase/client/Stats$Statistics;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/Stats$Statistics;->clear()V

    .line 85
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->pageViews:Lcom/google/api/gbase/client/Stats$Statistics;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/Stats$Statistics;->clear()V

    .line 86
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->clicks:Lcom/google/api/gbase/client/Stats$Statistics;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/Stats$Statistics;->clear()V

    .line 88
    new-instance v0, Lcom/google/api/gbase/client/Stats$1;

    invoke-direct {v0, p0}, Lcom/google/api/gbase/client/Stats$1;-><init>(Lcom/google/api/gbase/client/Stats;)V

    return-object v0
.end method

.method public getImpressions()Lcom/google/api/gbase/client/Stats$Statistics;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->impressions:Lcom/google/api/gbase/client/Stats$Statistics;

    return-object v0
.end method

.method public getPageViews()Lcom/google/api/gbase/client/Stats$Statistics;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats;->pageViews:Lcom/google/api/gbase/client/Stats$Statistics;

    return-object v0
.end method
