.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$1;
.super Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
.source "MediaPlayerImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;
    .param p2, "ref"    # Ljava/lang/Object;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;)V
    .locals 2
    .param p1, "error"    # Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$002(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;)Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v0, v1, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Lcom/parrot/freeflight/core/academy/MediaInfos;Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$200(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Z)V

    .line 49
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$002(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;)Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    .line 35
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 39
    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 40
    .local v0, "mediaInfos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v1, v0, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Lcom/parrot/freeflight/core/academy/MediaInfos;Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$200(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Z)V

    goto :goto_0
.end method
