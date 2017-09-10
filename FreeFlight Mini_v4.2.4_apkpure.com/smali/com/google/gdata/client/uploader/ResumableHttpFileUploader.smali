.class public Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
.super Ljava/lang/Object;
.source "ResumableHttpFileUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;,
        Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;,
        Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;,
        Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;,
        Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;
    }
.end annotation


# static fields
.field public static DEFAULT_MAX_CHUNK_SIZE:J = 0x0L

.field public static final DEFAULT_PROGRESS_INTERVAL_MS:J = 0x64L

.field public static final METHOD_OVERRIDE:Ljava/lang/String; = "X-HTTP-Method-Override"


# instance fields
.field private final backoffPolicy:Lcom/google/gdata/client/uploader/BackoffPolicy;

.field private final chunkSize:J

.field private final data:Lcom/google/gdata/client/uploader/UploadData;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpRequestMethod:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

.field private numBytesUploaded:J

.field private final progressIntervalMillis:J

.field private final progressListener:Lcom/google/gdata/client/uploader/ProgressListener;

.field private progressNotifier:Ljava/util/Timer;

.field private uploadResultFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;",
            ">;"
        }
    .end annotation
.end field

.field private uploadState:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

.field private url:Ljava/net/URL;

.field private final urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->DEFAULT_MAX_CHUNK_SIZE:J

    return-void
.end method

