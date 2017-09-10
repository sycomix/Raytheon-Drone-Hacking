.class public Lcom/google/gdata/util/ServiceConfigurationException;
.super Lcom/google/gdata/util/ServiceException;
.source "ServiceConfigurationException.java"


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorDomain$ErrorCode;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method
