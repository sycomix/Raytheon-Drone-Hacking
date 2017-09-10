.class Lcom/google/api/gbase/client/Stats$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/gbase/client/Stats;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/gbase/client/Stats;


# direct methods
.method constructor <init>(Lcom/google/api/gbase/client/Stats;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/api/gbase/client/Stats$1;->this$0:Lcom/google/api/gbase/client/Stats;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, "impressions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/google/api/gbase/client/Stats$StatsSubElementHandler;

    iget-object v1, p0, Lcom/google/api/gbase/client/Stats$1;->this$0:Lcom/google/api/gbase/client/Stats;

    invoke-static {v1}, Lcom/google/api/gbase/client/Stats;->access$100(Lcom/google/api/gbase/client/Stats;)Lcom/google/api/gbase/client/Stats$Statistics;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/api/gbase/client/Stats$StatsSubElementHandler;-><init>(Lcom/google/api/gbase/client/Stats$Statistics;Lorg/xml/sax/Attributes;)V

    .line 102
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const-string v0, "page_views"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Lcom/google/api/gbase/client/Stats$StatsSubElementHandler;

    iget-object v1, p0, Lcom/google/api/gbase/client/Stats$1;->this$0:Lcom/google/api/gbase/client/Stats;

    invoke-static {v1}, Lcom/google/api/gbase/client/Stats;->access$200(Lcom/google/api/gbase/client/Stats;)Lcom/google/api/gbase/client/Stats$Statistics;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/api/gbase/client/Stats$StatsSubElementHandler;-><init>(Lcom/google/api/gbase/client/Stats$Statistics;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "clicks"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v0, Lcom/google/api/gbase/client/Stats$StatsSubElementHandler;

    iget-object v1, p0, Lcom/google/api/gbase/client/Stats$1;->this$0:Lcom/google/api/gbase/client/Stats;

    invoke-static {v1}, Lcom/google/api/gbase/client/Stats;->access$300(Lcom/google/api/gbase/client/Stats;)Lcom/google/api/gbase/client/Stats$Statistics;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/api/gbase/client/Stats$StatsSubElementHandler;-><init>(Lcom/google/api/gbase/client/Stats$Statistics;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method
