.class public Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;
.super Ljava/lang/Object;
.source "SampleToTimeVideo.java"


# instance fields
.field protected final mSampleCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSampleDuration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTimeStampCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private nbSamples:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mSampleCount:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mSampleDuration:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mTimeStampCache:Ljava/util/ArrayList;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->nbSamples:I

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "duration"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mSampleCount:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mSampleDuration:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget v0, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->nbSamples:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->nbSamples:I

    .line 32
    return-void
.end method

.method public getDurationOfSample(I)J
    .locals 8
    .param p1, "sample"    # I

    .prologue
    const-wide/16 v6, -0x1

    .line 54
    if-gtz p1, :cond_0

    move-wide v4, v6

    .line 71
    :goto_0
    return-wide v4

    .line 57
    :cond_0
    const/4 v2, -0x1

    .line 58
    .local v2, "i":I
    const/4 v1, 0x0

    .line 59
    .local v1, "currentSampleCountTotal":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->size()I

    move-result v3

    .line 60
    .local v3, "size":I
    :cond_1
    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_2

    if-ge v1, p1, :cond_2

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    iget-object v4, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mSampleCount:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    .local v0, "currentSampleCount":I
    :goto_1
    if-lez v0, :cond_1

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 68
    .end local v0    # "currentSampleCount":I
    :cond_2
    if-ltz v2, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mSampleDuration:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 69
    iget-object v4, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mSampleDuration:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    goto :goto_0

    :cond_3
    move-wide v4, v6

    .line 71
    goto :goto_0
.end method

.method public getTotalDurationBeforeSample(I)J
    .locals 2
    .param p1, "sample"    # I

    .prologue
    .line 43
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 44
    const-wide/16 v0, 0x0

    .line 46
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mTimeStampCache:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public initTimeStamp()V
    .locals 8

    .prologue
    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, "seekingSample":I
    const-wide/16 v4, 0x0

    .line 17
    .local v4, "totalDurationBeforeSample":J
    :goto_0
    iget v3, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->nbSamples:I

    if-gt v2, v3, :cond_1

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->getDurationOfSample(I)J

    move-result-wide v0

    .line 20
    .local v0, "durationOfSample":J
    const-wide/16 v6, -0x1

    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    .line 21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "durationOfSample == -1"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 23
    :cond_0
    add-long/2addr v4, v0

    .line 24
    iget-object v3, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mTimeStampCache:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    .end local v0    # "durationOfSample":J
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/video/SampleToTimeVideo;->mSampleCount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