.method constructor <init>(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)V
    .locals 8
    .param p1, "builder"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-wide v6, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->numBytesUploaded:J

    .line 192
    sget-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->NOT_STARTED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadState:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->headers:Ljava/util/Map;

    .line 446
    invoke-static {p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->access$200(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->url:Ljava/net/URL;

    .line 447
    invoke-static {p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->access$300(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Lcom/google/gdata/client/uploader/UploadData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->data:Lcom/google/gdata/client/uploader/UploadData;

    .line 448
    invoke-static {p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->access$400(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->executor:Ljava/util/concurrent/ExecutorService;

    .line 449
    invoke-static {p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->access$500(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    .line 450
    invoke-static {p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->access$600(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Lcom/google/gdata/client/uploader/ProgressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressListener:Lcom/google/gdata/client/uploader/ProgressListener;

    .line 451
    invoke-static {p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->access$700(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressIntervalMillis:J

    .line 452
    invoke-static {p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->access$800(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->chunkSize:J

    .line 453
    invoke-static {p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->access$900(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->httpRequestMethod:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    .line 454
    invoke-static {p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->access$1000(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)Lcom/google/gdata/client/uploader/BackoffPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->backoffPolicy:Lcom/google/gdata/client/uploader/BackoffPolicy;

    .line 457
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->url:Ljava/net/URL;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "The url must be non null and have a non-empty host and path."

    invoke-direct {p0, v0, v3}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->checkArgument(ZLjava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Must provide a non-null executor service."

    invoke-direct {p0, v0, v3}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->checkArgument(ZLjava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    if-eqz v0, :cond_3

    :goto_2
    const-string v0, "Factories must be non-null."

    invoke-direct {p0, v1, v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->checkArgument(ZLjava/lang/String;)V

    .line 470
    sget-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->POST:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->httpRequestMethod:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const-string v0, "X-HTTP-Method-Override"

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->PUT:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    invoke-virtual {v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 457
    goto :goto_0

    :cond_2
    move v0, v2

    .line 463
    goto :goto_1

    :cond_3
    move v1, v2

    .line 467
    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;J)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "progressListener"    # Lcom/google/gdata/client/uploader/ProgressListener;
    .param p5, "progressIntervalMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    invoke-direct {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setUrl(Ljava/net/URL;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setFile(Ljava/io/File;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setExecutorService(Ljava/util/concurrent/ExecutorService;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setProgressListener(Lcom/google/gdata/client/uploader/ProgressListener;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setProgressIntervalMillis(J)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;-><init>(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)V

    .line 408
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;JJ)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "progressListener"    # Lcom/google/gdata/client/uploader/ProgressListener;
    .param p5, "chunkSize"    # J
    .param p7, "progressIntervalMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    invoke-direct {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setUrl(Ljava/net/URL;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setFile(Ljava/io/File;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setExecutorService(Ljava/util/concurrent/ExecutorService;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setProgressListener(Lcom/google/gdata/client/uploader/ProgressListener;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setChunkSize(J)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;->setProgressIntervalMillis(J)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;-><init>(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$Builder;)V

    .line 436
    return-void
.end method

.method private checkArgument(ZLjava/lang/String;)V
    .locals 1
    .param p1, "condition"    # Z
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 717
    if-nez p1, :cond_0

    .line 718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_0
    return-void
.end method

.method private upload(Z)V
    .locals 7
    .param p1, "resume"    # Z

    .prologue
    .line 733
    sget-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->IN_PROGRESS:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V

    .line 734
    new-instance v6, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;

    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    invoke-direct {v6, v0, p0, p1}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;-><init>(Lcom/google/gdata/client/uploader/UrlConnectionFactory;Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;Z)V

    .line 737
    .local v6, "task":Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressListener:Lcom/google/gdata/client/uploader/ProgressListener;

    if-eqz v0, :cond_0

    .line 738
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressNotifier:Ljava/util/Timer;

    .line 739
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressNotifier:Ljava/util/Timer;

    new-instance v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;

    iget-object v2, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressListener:Lcom/google/gdata/client/uploader/ProgressListener;

    iget-object v3, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressNotifier:Ljava/util/Timer;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;-><init>(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;Lcom/google/gdata/client/uploader/ProgressListener;Ljava/util/Timer;)V

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressIntervalMillis:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadResultFuture:Ljava/util/concurrent/Future;

    .line 745
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized addNumBytesUploaded(J)V
    .locals 3
    .param p1, "numBytes"    # J

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->numBytesUploaded:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->numBytesUploaded:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBackoffPolicy()Lcom/google/gdata/client/uploader/BackoffPolicy;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->backoffPolicy:Lcom/google/gdata/client/uploader/BackoffPolicy;

    return-object v0
.end method

.method getChunkSize()J
    .locals 2

    .prologue
    .line 678
    iget-wide v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->chunkSize:J

    return-wide v0
.end method

.method public getData()Lcom/google/gdata/client/uploader/UploadData;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->data:Lcom/google/gdata/client/uploader/UploadData;

    return-object v0
.end method

.method getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpRequestMethod()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->httpRequestMethod:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    return-object v0
.end method

.method public declared-synchronized getNumBytesUploaded()J
    .locals 2

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->numBytesUploaded:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgress()D
    .locals 6

    .prologue
    .line 545
    iget-object v2, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->data:Lcom/google/gdata/client/uploader/UploadData;

    invoke-interface {v2}, Lcom/google/gdata/client/uploader/UploadData;->length()J

    move-result-wide v0

    .line 546
    .local v0, "fileLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 547
    iget-object v2, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadState:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    sget-object v3, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->COMPLETE:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v2, v3}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 549
    :goto_0
    return-wide v2

    .line 547
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getNumBytesUploaded()J

    move-result-wide v2

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public getResponse()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadResultFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadResultFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadResultFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 571
    :goto_0
    return-object v1

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {p0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V

    .line 571
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 565
    :catch_1
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {p0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "InterruptedException even though upload is done (should never get here)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized getUploadState()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;
    .locals 1

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadState:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->url:Ljava/net/URL;

    return-object v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadResultFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadResultFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPaused()Z
    .locals 2

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadState:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->PAUSED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 1

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->PAUSED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V

    .line 598
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressNotifier:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressNotifier:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :cond_0
    monitor-exit p0

    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadState:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->PAUSED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadState:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->NOT_STARTED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->upload(Z)V

    .line 615
    :cond_1
    return-void
.end method

.method sendCompletionNotification()V
    .locals 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressListener:Lcom/google/gdata/client/uploader/ProgressListener;

    if-eqz v0, :cond_0

    .line 687
    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;

    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressListener:Lcom/google/gdata/client/uploader/ProgressListener;

    iget-object v2, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->progressNotifier:Ljava/util/Timer;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;-><init>(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;Lcom/google/gdata/client/uploader/ProgressListener;Ljava/util/Timer;)V

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$NotificationTask;->run()V

    .line 689
    :cond_0
    return-void
.end method

.method public setHttpRequestMethod(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;)V
    .locals 2
    .param p1, "requestMethod"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->httpRequestMethod:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    .line 486
    sget-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->POST:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    invoke-virtual {v0, p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "X-HTTP-Method-Override"

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->PUT:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    invoke-virtual {v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 489
    :cond_0
    return-void
.end method

.method declared-synchronized setNumBytesUploaded(J)V
    .locals 1
    .param p1, "numBytes"    # J

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->numBytesUploaded:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    monitor-exit p0

    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V
    .locals 1
    .param p1, "state"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    .prologue
    .line 706
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadState:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    monitor-exit p0

    return-void

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setUrl(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->url:Ljava/net/URL;

    .line 670
    return-void
.end method

.method public start()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->upload(Z)V

    .line 625
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->uploadResultFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method
