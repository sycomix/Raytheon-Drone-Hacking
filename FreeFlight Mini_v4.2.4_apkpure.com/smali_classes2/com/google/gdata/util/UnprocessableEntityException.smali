.class public Lcom/google/gdata/util/UnprocessableEntityException;
.super Lcom/google/gdata/util/ServiceException;
.source "UnprocessableEntityException.java"


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/ErrorContent;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorContent;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 75
    invoke-direct {p0}, Lcom/google/gdata/util/UnprocessableEntityException;->initResponseCode()V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorContent;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 84
    invoke-direct {p0}, Lcom/google/gdata/util/UnprocessableEntityException;->initResponseCode()V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/google/gdata/util/UnprocessableEntityException;->initResponseCode()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    invoke-direct {p0}, Lcom/google/gdata/util/UnprocessableEntityException;->initResponseCode()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    invoke-direct {p0}, Lcom/google/gdata/util/UnprocessableEntityException;->initResponseCode()V

    .line 58
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
    .line 66
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    .line 67
    invoke-direct {p0}, Lcom/google/gdata/util/UnprocessableEntityException;->initResponseCode()V

    .line 68
    return-void
.end method

.method private initResponseCode()V
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x1a6

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/UnprocessableEntityException;->setHttpErrorCodeOverride(I)V

    .line 89
    return-void
.end method
