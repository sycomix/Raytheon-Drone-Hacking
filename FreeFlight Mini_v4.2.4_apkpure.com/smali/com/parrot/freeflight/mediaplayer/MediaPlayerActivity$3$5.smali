.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$5;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->facebookShareManagerUploadingFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$5;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$5;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    iget-object v0, v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$302(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Z)Z

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$5;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    iget-object v0, v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    .line 169
    return-void
.end method
