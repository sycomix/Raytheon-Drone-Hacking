.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$5;
.super Ljava/lang/Object;
.source "MediaPlayerVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$5;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$5;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->access$000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$5;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$5;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->pause()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$5;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView;->start()V

    goto :goto_0
.end method
