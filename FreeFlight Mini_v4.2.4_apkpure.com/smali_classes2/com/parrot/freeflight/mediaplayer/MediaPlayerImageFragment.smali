.class public Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;
.super Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;
.source "MediaPlayerImageFragment.java"


# instance fields
.field private mDownloadFullImageTask:Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mImage:Landroid/widget/ImageView;

.field private mImageSet:Z

.field private mLoadingFailed:Landroid/widget/ImageView;

.field private mLoadingProgressBar:Landroid/widget/ProgressBar;

.field private final mMediaRequestListener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$1;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mMediaRequestListener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mDownloadFullImageTask:Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;)Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mDownloadFullImageTask:Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Lcom/parrot/freeflight/core/academy/MediaInfos;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->setImage(Lcom/parrot/freeflight/core/academy/MediaInfos;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->displayWaiting(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mMediaRequestListener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    return-object v0
.end method

.method private displayWaiting(Z)V
    .locals 4
    .param p1, "display"    # Z

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mLoadingFailed:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 114
    iget-boolean v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImageSet:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mLoadingFailed:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mLoadingFailed:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setImage(Lcom/parrot/freeflight/core/academy/MediaInfos;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "mediaInfos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 89
    if-eqz p2, :cond_1

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iput-boolean v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImageSet:Z

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->image:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImage:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iput-boolean v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImageSet:Z

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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
    const/4 v4, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040087

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0f0250

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImage:Landroid/widget/ImageView;

    .line 58
    const v2, 0x7f0f0251

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mLoadingFailed:Landroid/widget/ImageView;

    .line 59
    const v2, 0x7f0f024f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    .line 61
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v3, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget-object v3, v3, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/academy/MediaManager;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 63
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-direct {p0, v2, v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->setImage(Lcom/parrot/freeflight/core/academy/MediaInfos;Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-boolean v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImageSet:Z

    if-eqz v2, :cond_0

    .line 66
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->displayWaiting(Z)V

    .line 85
    :goto_0
    return-object v1

    .line 68
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->displayWaiting(Z)V

    .line 71
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerFragment;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mDownloadFullImageTask:Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mDownloadFullImageTask:Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mMediaRequestListener:Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->removeListener(Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mDownloadFullImageTask:Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    .line 105
    :cond_0
    return-void
.end method
