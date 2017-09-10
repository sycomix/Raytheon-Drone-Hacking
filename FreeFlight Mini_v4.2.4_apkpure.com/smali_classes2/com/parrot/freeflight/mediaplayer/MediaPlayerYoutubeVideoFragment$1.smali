.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment$1;
.super Ljava/lang/Object;
.source "MediaPlayerYoutubeVideoFragment.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 3
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "youTubeInitializationResult"    # Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .prologue
    .line 31
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->isUserRecoverableError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {p2, v0, v1}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->getErrorDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 41
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801a0

    .line 35
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080602

    .line 36
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803a8

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 2
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "youTubePlayer"    # Lcom/google/android/youtube/player/YouTubePlayer;
    .param p3, "wasRestored"    # Z

    .prologue
    .line 24
    if-nez p3, :cond_0

    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->access$000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;)Lcom/parrot/freeflight/core/academy/MediaInfos;

    move-result-object v1

    iget-object v1, v1, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerYoutubeVideoFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->cueVideo(Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method
