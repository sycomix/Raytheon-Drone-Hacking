.class Lcom/parrot/freeflight/media/MediaCountCompat$1;
.super Ljava/lang/Object;
.source "MediaCountCompat.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/delegate/GetMediasTaskDelegate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/MediaCountCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/MediaCountCompat;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/MediaCountCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/MediaCountCompat;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/parrot/freeflight/media/MediaCountCompat$1;->this$0:Lcom/parrot/freeflight/media/MediaCountCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingMediasError(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V
    .locals 2
    .param p1, "error"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat$1;->this$0:Lcom/parrot/freeflight/media/MediaCountCompat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/MediaCountCompat;->access$002(Lcom/parrot/freeflight/media/MediaCountCompat;Lcom/parrot/freeflight/media/task/MediaTask;)Lcom/parrot/freeflight/media/task/MediaTask;

    .line 52
    return-void
.end method

.method public onMediasLoaded(I)V
    .locals 2
    .param p1, "mediaCount"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat$1;->this$0:Lcom/parrot/freeflight/media/MediaCountCompat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/MediaCountCompat;->access$002(Lcom/parrot/freeflight/media/MediaCountCompat;Lcom/parrot/freeflight/media/task/MediaTask;)Lcom/parrot/freeflight/media/task/MediaTask;

    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat$1;->this$0:Lcom/parrot/freeflight/media/MediaCountCompat;

    invoke-static {v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->access$100(Lcom/parrot/freeflight/media/MediaCountCompat;)Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat$1;->this$0:Lcom/parrot/freeflight/media/MediaCountCompat;

    invoke-static {v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->access$100(Lcom/parrot/freeflight/media/MediaCountCompat;)Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/media/MediaCountCompat$Listener;->onMediaListed(I)V

    .line 47
    :cond_0
    return-void
.end method
