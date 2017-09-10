.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;
.super Ljava/lang/Object;
.source "MediaPlayerImageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$300(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    iget-object v1, v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    iget-object v2, v2, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget-object v2, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v3}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$300(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$300(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/freeflight/core/academy/MediaManager;->getTaskFor(Ljava/lang/String;II)Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$002(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;)Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$400(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->addListener(Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;)V

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->access$000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;)Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Lcom/parrot/freeflight/core/academy/MediaInfos;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment$2;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;

    iget-object v4, v4, Lcom/parrot/freeflight/mediaplayer/MediaPlayerImageFragment;->mMediaInfos:Lcom/parrot/freeflight/core/academy/MediaInfos;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    :cond_0
    return v5
.end method
