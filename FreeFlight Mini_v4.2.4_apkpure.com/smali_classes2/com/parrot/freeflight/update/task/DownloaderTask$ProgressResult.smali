.class public Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;
.super Ljava/lang/Object;
.source "DownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/DownloaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
    }
.end annotation


# instance fields
.field protected availableUpdates:[Lcom/parrot/freeflight/update/task/AvailableUpdate;

.field protected downloadedProducts:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field protected mAlreadyDownloaded:Z

.field protected mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mProgress:F

.field protected product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected state:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected version:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    sget-object v0, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 500
    sget-object v0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;->NOT_STARTED:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    .line 504
    iput p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mProgress:F

    .line 505
    return-void
.end method


# virtual methods
.method public getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mProgress:F

    return v0
.end method

.method public getState()Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    return-object v0
.end method

.method public setError(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 0
    .param p1, "e"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 521
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 522
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 512
    iput p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->mProgress:F

    .line 513
    return-void
.end method

.method public setState(Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 530
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/DownloaderTask$ProgressResult$State;

    .line 531
    return-void
.end method
