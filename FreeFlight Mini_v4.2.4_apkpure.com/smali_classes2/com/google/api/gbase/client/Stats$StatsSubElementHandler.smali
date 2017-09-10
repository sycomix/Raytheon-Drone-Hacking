.class Lcom/google/api/gbase/client/Stats$StatsSubElementHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsSubElementHandler"
.end annotation


# instance fields
.field private final stat:Lcom/google/api/gbase/client/Stats$Statistics;


# direct methods
.method public constructor <init>(Lcom/google/api/gbase/client/Stats$Statistics;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "stat"    # Lcom/google/api/gbase/client/Stats$Statistics;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/google/api/gbase/client/Stats$StatsSubElementHandler;->stat:Lcom/google/api/gbase/client/Stats$Statistics;

    .line 230
    new-instance v0, Lcom/google/gdata/data/AttributeHelper;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/AttributeHelper;-><init>(Lorg/xml/sax/Attributes;)V

    .line 231
    .local v0, "helper":Lcom/google/gdata/data/AttributeHelper;
    const-string v1, "total"

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;ZI)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/api/gbase/client/Stats$Statistics;->setTotal(I)V

    .line 232
    invoke-virtual {v0}, Lcom/google/gdata/data/AttributeHelper;->assertAllConsumed()V

    .line 233
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 5
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
    const/4 v4, 0x1

    .line 239
    const-string v1, "http://base.google.com/ns-metadata/1.0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "source"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    new-instance v0, Lcom/google/gdata/data/AttributeHelper;

    invoke-direct {v0, p3}, Lcom/google/gdata/data/AttributeHelper;-><init>(Lorg/xml/sax/Attributes;)V

    .line 242
    .local v0, "helper":Lcom/google/gdata/data/AttributeHelper;
    iget-object v1, p0, Lcom/google/api/gbase/client/Stats$StatsSubElementHandler;->stat:Lcom/google/api/gbase/client/Stats$Statistics;

    const-string v2, "name"

    invoke-virtual {v0, v2, v4}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v0, v3, v4}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/gbase/client/Stats$Statistics;->setCountBySource(Ljava/lang/String;I)V

    .line 244
    invoke-virtual {v0}, Lcom/google/gdata/data/AttributeHelper;->assertAllConsumed()V

    .line 246
    .end local v0    # "helper":Lcom/google/gdata/data/AttributeHelper;
    :cond_0
    new-instance v1, Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-object v1
.end method
