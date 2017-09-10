.class Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;
.super Ljava/util/TimerTask;
.source "ResumableHttpFileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationTask"
.end annotation


# instance fields
.field private final fileUploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

.field private final listener:Lcom/google/gdata/client/uploader/ProgressListener;

.field final synthetic this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;Lcom/google/gdata/client/uploader/ProgressListener;Ljava/util/Timer;)V
    .locals 0
    .param p2, "fileUploader"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
    .param p3, "listener"    # Lcom/google/gdata/client/uploader/ProgressListener;
    .param p4, "timer"    # Ljava/util/Timer;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;->this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 169
    iput-object p2, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;->fileUploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    .line 170
    iput-object p3, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;->listener:Lcom/google/gdata/client/uploader/ProgressListener;

    .line 171
    iput-object p4, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;->timer:Ljava/util/Timer;

    .line 172
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;->fileUploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getUploadState()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->IN_PROGRESS:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;->listener:Lcom/google/gdata/client/uploader/ProgressListener;

    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;->fileUploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-interface {v0, v1}, Lcom/google/gdata/client/uploader/ProgressListener;->progressChanged(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;)V

    .line 180
    return-void
.end method
