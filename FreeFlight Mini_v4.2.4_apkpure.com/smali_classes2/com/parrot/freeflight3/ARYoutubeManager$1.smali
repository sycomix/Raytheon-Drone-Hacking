.class Lcom/parrot/freeflight3/ARYoutubeManager$1;
.super Ljava/lang/Object;
.source "ARYoutubeManager.java"

# interfaces
.implements Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARYoutubeManager;->uploadVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARYoutubeManager;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARYoutubeManager;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/parrot/freeflight3/ARYoutubeManager$1;->this$0:Lcom/parrot/freeflight3/ARYoutubeManager;

    iput-object p2, p0, Lcom/parrot/freeflight3/ARYoutubeManager$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V
    .locals 6
    .param p1, "uploader"    # Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight3/ARYoutubeManager$1;->this$0:Lcom/parrot/freeflight3/ARYoutubeManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARYoutubeManager;->access$000(Lcom/parrot/freeflight3/ARYoutubeManager;)Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight3/ARYoutubeManager$1;->this$0:Lcom/parrot/freeflight3/ARYoutubeManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/ARYoutubeManager;->access$000(Lcom/parrot/freeflight3/ARYoutubeManager;)Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/ARYoutubeManager$1;->this$0:Lcom/parrot/freeflight3/ARYoutubeManager;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARYoutubeManager$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getProgress()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerUploadInProgress(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;F)V

    .line 216
    :cond_0
    return-void
.end method
