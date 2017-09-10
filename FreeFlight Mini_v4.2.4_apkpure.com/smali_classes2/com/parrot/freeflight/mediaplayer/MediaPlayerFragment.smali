.class public Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;
.super Landroid/support/v4/app/Fragment;
.source "MediaPlayerFragment.java"


# static fields
.field public static final MEDIA_INFO_ARG:Ljava/lang/String; = "MediaInfoArg"


# instance fields
.field protected mMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

.field protected final mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 41
    return-void
.end method

.method public static newInstance(Lcom/parrot/freeflight/core/academy/MediaInfos;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p0, "mediaInfo"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 22
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    if-eqz v2, :cond_1

    .line 23
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/academy/MediaInfos;->isLocal:Z

    if-eqz v2, :cond_0

    .line 24
    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;-><init>()V

    .line 32
    .local v1, "mediaFragment":Landroid/support/v4/app/Fragment;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "MediaInfoArg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1

    .line 26
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "mediaFragment":Landroid/support/v4/app/Fragment;
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;-><init>()V

    .restart local v1    # "mediaFragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 29
    .end local v1    # "mediaFragment":Landroid/support/v4/app/Fragment;
    :cond_1
    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;-><init>()V

    .restart local v1    # "mediaFragment":Landroid/support/v4/app/Fragment;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MediaInfoArg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;->mMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 47
    return-void
.end method
