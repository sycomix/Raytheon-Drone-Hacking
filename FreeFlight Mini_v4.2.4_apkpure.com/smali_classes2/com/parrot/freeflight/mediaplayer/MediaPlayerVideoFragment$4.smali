.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$4;
.super Ljava/lang/Object;
.source "MediaPlayerVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$4;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    iput-object p2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$4;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$4;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    const/4 v0, 0x0

    return v0
.end method
