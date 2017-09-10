.class public Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
.super Ljava/lang/Object;
.source "ResumableHttpFileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backoffPolicy:Lcom/google/gdata/client/uploader/BackoffPolicy;

.field private chunkSize:J

.field private data:Lcom/google/gdata/client/uploader/UploadData;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private progressIntervalMillis:J

.field private progressListener:Lcom/google/gdata/client/uploader/ProgressListener;

.field private requestMethod:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

.field private url:Ljava/net/URL;

.field private urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    sget-object v0, Lcom/google/gdata/client/uploader/UrlConnectionFactory;->DEFAULT:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    .line 267
    sget-wide v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->DEFAULT_MAX_CHUNK_SIZE:J

    iput-wide v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->chunkSize:J

    .line 268
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->progressIntervalMillis:J

    .line 269
    sget-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->PUT:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->requestMethod:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    .line 270
    sget-object v0, Lcom/google/gdata/client/uploader/BackoffPolicy;->DEFAULT:Lcom/google/gdata/client/uploader/BackoffPolicy;

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->backoffPolicy:Lcom/google/gdata/client/uploader/BackoffPolicy;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Lcom/google/gdata/client/uploader/BackoffPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->backoffPolicy:Lcom/google/gdata/client/uploader/BackoffPolicy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->url:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Lcom/google/gdata/client/uploader/UploadData;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->data:Lcom/google/gdata/client/uploader/UploadData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Lcom/google/gdata/client/uploader/UrlConnectionFactory;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Lcom/google/gdata/client/uploader/ProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->progressListener:Lcom/google/gdata/client/uploader/ProgressListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->progressIntervalMillis:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->chunkSize:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->requestMethod:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-direct {v0, p0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;-><init>(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)V

    return-object v0
.end method

.method public setBackoffPolicy(Lcom/google/gdata/client/uploader/BackoffPolicy;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .locals 0
    .param p1, "backoffPolicy"    # Lcom/google/gdata/client/uploader/BackoffPolicy;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->backoffPolicy:Lcom/google/gdata/client/uploader/BackoffPolicy;

    .line 370
    return-object p0
.end method

.method public setChunkSize(J)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .locals 1
    .param p1, "chunkSize"    # J

    .prologue
    .line 338
    iput-wide p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->chunkSize:J

    .line 339
    return-object p0
.end method

.method public setData(Lcom/google/gdata/client/uploader/UploadData;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .locals 0
    .param p1, "data"    # Lcom/google/gdata/client/uploader/UploadData;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->data:Lcom/google/gdata/client/uploader/UploadData;

    .line 301
    return-object p0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->executor:Ljava/util/concurrent/ExecutorService;

    .line 310
    return-object p0
.end method

.method public setFile(Ljava/io/File;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The file must exist and be readable."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    new-instance v0, Lcom/google/gdata/client/uploader/FileUploadData;

    invoke-direct {v0, p1}, Lcom/google/gdata/client/uploader/FileUploadData;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->data:Lcom/google/gdata/client/uploader/UploadData;

    .line 292
    return-object p0
.end method

.method public setProgressIntervalMillis(J)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .locals 1
    .param p1, "progressIntervalMillis"    # J

    .prologue
    .line 348
    iput-wide p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->progressIntervalMillis:J

    .line 349
    return-object p0
.end method

.method public setProgressListener(Lcom/google/gdata/client/uploader/ProgressListener;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .locals 0
    .param p1, "progressListener"    # Lcom/google/gdata/client/uploader/ProgressListener;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->progressListener:Lcom/google/gdata/client/uploader/ProgressListener;

    .line 329
    return-object p0
.end method

.method public setRequestMethod(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .locals 0
    .param p1, "requestMethod"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->requestMethod:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    .line 360
    return-object p0
.end method

.method public setUrl(Ljava/net/URL;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->url:Ljava/net/URL;

    .line 278
    return-object p0
.end method

.method public setUrlConnectionFactory(Lcom/google/gdata/client/uploader/UrlConnectionFactory;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .locals 0
    .param p1, "urlConnectionFactory"    # Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    .line 320
    return-object p0
.end method
