.class final Lcom/google/gdata/client/uploader/BackoffPolicy$1;
.super Ljava/lang/Object;
.source "BackoffPolicy.java"

# interfaces
.implements Lcom/google/gdata/client/uploader/BackoffPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/uploader/BackoffPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final BACKOFF_DELAY_LIMIT_MS:J = 0xfa00L

.field private static final BACKOFF_FACTOR:J = 0x2L

.field private static final INITIAL_BACKOFF_MS:J = 0x1f4L


# instance fields
.field private backoffMs:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;->backoffMs:J

    return-void
.end method


# virtual methods
.method public getNextBackoffMs()J
    .locals 10

    .prologue
    const-wide/32 v4, 0xfa00

    .line 61
    iget-wide v2, p0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;->backoffMs:J

    .line 64
    .local v2, "returnValueMs":J
    iget-wide v6, p0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;->backoffMs:J

    const-wide/16 v8, 0x2

    mul-long v0, v6, v8

    .line 65
    .local v0, "nextBackoffMs":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    move-wide v0, v4

    .end local v0    # "nextBackoffMs":J
    :cond_0
    iput-wide v0, p0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;->backoffMs:J

    .line 68
    return-wide v2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;->backoffMs:J

    .line 73
    return-void
.end method
