.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public facebookShareManagerAccountNameReceived(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$400(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$2;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$2;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public facebookShareManagerIsSignedIn(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 106
    return-void
.end method

.method public facebookShareManagerPermissionNotGranted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$400(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$3;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public facebookShareManagerSignInFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$400(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$1;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public facebookShareManagerUploadingEnded(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$400(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$4;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method public facebookShareManagerUploadingFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$400(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$5;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method public facebookShareManagerUploadingStarted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 149
    return-void
.end method
