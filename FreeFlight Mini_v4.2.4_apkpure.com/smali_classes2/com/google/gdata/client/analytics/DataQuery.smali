.class public Lcom/google/gdata/client/analytics/DataQuery;
.super Lcom/google/gdata/client/Query;
.source "DataQuery.java"


# instance fields
.field private dimensions:Ljava/lang/String;

.field private endDate:Ljava/lang/String;

.field private filters:Ljava/lang/String;

.field private ids:Ljava/lang/String;

.field private metrics:Ljava/lang/String;

.field private segment:Ljava/lang/String;

.field private sort:Ljava/lang/String;

.field private startDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getDimensions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->dimensions:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFilters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->filters:Ljava/lang/String;

    return-object v0
.end method

.method public getIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->ids:Ljava/lang/String;

    return-object v0
.end method

.method public getMetrics()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->metrics:Ljava/lang/String;

    return-object v0
.end method

.method public getSegment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->segment:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public setDimensions(Ljava/lang/String;)V
    .locals 1
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->dimensions:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 86
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/analytics/DataQuery;->dimensions:Ljava/lang/String;

    .line 87
    const-string v0, "dimensions"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/analytics/DataQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->dimensions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "endDate"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->endDate:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 112
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/analytics/DataQuery;->endDate:Ljava/lang/String;

    .line 113
    const-string v0, "end-date"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/analytics/DataQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->endDate:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setFilters(Ljava/lang/String;)V
    .locals 1
    .param p1, "filters"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->filters:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 138
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/analytics/DataQuery;->filters:Ljava/lang/String;

    .line 139
    const-string v0, "filters"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/analytics/DataQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->filters:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setIds(Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->ids:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 163
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/analytics/DataQuery;->ids:Ljava/lang/String;

    .line 164
    const-string v0, "ids"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/analytics/DataQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->ids:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setMetrics(Ljava/lang/String;)V
    .locals 1
    .param p1, "metrics"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->metrics:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 189
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/analytics/DataQuery;->metrics:Ljava/lang/String;

    .line 190
    const-string v0, "metrics"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/analytics/DataQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->metrics:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setSegment(Ljava/lang/String;)V
    .locals 1
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->segment:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 215
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/analytics/DataQuery;->segment:Ljava/lang/String;

    .line 216
    const-string v0, "segment"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/analytics/DataQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->segment:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 1
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->sort:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 240
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/analytics/DataQuery;->sort:Ljava/lang/String;

    .line 241
    const-string v0, "sort"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/analytics/DataQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->sort:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "startDate"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->startDate:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 266
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/analytics/DataQuery;->startDate:Ljava/lang/String;

    .line 267
    const-string v0, "start-date"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/analytics/DataQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/analytics/DataQuery;->startDate:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
