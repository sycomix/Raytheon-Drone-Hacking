.class public Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;
.super Lcom/parrot/freeflight/core/academy/job/SyncJob;
.source "DetectAddressJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/job/SyncJob",
        "<",
        "Lcom/parrot/freeflight/core/academy/RunInformation;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DetectAddressJob"


# instance fields
.field private final mGeoCoder:Landroid/location/Geocoder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/core/academy/job/IJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jobExecutor"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "workExecutor"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
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
            "Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "jobHolder":Lcom/parrot/freeflight/core/academy/job/IJobHolder;, "Lcom/parrot/freeflight/core/academy/job/IJobHolder<Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/SyncJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 24
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->mGeoCoder:Landroid/location/Geocoder;

    .line 25
    return-void
.end method


# virtual methods
.method protected onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "error"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/parrot/freeflight/core/academy/RunInformation;->setAddress(Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 48
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
    .line 15
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected process(Lcom/parrot/freeflight/core/academy/RunInformation;)Ljava/lang/String;
    .locals 11
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 30
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/DetectAddressJob;->mGeoCoder:Landroid/location/Geocoder;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLongitude()D

    move-result-wide v4

    const/4 v6, 0x4

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 31
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 34
    .local v8, "i":I
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    .line 35
    .local v7, "firstAddress":Landroid/location/Address;
    :goto_0
    invoke-virtual {v7, v8}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1, v8}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 41
    .end local v7    # "firstAddress":Landroid/location/Address;
    .end local v8    # "i":I
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
