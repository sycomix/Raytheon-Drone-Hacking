.class public Lcom/google/gdata/util/ServiceUnavailableException;
.super Lcom/google/gdata/util/ServiceException;
.source "ServiceUnavailableException.java"


# instance fields
.field private retryTime:I


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/util/ServiceUnavailableException;->retryTime:I

    .line 57
    invoke-direct {p0}, Lcom/google/gdata/util/ServiceUnavailableException;->initResponseCode()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorDomain$ErrorCode;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/util/ServiceUnavailableException;->retryTime:I

    .line 63
    invoke-direct {p0}, Lcom/google/gdata/util/ServiceUnavailableException;->initResponseCode()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/util/ServiceUnavailableException;->retryTime:I

    .line 36
    invoke-direct {p0}, Lcom/google/gdata/util/ServiceUnavailableException;->initResponseCode()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/util/ServiceUnavailableException;->retryTime:I

    .line 41
    invoke-direct {p0}, Lcom/google/gdata/util/ServiceUnavailableException;->initResponseCode()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/util/ServiceUnavailableException;->retryTime:I

    .line 46
    invoke-direct {p0}, Lcom/google/gdata/util/ServiceUnavailableException;->initResponseCode()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "httpConn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/util/ServiceUnavailableException;->retryTime:I

    .line 52
    invoke-direct {p0}, Lcom/google/gdata/util/ServiceUnavailableException;->initResponseCode()V

    .line 53
    return-void
.end method

.method private initResponseCode()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x1f7

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/ServiceUnavailableException;->setHttpErrorCodeOverride(I)V

    .line 68
    return-void
.end method


# virtual methods
.method public getRetryTime()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/gdata/util/ServiceUnavailableException;->retryTime:I

    return v0
.end method

.method public setRetryTime(I)V
    .locals 0
    .param p1, "retryTime"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/google/gdata/util/ServiceUnavailableException;->retryTime:I

    .line 76
    return-void
.end method
