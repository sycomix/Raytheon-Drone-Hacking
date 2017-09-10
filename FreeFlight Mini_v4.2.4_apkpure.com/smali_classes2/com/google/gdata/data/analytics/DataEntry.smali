.class public Lcom/google/gdata/data/analytics/DataEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "DataEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/analytics/DataEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 36
    const-string v0, "analytics#datarow"

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataEntry;->setKind(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addDimension(Lcom/google/gdata/data/analytics/Dimension;)V
    .locals 1
    .param p1, "dimension"    # Lcom/google/gdata/data/analytics/Dimension;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/DataEntry;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public addMetric(Lcom/google/gdata/data/analytics/Metric;)V
    .locals 1
    .param p1, "metric"    # Lcom/google/gdata/data/analytics/Metric;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/DataEntry;->getMetrics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const-class v0, Lcom/google/gdata/data/analytics/DataEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/analytics/DataEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/Dimension;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 57
    const-class v0, Lcom/google/gdata/data/analytics/DataEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/AnalyticsLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 59
    const-class v0, Lcom/google/gdata/data/analytics/DataEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/Metric;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public doubleValueOf(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/DataEntry;->getMetric(Ljava/lang/String;)Lcom/google/gdata/data/analytics/Metric;

    move-result-object v0

    .line 182
    .local v0, "m":Lcom/google/gdata/data/analytics/Metric;
    if-nez v0, :cond_0

    .line 183
    const/4 v1, 0x0

    .line 185
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/analytics/Metric;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method public getDimension(Ljava/lang/String;)Lcom/google/gdata/data/analytics/Dimension;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/DataEntry;->getDimensions()Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/analytics/Dimension;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/Dimension;

    .line 137
    .local v0, "dimension":Lcom/google/gdata/data/analytics/Dimension;
    invoke-virtual {v0}, Lcom/google/gdata/data/analytics/Dimension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    .end local v0    # "dimension":Lcom/google/gdata/data/analytics/Dimension;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/Dimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const-class v0, Lcom/google/gdata/data/analytics/Dimension;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetric(Ljava/lang/String;)Lcom/google/gdata/data/analytics/Metric;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/DataEntry;->getMetrics()Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "metrics":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/analytics/Metric;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/analytics/Metric;

    .line 154
    .local v1, "metric":Lcom/google/gdata/data/analytics/Metric;
    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Metric;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    .end local v1    # "metric":Lcom/google/gdata/data/analytics/Metric;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMetrics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/Metric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    const-class v0, Lcom/google/gdata/data/analytics/Metric;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDimensions()Z
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/google/gdata/data/analytics/Dimension;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasMetrics()Z
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/google/gdata/data/analytics/Metric;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public longValueOf(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/DataEntry;->getMetric(Ljava/lang/String;)Lcom/google/gdata/data/analytics/Metric;

    move-result-object v0

    .line 168
    .local v0, "m":Lcom/google/gdata/data/analytics/Metric;
    if-nez v0, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 171
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/analytics/Metric;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public stringValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/DataEntry;->getDimension(Ljava/lang/String;)Lcom/google/gdata/data/analytics/Dimension;

    move-result-object v0

    .line 196
    .local v0, "d":Lcom/google/gdata/data/analytics/Dimension;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/google/gdata/data/analytics/Dimension;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 203
    :goto_0
    return-object v2

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/DataEntry;->getMetric(Ljava/lang/String;)Lcom/google/gdata/data/analytics/Metric;

    move-result-object v1

    .line 200
    .local v1, "m":Lcom/google/gdata/data/analytics/Metric;
    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Metric;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 203
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{DataEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
