.class public Lcom/google/gdata/data/youtube/YtPlaylistId;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtPlaylistId.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "playlistId"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# instance fields
.field private playlistId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtPlaylistId;->playlistId:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtPlaylistId;->playlistId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtPlaylistId;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 63
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtPlaylistId;->playlistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setPlaylistId(Ljava/lang/String;)V
    .locals 0
    .param p1, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtPlaylistId;->playlistId:Ljava/lang/String;

    .line 58
    return-void
.end method