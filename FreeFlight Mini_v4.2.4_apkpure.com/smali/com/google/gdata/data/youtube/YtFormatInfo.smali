.class public Lcom/google/gdata/data/youtube/YtFormatInfo;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtFormatInfo.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "formatInfo"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# static fields
.field private static final DROP_FRAME:Ljava/lang/String; = "dropFrame"

.field private static final FORMAT:Ljava/lang/String; = "format"

.field private static final FRAME_RATE:Ljava/lang/String; = "frameRate"

.field private static final TIME_OFFSET:Ljava/lang/String; = "timeOffset"


# instance fields
.field private dropFrame:Z

.field private format:Ljava/lang/String;

.field private frameRate:Ljava/lang/String;

.field private timeOffset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->dropFrame:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "frameRate"    # Ljava/lang/String;
    .param p3, "timeOffset"    # Ljava/lang/String;
    .param p4, "dropFrame"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->format:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->frameRate:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->timeOffset:Ljava/lang/String;

    .line 65
    iput-boolean p4, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->dropFrame:Z

    .line 66
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
    const/4 v1, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 131
    const-string v0, "format"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->format:Ljava/lang/String;

    .line 132
    const-string v0, "frameRate"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->frameRate:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "timeOffset"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->timeOffset:Ljava/lang/String;

    .line 134
    const-string v0, "dropFrame"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->dropFrame:Z

    .line 135
    return-void
.end method

.method public getDropFrame()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->dropFrame:Z

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->frameRate:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->timeOffset:Ljava/lang/String;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 140
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->format:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "format"

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->format:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->frameRate:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 145
    const-string v0, "frameRate"

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->frameRate:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->timeOffset:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 149
    const-string/jumbo v0, "timeOffset"

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->timeOffset:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_2
    iget-boolean v0, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->dropFrame:Z

    if-eqz v0, :cond_3

    .line 153
    const-string v0, "dropFrame"

    iget-boolean v1, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->dropFrame:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Z)V

    .line 156
    :cond_3
    return-void
.end method

.method public setDropFrame(Z)V
    .locals 0
    .param p1, "dropFrame"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->dropFrame:Z

    .line 125
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->format:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setFrameRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "frameRate"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->frameRate:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTimeOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeOffset"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtFormatInfo;->timeOffset:Ljava/lang/String;

    .line 111
    return-void
.end method
