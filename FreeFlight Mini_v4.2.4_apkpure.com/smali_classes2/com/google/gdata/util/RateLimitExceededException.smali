.class public Lcom/google/gdata/util/RateLimitExceededException;
.super Lcom/google/gdata/util/ServiceException;
.source "RateLimitExceededException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->rateLimitExceeded:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {p0, v0}, Lcom/google/gdata/util/RateLimitExceededException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorContent;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorContent;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 56
    invoke-direct {p0}, Lcom/google/gdata/util/RateLimitExceededException;->initResponseCode()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorContent;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 61
    invoke-direct {p0}, Lcom/google/gdata/util/RateLimitExceededException;->initResponseCode()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->rateLimitExceeded:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withExtendedHelp(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/RateLimitExceededException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->rateLimitExceeded:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withExtendedHelp(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/gdata/util/RateLimitExceededException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->rateLimitExceeded:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/util/RateLimitExceededException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "httpConn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    .line 47
    invoke-direct {p0}, Lcom/google/gdata/util/RateLimitExceededException;->initResponseCode()V

    .line 48
    return-void
.end method

.method private initResponseCode()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x193

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/RateLimitExceededException;->setHttpErrorCodeOverride(I)V

    .line 66
    return-void
.end method
