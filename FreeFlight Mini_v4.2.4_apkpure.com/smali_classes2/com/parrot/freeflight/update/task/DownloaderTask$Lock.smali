.class Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;
.super Ljava/lang/Object;
.source "DownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/DownloaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lock"
.end annotation


# instance fields
.field finished:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;->finished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/update/task/DownloaderTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$1;

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$Lock;-><init>()V

    return-void
.end method
