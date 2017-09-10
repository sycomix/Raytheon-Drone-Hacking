.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$1;
.super Ljava/lang/Object;
.source "MediaPlayerVideoFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoView$VideoListener;


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

.field final synthetic val$videoIndicator:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment;

    iput-object p2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$1;->val$videoIndicator:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$1;->val$videoIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    return-void
.end method

.method public onPlaying()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerVideoFragment$1;->val$videoIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    return-void
.end method
