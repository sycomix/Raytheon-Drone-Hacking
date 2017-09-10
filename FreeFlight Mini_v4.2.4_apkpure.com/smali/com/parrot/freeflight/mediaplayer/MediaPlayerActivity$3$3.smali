.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$3;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->facebookShareManagerPermissionNotGranted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
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
    .line 137
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$3;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$3;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    iget-object v0, v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$302(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Z)Z

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3$3;->this$1:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    iget-object v0, v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    .line 142
    return-void
.end method
