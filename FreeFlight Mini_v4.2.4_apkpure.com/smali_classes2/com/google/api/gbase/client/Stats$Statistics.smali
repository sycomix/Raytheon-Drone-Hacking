.class public Lcom/google/api/gbase/client/Stats$Statistics;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Statistics"
.end annotation


# instance fields
.field private countBySource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/api/gbase/client/Stats$Statistics;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/gbase/client/Stats$Statistics;
    .param p1, "x1"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/google/api/gbase/client/Stats$Statistics;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    return-void
.end method

.method private generate(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 193
    iget v3, p0, Lcom/google/api/gbase/client/Stats$Statistics;->total:I

    if-nez v3, :cond_0

    .line 217
    :goto_0
    return-void

    .line 198
    :cond_0
    sget-object v3, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v5, "total"

    iget v6, p0, Lcom/google/api/gbase/client/Stats$Statistics;->total:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v3, p2, v4, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 202
    iget-object v3, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 203
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 204
    iget-object v3, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 205
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v0, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v5, "name"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v5, "count"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v3, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v4, "source"

    invoke-virtual {p1, v3, v4, v0, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    .end local v0    # "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 216
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/gbase/client/Stats$Statistics;->total:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    .line 121
    return-void
.end method

.method public getCountBySource(Ljava/lang/String;)I
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 161
    iget-object v2, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSources()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/google/api/gbase/client/Stats$Statistics;->total:I

    return v0
.end method

.method public setCountBySource(Ljava/lang/String;I)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 179
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/google/api/gbase/client/Stats$Statistics;->countBySource:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/google/api/gbase/client/Stats$Statistics;->total:I

    .line 139
    return-void
.end method
