.class public Lcom/google/gdata/util/NoLongerAvailableException;
.super Lcom/google/gdata/util/ServiceException;
.source "NoLongerAvailableException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "No longer available"

    invoke-direct {p0, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/google/gdata/util/NoLongerAvailableException;->initResponseCode()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 57
    invoke-direct {p0}, Lcom/google/gdata/util/NoLongerAvailableException;->initResponseCode()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorDomain$ErrorCode;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 63
    invoke-direct {p0}, Lcom/google/gdata/util/NoLongerAvailableException;->initResponseCode()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/google/gdata/util/NoLongerAvailableException;->initResponseCode()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-direct {p0}, Lcom/google/gdata/util/NoLongerAvailableException;->initResponseCode()V

    .line 47
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
    .line 51
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    .line 52
    invoke-direct {p0}, Lcom/google/gdata/util/NoLongerAvailableException;->initResponseCode()V

    .line 53
    return-void
.end method

.method private initResponseCode()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x19a

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/NoLongerAvailableException;->setHttpErrorCodeOverride(I)V

    .line 69
    return-void
.end method
