.class public Lcom/google/gdata/data/youtube/PlaylistLinkEntry;
.super Lcom/google/gdata/data/youtube/FeedLinkEntry;
.source "PlaylistLinkEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#playlistLink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/youtube/FeedLinkEntry",
        "<",
        "Lcom/google/gdata/data/youtube/PlaylistLinkEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://gdata.youtube.com/schemas/2007/tags.cat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/PlaylistLinkEntry;->CATEGORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;-><init>()V

    .line 43
    const-string v0, "http://gdata.youtube.com/schemas/2007#playlistLink"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "base":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/youtube/FeedLinkEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 48
    const-string v0, "http://gdata.youtube.com/schemas/2007#playlistLink"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 89
    const-class v0, Lcom/google/gdata/data/youtube/PlaylistLinkEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 90
    return-void
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/PlaylistLinkEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtPlaylistId;

    .line 71
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
    .line 62
    const-class v0, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistLinkEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

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
    .line 79
    if-eqz p1, :cond_0

    .line 80
    new-instance v0, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtPlaylistId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistLinkEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistLinkEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setPrivate(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    new-instance v0, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YtPrivate;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistLinkEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtPrivate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/PlaylistLinkEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method
