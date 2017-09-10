.class public Lcom/google/gdata/data/youtube/YtUserProfileStatistics;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtUserProfileStatistics.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "statistics"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# instance fields
.field private lastWebAccess:Lcom/google/gdata/data/DateTime;

.field private subscriberCount:J

.field private totalUploadViews:J

.field private videoWatchCount:J

.field private viewCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    return-void
.end method

.method private putAttributeIfGreaterZero(Lcom/google/gdata/data/AttributeGenerator;Ljava/lang/String;J)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 108
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 111
    :cond_0
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

    .line 116
    const-string/jumbo v0, "viewCount"

    invoke-virtual {p1, v0, v2, v4, v5}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->viewCount:J

    .line 117
    const-string/jumbo v0, "videoWatchCount"

    invoke-virtual {p1, v0, v2, v4, v5}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->videoWatchCount:J

    .line 118
    const-string v0, "subscriberCount"

    invoke-virtual {p1, v0, v2, v4, v5}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->subscriberCount:J

    .line 119
    const-string/jumbo v0, "totalUploadViews"

    invoke-virtual {p1, v0, v2, v4, v5}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->totalUploadViews:J

    .line 120
    const-string v0, "lastWebAccess"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDateTime(Ljava/lang/String;Z)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->lastWebAccess:Lcom/google/gdata/data/DateTime;

    .line 121
    return-void
.end method

.method public getLastWebAccess()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->lastWebAccess:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getSubscriberCount()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->subscriberCount:J

    return-wide v0
.end method

.method public getTotalUploadViews()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->totalUploadViews:J

    return-wide v0
.end method

.method public getVideoWatchCount()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->videoWatchCount:J

    return-wide v0
.end method

.method public getViewCount()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->viewCount:J

    return-wide v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 4
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 93
    const-string/jumbo v0, "viewCount"

    iget-wide v2, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->viewCount:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->putAttributeIfGreaterZero(Lcom/google/gdata/data/AttributeGenerator;Ljava/lang/String;J)V

    .line 94
    const-string/jumbo v0, "videoWatchCount"

    iget-wide v2, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->videoWatchCount:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->putAttributeIfGreaterZero(Lcom/google/gdata/data/AttributeGenerator;Ljava/lang/String;J)V

    .line 95
    const-string v0, "subscriberCount"

    iget-wide v2, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->subscriberCount:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->putAttributeIfGreaterZero(Lcom/google/gdata/data/AttributeGenerator;Ljava/lang/String;J)V

    .line 96
    const-string/jumbo v0, "totalUploadViews"

    iget-wide v2, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->totalUploadViews:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->putAttributeIfGreaterZero(Lcom/google/gdata/data/AttributeGenerator;Ljava/lang/String;J)V

    .line 97
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->lastWebAccess:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "lastWebAccess"

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->lastWebAccess:Lcom/google/gdata/data/DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setLastWebAccess(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "lastWebAccess"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->lastWebAccess:Lcom/google/gdata/data/DateTime;

    .line 81
    return-void
.end method

.method public setSubscriberCount(J)V
    .locals 1
    .param p1, "sc"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->subscriberCount:J

    .line 73
    return-void
.end method

.method public setTotalUploadViews(J)V
    .locals 1
    .param p1, "totalUploadViews"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->totalUploadViews:J

    .line 89
    return-void
.end method

.method public setVideoWatchCount(J)V
    .locals 1
    .param p1, "vwc"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->videoWatchCount:J

    .line 65
    return-void
.end method

.method public setViewCount(J)V
    .locals 1
    .param p1, "viewCount"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;->viewCount:J

    .line 57
    return-void
.end method
