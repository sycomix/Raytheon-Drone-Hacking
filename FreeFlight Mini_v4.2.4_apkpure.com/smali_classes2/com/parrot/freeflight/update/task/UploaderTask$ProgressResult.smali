.class public Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;
.super Ljava/lang/Object;
.source "UploaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/UploaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;
    }
.end annotation


# instance fields
.field protected mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mProgress:F

.field protected state:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    sget-object v0, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 323
    sget-object v0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;->NOT_STARTED:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    .line 327
    iput p1, p0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->mProgress:F

    .line 328
    return-void
.end method


# virtual methods
.method public getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->mProgress:F

    return v0
.end method

.method public getState()Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    return-object v0
.end method

.method public setError(Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;)V
    .locals 0
    .param p1, "e"    # Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 344
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->mError:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 345
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 335
    iput p1, p0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->mProgress:F

    .line 336
    return-void
.end method

.method public setState(Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;->state:Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult$State;

    .line 354
    return-void
.end method
