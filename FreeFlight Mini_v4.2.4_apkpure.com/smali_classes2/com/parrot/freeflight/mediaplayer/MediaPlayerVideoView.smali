.class public Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;
.super Landroid/widget/VideoView;
.source "MediaPlayerVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;->onPaused()V

    .line 42
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/VideoView;->resume()V

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;->onPlaying()V

    .line 58
    :cond_0
    return-void
.end method

.method public setVideoListener(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    .line 26
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;->onPlaying()V

    .line 34
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;->onPaused()V

    .line 66
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/VideoView;->suspend()V

    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->mListener:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;->onPaused()V

    .line 50
    :cond_0
    return-void
.end method
