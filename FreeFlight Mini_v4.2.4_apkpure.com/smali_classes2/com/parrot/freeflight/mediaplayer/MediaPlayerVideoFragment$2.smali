.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;
.super Ljava/lang/Object;
.source "MediaPlayerVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

.field final synthetic val$currentPosition:I

.field final synthetic val$isPlaying:Z

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$videoIndicator:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    iput-object p2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->val$videoIndicator:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->val$progressBar:Landroid/widget/ProgressBar;

    iput p4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->val$currentPosition:I

    iput-boolean p5, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->val$isPlaying:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->access$002(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;Z)Z

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->val$videoIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->val$currentPosition:I

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->seekTo(I)V

    .line 67
    iget-boolean v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->val$isPlaying:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->start()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->pause()V

    goto :goto_0
.end method
