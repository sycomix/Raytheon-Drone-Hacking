.class public Lcom/google/gdata/data/youtube/PlaylistFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "PlaylistFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#playlist"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/youtube/PlaylistFeed;",
        "Lcom/google/gdata/data/youtube/PlaylistEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://gdata.youtube.com/schemas/2007/tags.cat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/PlaylistFeed;->CATEGORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/gdata/data/youtube/PlaylistEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 41
    const-string v0, "http://gdata.youtube.com/schemas/2007#playlist"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V

    .line 42
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
    .line 45
    .local p1, "base":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    const-class v0, Lcom/google/gdata/data/youtube/PlaylistEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 46
    const-string v0, "http://gdata.youtube.com/schemas/2007#playlist"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 52
    const-class v0, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareFeedExtension(Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareFeedExtension(Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/google/gdata/data/youtube/PlaylistFeed;

    const-class v1, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 55
    new-instance v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 56
    invoke-static {p1}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 57
    return-void
.end method

.method public getMediaGroup()Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    return-object v0
.end method

.method public getOrCreateMediaGroup()Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/PlaylistFeed;->getMediaGroup()Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    move-result-object v0

    .line 100
    .local v0, "group":Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    .end local v0    # "group":Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup;-><init>()V

    .line 102
    .restart local v0    # "group":Lcom/google/gdata/data/youtube/YouTubeMediaGroup;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 104
    :cond_0
    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    const-class v1, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/PlaylistFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtPlaylistId;

    .line 65
    .local v0, "playlistId":Lcom/google/gdata/data/youtube/YtPlaylistId;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtPlaylistId;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPlaylistId(Ljava/lang/String;)V
    .locals 1
    .param p1, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtPlaylistId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistFeed;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistFeed;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setPrivate(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    new-instance v0, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YtPrivate;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistFeed;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method
