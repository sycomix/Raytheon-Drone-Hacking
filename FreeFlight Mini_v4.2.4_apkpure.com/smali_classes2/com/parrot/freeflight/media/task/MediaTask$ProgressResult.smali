.class public Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
.super Ljava/lang/Object;
.source "MediaTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/task/MediaTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;
    }
.end annotation


# instance fields
.field protected mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mProgress:F

.field protected state:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/armedia/ARMediaObject;F)V
    .locals 1
    .param p1, "object"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "prog"    # F

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 261
    sget-object v0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->NOT_STARTED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->state:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    .line 265
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 266
    iput p2, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->mProgress:F

    .line 267
    return-void
.end method


# virtual methods
.method public getError()Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    return-object v0
.end method

.method public getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->mMediaObject:Lcom/parrot/arsdk/armedia/ARMediaObject;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->mProgress:F

    return v0
.end method

.method public getState()Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->state:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    return-object v0
.end method

.method public setError(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V
    .locals 0
    .param p1, "e"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->mError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 284
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "prog"    # F

    .prologue
    .line 274
    iput p1, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->mProgress:F

    .line 275
    return-void
.end method

.method public setState(Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 292
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->state:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    .line 293
    return-void
.end method
