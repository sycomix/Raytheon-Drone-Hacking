.class public Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;
.super Lcom/parrot/freeflight/core/academy/job/AsyncJob;
.source "UpdateGradeJob.java"


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


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/arsdk/aracademy/ARAcademyManager;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/core/academy/job/IJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jobExecutor"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "academyManager"    # Lcom/parrot/arsdk/aracademy/ARAcademyManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/academy/job/IJobHolder",
            "<",
            "Lcom/parrot/freeflight/core/academy/RunInformation;",
            ">;",
            "Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;",
            "Lcom/parrot/arsdk/aracademy/ARAcademyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "jobHolder":Lcom/parrot/freeflight/core/academy/job/IJobHolder;, "Lcom/parrot/freeflight/core/academy/job/IJobHolder<Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 19
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .line 20
    return-void
.end method


# virtual methods
.method protected cancelRequest(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->cancelRequest(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 51
    return-void
.end method

.method protected onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Void;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "job"    # Lcom/parrot/freeflight/core/academy/RunInformation;
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
    .line 55
    if-nez p3, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->gradeUpdated()V

    .line 58
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 59
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Void;Ljava/lang/Exception;)V

    return-void
.end method

.method protected process(Lcom/parrot/freeflight/core/academy/RunInformation;)I
    .locals 5
    .param p1, "job"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;

    invoke-direct {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;-><init>()V

    .line 25
    .local v1, "runGradeVisible":Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->setVisible(Z)V

    .line 26
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;->setGrade(I)V

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunId()I

    move-result v3

    new-instance v4, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;

    invoke-direct {v4, p0, p1}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;-><init>(Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthPostRunsGradeVisible(ILcom/parrot/arsdk/aracademy/ARAcademyRunGradeVisible;Lcom/parrot/arsdk/aracademy/ARAcademyAuthPostRunsGradeVisibleListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 45
    :goto_0
    return v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 45
    const/4 v2, -0x1

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

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)I

    move-result v0

    return v0
.end method
