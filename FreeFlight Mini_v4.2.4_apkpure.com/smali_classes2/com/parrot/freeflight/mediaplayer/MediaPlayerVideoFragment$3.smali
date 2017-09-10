.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$3;
.super Ljava/lang/Object;
.source "MediaPlayerVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->seekTo(I)V

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->pause()V

    .line 80
    return-void
.end method
