.class public interface abstract Lcom/google/gdata/client/uploader/BackoffPolicy;
.super Ljava/lang/Object;
.source "BackoffPolicy.java"


# static fields
.field public static final DEFAULT:Lcom/google/gdata/client/uploader/BackoffPolicy;

.field public static final STOP:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;

    invoke-direct {v0}, Lcom/google/gdata/client/uploader/BackoffPolicy$1;-><init>()V

    sput-object v0, Lcom/google/gdata/client/uploader/BackoffPolicy;->DEFAULT:Lcom/google/gdata/client/uploader/BackoffPolicy;

    return-void
.end method


# virtual methods
.method public abstract getNextBackoffMs()J
.end method

.method public abstract reset()V
.end method
