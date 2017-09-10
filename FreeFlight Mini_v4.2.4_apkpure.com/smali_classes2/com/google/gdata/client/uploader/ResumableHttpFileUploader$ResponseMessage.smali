.class public Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;
.super Ljava/lang/Object;
.source "ResumableHttpFileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseMessage"
.end annotation


# instance fields
.field private final contentLength:I

.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 0
    .param p1, "contentLength"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->contentLength:I

    .line 67
    iput-object p2, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->inputStream:Ljava/io/InputStream;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    .prologue
    .line 61
    iget v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->contentLength:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->contentLength:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public receiveMessage(J)Ljava/lang/String;
    .locals 3
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;

    invoke-direct {v1, p0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;-><init>(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
