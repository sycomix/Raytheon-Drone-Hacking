.class public Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyFlightsDetailsFragment.java"


# instance fields
.field private mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRun:Lcom/parrot/freeflight/core/academy/RunInformation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 20
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 19
    return-void
.end method

.method private updateRunGrade(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "runUuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grade"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->updateRunGrade(Ljava/lang/String;IZ)V

    .line 77
    return-void
.end method


# virtual methods
.method protected getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    return-object v0
.end method

.method protected getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBatteryUsed()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->getBattery()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRunDetails()Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunDetail()Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 25
    instance-of v1, p1, Lcom/parrot/freeflight/academy/IUuidHolder;

    if-eqz v1, :cond_1

    .line 26
    check-cast p1, Lcom/parrot/freeflight/academy/IUuidHolder;

    .end local p1    # "context":Landroid/content/Context;
    invoke-interface {p1}, Lcom/parrot/freeflight/academy/IUuidHolder;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "uuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    .line 31
    :cond_0
    return-void

    .line 29
    .end local v0    # "uuid":Ljava/lang/String;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Activity Created NOT implement IUuidHolder interface"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected updateRunGrade(I)V
    .locals 3
    .param p1, "grade"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v0

    .line 60
    .local v0, "summary":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->updateRunGrade(Ljava/lang/String;IZ)V

    .line 64
    .end local v0    # "summary":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :cond_0
    return-void
.end method

.method protected updateRunGrade(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 67
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v0

    .line 69
    .local v0, "summary":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->mRun:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->updateRunGrade(Ljava/lang/String;IZ)V

    .line 73
    .end local v0    # "summary":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :cond_0
    return-void
.end method
