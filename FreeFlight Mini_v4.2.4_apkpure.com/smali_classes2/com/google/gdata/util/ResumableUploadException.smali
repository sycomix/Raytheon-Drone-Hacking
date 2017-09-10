.class public Lcom/google/gdata/util/ResumableUploadException;
.super Lcom/google/gdata/util/ServiceException;
.source "ResumableUploadException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
