.class public Lcom/parrot/freeflight/piloting/alert/FlightLimitsAlertHelper;
.super Ljava/lang/Object;
.source "FlightLimitsAlertHelper.java"


# static fields
.field private static final MAX_DISTANCE:F = 2000.0f


# instance fields
.field private mBackInFlightCylinder:Z

.field private mMaxDistanceAlert:Lcom/parrot/freeflight/piloting/alert/Alert;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detectMaxDistanceReached(F)Lcom/parrot/freeflight/piloting/alert/Alert;
    .locals 3
    .param p1, "distance"    # F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/alert/FlightLimitsAlertHelper;->mBackInFlightCylinder:Z

    .line 21
    const/high16 v0, 0x44fa0000    # 2000.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/alert/FlightLimitsAlertHelper;->mMaxDistanceAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    const/4 v1, 0x5

    const v2, 0x7f0803cb

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(II)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/alert/FlightLimitsAlertHelper;->mMaxDistanceAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 30
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/alert/FlightLimitsAlertHelper;->mMaxDistanceAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    return-object v0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/alert/FlightLimitsAlertHelper;->mMaxDistanceAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/alert/FlightLimitsAlertHelper;->mMaxDistanceAlert:Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/alert/FlightLimitsAlertHelper;->mBackInFlightCylinder:Z

    goto :goto_0
.end method

.method public isBackInFlightCylinder()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/alert/FlightLimitsAlertHelper;->mBackInFlightCylinder:Z

    return v0
.end method
