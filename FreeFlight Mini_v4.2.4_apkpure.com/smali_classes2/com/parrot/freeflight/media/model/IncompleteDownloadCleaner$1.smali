.class final Lcom/parrot/freeflight/media/model/IncompleteDownloadCleaner$1;
.super Ljava/lang/Object;
.source "IncompleteDownloadCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/model/IncompleteDownloadCleaner;->cleanAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/parrot/freeflight/media/model/IncompleteDownloadCleaner;->clean()V

    .line 34
    return-void
.end method
