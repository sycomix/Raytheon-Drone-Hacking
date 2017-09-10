.class Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;
.super Ljava/lang/Exception;
.source "ResumableHttpUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;


# direct methods
.method constructor <init>(Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;->this$0:Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
