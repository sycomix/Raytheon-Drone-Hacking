.class public Lcom/google/gdata/data/analytics/DataFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "DataFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/analytics/DataFeed;",
        "Lcom/google/gdata/data/analytics/DataEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/gdata/data/analytics/DataEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 36
    const-string v0, "analytics#data"

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->setKind(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    const-class v0, Lcom/google/gdata/data/analytics/DataEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addDataSource(Lcom/google/gdata/data/analytics/DataSource;)V
    .locals 1
    .param p1, "dataSource"    # Lcom/google/gdata/data/analytics/DataSource;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/DataFeed;->getDataSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public addSegment(Lcom/google/gdata/data/analytics/Segment;)V
    .locals 1
    .param p1, "segment"    # Lcom/google/gdata/data/analytics/Segment;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/DataFeed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const-class v0, Lcom/google/gdata/data/analytics/DataFeed;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/analytics/DataFeed;

    const-class v1, Lcom/google/gdata/data/analytics/Aggregates;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    new-instance v0, Lcom/google/gdata/data/analytics/Aggregates;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/Aggregates;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/analytics/Aggregates;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 57
    const-class v0, Lcom/google/gdata/data/analytics/DataFeed;

    const-class v1, Lcom/google/gdata/data/analytics/ContainsSampledData;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/analytics/DataFeed;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/DataSource;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 60
    new-instance v0, Lcom/google/gdata/data/analytics/DataSource;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/DataSource;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/analytics/DataSource;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 61
    const-class v0, Lcom/google/gdata/data/analytics/DataFeed;

    invoke-static {v3, v2}, Lcom/google/gdata/data/analytics/EndDate;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 63
    const-class v0, Lcom/google/gdata/data/analytics/DataFeed;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/Segment;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 65
    new-instance v0, Lcom/google/gdata/data/analytics/Segment;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/Segment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/analytics/Segment;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 66
    const-class v0, Lcom/google/gdata/data/analytics/DataFeed;

    invoke-static {v3, v2}, Lcom/google/gdata/data/analytics/StartDate;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getAggregates()Lcom/google/gdata/data/analytics/Aggregates;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/google/gdata/data/analytics/Aggregates;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/Aggregates;

    return-object v0
.end method

.method public getContainsSampledData()Lcom/google/gdata/data/analytics/ContainsSampledData;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/google/gdata/data/analytics/ContainsSampledData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/ContainsSampledData;

    return-object v0
.end method

.method public getDataSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/DataSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    const-class v0, Lcom/google/gdata/data/analytics/DataSource;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEndDate()Lcom/google/gdata/data/analytics/EndDate;
    .locals 1

    .prologue
    .line 168
    const-class v0, Lcom/google/gdata/data/analytics/EndDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/EndDate;

    return-object v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    const-class v0, Lcom/google/gdata/data/analytics/Segment;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()Lcom/google/gdata/data/analytics/StartDate;
    .locals 1

    .prologue
    .line 226
    const-class v0, Lcom/google/gdata/data/analytics/StartDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/StartDate;

    return-object v0
.end method

.method public hasAggregates()Z
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/google/gdata/data/analytics/Aggregates;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasContainsSampledData()Z
    .locals 1

    .prologue
    .line 132
    const-class v0, Lcom/google/gdata/data/analytics/ContainsSampledData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDataSources()Z
    .locals 1

    .prologue
    .line 159
    const-class v0, Lcom/google/gdata/data/analytics/DataSource;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasEndDate()Z
    .locals 1

    .prologue
    .line 190
    const-class v0, Lcom/google/gdata/data/analytics/EndDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSegments()Z
    .locals 1

    .prologue
    .line 217
    const-class v0, Lcom/google/gdata/data/analytics/Segment;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStartDate()Z
    .locals 1

    .prologue
    .line 248
    const-class v0, Lcom/google/gdata/data/analytics/StartDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setAggregates(Lcom/google/gdata/data/analytics/Aggregates;)V
    .locals 1
    .param p1, "aggregates"    # Lcom/google/gdata/data/analytics/Aggregates;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const-class v0, Lcom/google/gdata/data/analytics/Aggregates;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->removeExtension(Ljava/lang/Class;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/DataFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setContainsSampledData(Lcom/google/gdata/data/analytics/ContainsSampledData;)V
    .locals 1
    .param p1, "containsSampledData"    # Lcom/google/gdata/data/analytics/ContainsSampledData;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const-class v0, Lcom/google/gdata/data/analytics/ContainsSampledData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->removeExtension(Ljava/lang/Class;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/DataFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setEndDate(Lcom/google/gdata/data/analytics/EndDate;)V
    .locals 1
    .param p1, "endDate"    # Lcom/google/gdata/data/analytics/EndDate;

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    const-class v0, Lcom/google/gdata/data/analytics/EndDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->removeExtension(Ljava/lang/Class;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/DataFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStartDate(Lcom/google/gdata/data/analytics/StartDate;)V
    .locals 1
    .param p1, "startDate"    # Lcom/google/gdata/data/analytics/StartDate;

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    const-class v0, Lcom/google/gdata/data/analytics/StartDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataFeed;->removeExtension(Ljava/lang/Class;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/DataFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{DataFeed "

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
    .line 253
    return-void
.end method
