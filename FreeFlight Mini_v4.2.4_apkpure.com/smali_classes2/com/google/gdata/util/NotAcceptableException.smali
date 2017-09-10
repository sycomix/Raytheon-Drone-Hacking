.class public Lcom/google/gdata/util/NotAcceptableException;
.super Lcom/google/gdata/util/ServiceException;
.source "NotAcceptableException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "Not Acceptable"

    invoke-direct {p0, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/google/gdata/util/NotAcceptableException;->initResponseCode()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 50
    invoke-direct {p0}, Lcom/google/gdata/util/NotAcceptableException;->initResponseCode()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorDomain$ErrorCode;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 56
    invoke-direct {p0}, Lcom/google/gdata/util/NotAcceptableException;->initResponseCode()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/google/gdata/util/NotAcceptableException;->initResponseCode()V

    .line 40
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
    .line 44
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    .line 45
    invoke-direct {p0}, Lcom/google/gdata/util/NotAcceptableException;->initResponseCode()V

    .line 46
    return-void
.end method

.method private initResponseCode()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x196

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/NotAcceptableException;->setHttpErrorCodeOverride(I)V

    .line 61
    return-void
.end method
