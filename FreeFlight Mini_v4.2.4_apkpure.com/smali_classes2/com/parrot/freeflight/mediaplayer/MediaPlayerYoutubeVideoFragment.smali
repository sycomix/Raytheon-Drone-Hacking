.class public Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;
.super Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
.source "MediaPlayerYoutubeVideoFragment.java"


# static fields
.field private static final RECOVERY_DIALOG_REQUEST:I = 0x15

.field private static final YOUTUBE_ID_INDICATOR:Ljava/lang/String; = "?v="


# instance fields
.field private mMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

.field private final mOnInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;-><init>()V

    .line 20
    new-instance v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment$1;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->mOnInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;)Lcom/parrot/freeflight/core/academy/MediaInfos;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->mMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->extractVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    const-string v1, "?v="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 65
    .end local p1    # "url":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "url":Ljava/lang/String;
    :cond_0
    const-string v1, "?v="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    .line 55
    const v0, 0x7f0806b7

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->mOnInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MediaInfoArg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->mMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 48
    const v0, 0x7f0806b7

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->mOnInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 49
    return-void
.end method
