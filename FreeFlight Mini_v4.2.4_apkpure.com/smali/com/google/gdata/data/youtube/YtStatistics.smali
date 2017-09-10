.class public Lcom/google/gdata/data/youtube/YtStatistics;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtStatistics.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "statistics"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# instance fields
.field private favoriteCount:J

.field private viewCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 6
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 73
    const-string/jumbo v0, "viewCount"

    invoke-virtual {p1, v0, v2, v4, v5}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/youtube/YtStatistics;->viewCount:J

    .line 74
    const-string v0, "favoriteCount"

    invoke-virtual {p1, v0, v2, v4, v5}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/youtube/YtStatistics;->favoriteCount:J

    .line 75
    return-void
.end method

.method public getFavoriteCount()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/gdata/data/youtube/YtStatistics;->favoriteCount:J

    return-wide v0
.end method

.method public getViewCount()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/gdata/data/youtube/YtStatistics;->viewCount:J

    return-wide v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 6
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    const-wide/16 v4, 0x0

    .line 62
    iget-wide v0, p0, Lcom/google/gdata/data/youtube/YtStatistics;->viewCount:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 63
    const-string/jumbo v0, "viewCount"

    iget-wide v2, p0, Lcom/google/gdata/data/youtube/YtStatistics;->viewCount:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 65
    :cond_0
    iget-wide v0, p0, Lcom/google/gdata/data/youtube/YtStatistics;->favoriteCount:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 66
    const-string v0, "favoriteCount"

    iget-wide v2, p0, Lcom/google/gdata/data/youtube/YtStatistics;->favoriteCount:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 68
    :cond_1
    return-void
.end method

.method public setFavoriteCount(J)V
    .locals 1
    .param p1, "favoriteCount"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/google/gdata/data/youtube/YtStatistics;->favoriteCount:J

    .line 58
    return-void
.end method

.method public setViewCount(J)V
    .locals 1
    .param p1, "viewCount"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/google/gdata/data/youtube/YtStatistics;->viewCount:J

    .line 48
    return-void
.end method
