.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$2;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->facebookShareManagerAccountNameReceived(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

.field final synthetic val$accountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$2;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    iput-object p2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$2;->val$accountName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$2;->val$accountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$2;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    iget-object v0, v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$2;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    iget-object v1, v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$500(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$302(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Z)Z

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$2;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    iget-object v0, v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    .line 131
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$2;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    iget-object v0, v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$302(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Z)Z

    goto :goto_0
.end method
