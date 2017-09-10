.class public Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;
.super Lcom/parrot/freeflight/core/academy/job/AsyncJob;
.source "DeleteRunJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/job/AsyncJob",
        "<",
        "Lcom/parrot/freeflight/core/academy/RunInformation;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/arsdk/aracademy/ARAcademyManager;)V
    .locals 0
    .param p1, "jobHolder"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "academyManager"    # Lcom/parrot/arsdk/aracademy/ARAcademyManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 21
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .line 22
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 23
    return-void
.end method


# virtual methods
.method protected cancelRequest(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->cancelRequest(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 54
    return-void
.end method

.method protected onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Void;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Ljava/lang/Void;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "error"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    if-nez p3, :cond_0

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getCollection()Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->onDeleteSuccess(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 48
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 49
    return-void
.end method

.method protected bridge synthetic onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Void;Ljava/lang/Exception;)V

    return-void
.end method

.method protected process(Lcom/parrot/freeflight/core/academy/RunInformation;)I
    .locals 5
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunId()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v3

    new-instance v4, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;

    invoke-direct {v4, p0, p1}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;-><init>(Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthDeleteRun(ILcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyAuthDeleteRunListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 40
    :goto_0
    return v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 40
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected bridge synthetic process(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)I

    move-result v0

    return v0
.end method
