.class public Lcom/google/gdata/util/InvalidEntryException;
.super Lcom/google/gdata/util/ServiceException;
.source "InvalidEntryException.java"


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/ErrorContent;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorContent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 54
    invoke-direct {p0}, Lcom/google/gdata/util/InvalidEntryException;->initResponseCode()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorContent;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 59
    invoke-direct {p0}, Lcom/google/gdata/util/InvalidEntryException;->initResponseCode()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/google/gdata/util/InvalidEntryException;->initResponseCode()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    invoke-direct {p0}, Lcom/google/gdata/util/InvalidEntryException;->initResponseCode()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    invoke-direct {p0}, Lcom/google/gdata/util/InvalidEntryException;->initResponseCode()V

    .line 45
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
    .line 48
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    .line 49
    invoke-direct {p0}, Lcom/google/gdata/util/InvalidEntryException;->initResponseCode()V

    .line 50
    return-void
.end method

.method private initResponseCode()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/InvalidEntryException;->setHttpErrorCodeOverride(I)V

    .line 64
    return-void
.end method
