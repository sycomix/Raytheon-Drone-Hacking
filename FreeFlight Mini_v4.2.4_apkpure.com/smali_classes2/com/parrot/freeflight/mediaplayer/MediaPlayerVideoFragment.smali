.class public Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;
.super Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;
.source "MediaPlayerVideoFragment.java"


# static fields
.field private static final CURRENT_POSITION:Ljava/lang/String; = "Current Position"

.field private static final IS_PLAYING:Ljava/lang/String; = "Is Playing"


# instance fields
.field private mReady:Z

.field private mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mReady:Z

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040089

    const/4 v8, 0x0

    invoke-virtual {v0, v1, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 30
    .local v7, "rootView":Landroid/view/View;
    if-eqz p3, :cond_0

    .line 31
    const-string v0, "Current Position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 32
    .local v4, "currentPosition":I
    const-string v0, "Is Playing"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 38
    .local v5, "isPlaying":Z
    :goto_0
    const v0, 0x7f0f0255

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 39
    .local v2, "videoIndicator":Landroid/widget/ImageView;
    const v0, 0x7f0f024f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 41
    .local v3, "progressBar":Landroid/widget/ProgressBar;
    const v0, 0x7f0f0254

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    .line 42
    new-instance v6, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 43
    .local v6, "mediaController":Landroid/widget/MediaController;
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    invoke-virtual {v6, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$1;

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$1;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->setVideoListener(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v8, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    new-instance v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    invoke-virtual {v8, v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$3;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$4;

    invoke-direct {v1, p0, v3}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$4;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget-object v1, v1, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$5;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-object v7

    .line 34
    .end local v2    # "videoIndicator":Landroid/widget/ImageView;
    .end local v3    # "progressBar":Landroid/widget/ProgressBar;
    .end local v4    # "currentPosition":I
    .end local v5    # "isPlaying":Z
    .end local v6    # "mediaController":Landroid/widget/MediaController;
    :cond_0
    const/4 v4, 0x0

    .line 35
    .restart local v4    # "currentPosition":I
    const/4 v5, 0x0

    .restart local v5    # "isPlaying":Z
    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "Current Position"

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v0, "Is Playing"

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->mVideoView:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->isPlaying()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    return-void
.end method
