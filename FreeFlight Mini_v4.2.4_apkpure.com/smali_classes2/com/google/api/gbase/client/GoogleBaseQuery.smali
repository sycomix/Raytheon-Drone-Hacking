.class public Lcom/google/api/gbase/client/GoogleBaseQuery;
.super Lcom/google/gdata/client/Query;
.source "GoogleBaseQuery.java"


# static fields
.field private static final BQ_PARAMETER:Ljava/lang/String; = "bq"

.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final CROWD_BY:Ljava/lang/String; = "crowdby"

.field private static final MAX_VALUES_PARAMETER:Ljava/lang/String; = "max-values"

.field private static final ORDER_BY:Ljava/lang/String; = "orderby"

.field private static final REFINE:Ljava/lang/String; = "refine"

.field private static final SORT_ORDER:Ljava/lang/String; = "sortorder"


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 43
    return-void
.end method

.method private getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "customParams":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-virtual {v1}, Lcom/google/gdata/client/Query$CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseQuery;->getCustomParameters()Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "customParams":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    .line 90
    .local v1, "existingValue":Lcom/google/gdata/client/Query$CustomParameter;
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v1    # "existingValue":Lcom/google/gdata/client/Query$CustomParameter;
    :cond_0
    if-eqz p2, :cond_1

    .line 95
    new-instance v3, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-direct {v3, p1, p2}, Lcom/google/gdata/client/Query$CustomParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "content"

    invoke-direct {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrowdBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string v0, "crowdby"

    invoke-direct {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleBaseQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    const-string v0, "bq"

    .line 74
    .local v0, "parameterName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMaxValues()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 116
    const-string v1, "max-values"

    invoke-direct {p0, v1}, Lcom/google/api/gbase/client/GoogleBaseQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "valueAsString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 120
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "orderby"

    invoke-direct {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefine()Z
    .locals 2

    .prologue
    .line 141
    const-string v0, "true"

    const-string v1, "refine"

    invoke-direct {p0, v1}, Lcom/google/api/gbase/client/GoogleBaseQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAscendingOrder()Z
    .locals 2

    .prologue
    .line 224
    const-string v0, "ascending"

    const-string v1, "sortorder"

    invoke-direct {p0, v1}, Lcom/google/api/gbase/client/GoogleBaseQuery;->getCustomParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAscendingOrder(Z)V
    .locals 2
    .param p1, "ascending"    # Z

    .prologue
    .line 212
    const-string v1, "sortorder"

    if-eqz p1, :cond_0

    const-string v0, "ascending"

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/api/gbase/client/GoogleBaseQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    .line 212
    :cond_0
    const-string v0, "descending"

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "content"

    invoke-direct {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public setCrowdingBy(Ljava/lang/String;)V
    .locals 1
    .param p1, "crowdBy"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "crowdby"

    invoke-direct {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setGoogleBaseQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "bq"

    invoke-direct {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setMaxValues(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "maxValues"    # Ljava/lang/Integer;

    .prologue
    .line 106
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 107
    .local v0, "stringValue":Ljava/lang/String;
    :goto_0
    const-string v1, "max-values"

    invoke-direct {p0, v1, v0}, Lcom/google/api/gbase/client/GoogleBaseQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 106
    .end local v0    # "stringValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setOrderBy(Ljava/lang/String;)V
    .locals 1
    .param p1, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "orderby"

    invoke-direct {p0, v0, p1}, Lcom/google/api/gbase/client/GoogleBaseQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setRefine(Z)V
    .locals 2
    .param p1, "refine"    # Z

    .prologue
    .line 132
    const-string v1, "refine"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/api/gbase/client/GoogleBaseQuery;->overwriteCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 132
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
