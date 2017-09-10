.class public Lcom/google/gdata/data/youtube/YtDuration;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtDuration.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "duration"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# instance fields
.field private seconds:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/google/gdata/data/youtube/YtDuration;->seconds:J

    .line 52
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "seconds"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/youtube/YtDuration;->seconds:J

    .line 73
    return-void
.end method

.method public getSeconds()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/gdata/data/youtube/YtDuration;->seconds:J

    return-wide v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 4
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 66
    const-string v0, "seconds"

    iget-wide v2, p0, Lcom/google/gdata/data/youtube/YtDuration;->seconds:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 67
    return-void
.end method

.method public setSeconds(J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/google/gdata/data/youtube/YtDuration;->seconds:J

    .line 62
    return-void
.end method
