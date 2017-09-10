.class public Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;
.super Lcom/parrot/freeflight/core/academy/job/AsyncJob;
.source "DownloadRunJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/job/AsyncJob",
        "<",
        "Lcom/parrot/freeflight/core/academy/RunInformation;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadRunJob"


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
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
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
    .line 25
    .local p1, "jobHolder":Lcom/parrot/freeflight/core/academy/job/IJobHolder;, "Lcom/parrot/freeflight/core/academy/job/IJobHolder<Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 26
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .line 27
    return-void
.end method


# virtual methods
.method protected cancelRequest(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->cancelRequest(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 54
    return-void
.end method

.method protected onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Lorg/json/JSONObject;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "error"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    if-eqz p2, :cond_0

    .line 60
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    invoke-direct {v1, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;-><init>(Lorg/json/JSONObject;)V

    .line 61
    .local v1, "runDetails":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->setRunDetails(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V

    .line 62
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunDetailFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/parrot/freeflight/core/academy/FileUtils;->jsonObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "runDetails":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 68
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
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
    .line 18
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Lorg/json/JSONObject;Ljava/lang/Exception;)V

    return-void
.end method

.method protected process(Lcom/parrot/freeflight/core/academy/RunInformation;)I
    .locals 4
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->mAcademyManager:Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunId()I

    move-result v2

    new-instance v3, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob$1;

    invoke-direct {v3, p0, p1}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob$1;-><init>(Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    invoke-virtual {v1, v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyManager;->asyncAuthGetRunJsonDetails(ILcom/parrot/arsdk/aracademy/ARAcademyAuthGetRunJsonDetailsListener;)I
    :try_end_0
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 48
    :goto_0
    return v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 48
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
    .line 18
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/job/DownloadRunJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)I

    move-result v0

    return v0
.end method
