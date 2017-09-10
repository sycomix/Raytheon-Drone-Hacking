.class public Lcom/google/gdata/data/youtube/YtPlaylistTitle;
.super Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;
.source "YtPlaylistTitle.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "playlistTitle"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "playlistTitle"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
