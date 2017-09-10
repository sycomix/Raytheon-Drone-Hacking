.class public Lcom/parrot/freeflight/util/DoubleBoundedState;
.super Ljava/lang/Object;
.source "DoubleBoundedState.java"


# instance fields
.field private mCurrentValue:D

.field private mMaxBound:D

.field private mMinBound:D

.field private mSettingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mSettingEnabled:Z

    return-void
.end method

.method public static copyOf(Lcom/parrot/freeflight/util/DoubleBoundedState;)Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 8
    .param p0, "originalState"    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 20
    new-instance v1, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    .line 21
    .local v1, "boundedState":Lcom/parrot/freeflight/util/DoubleBoundedState;
    iget-wide v2, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mCurrentValue:D

    iget-wide v4, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mMaxBound:D

    iget-wide v6, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mMinBound:D

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    .line 22
    return-object v1
.end method

.method public static createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 8
    .param p0, "minBound"    # D
    .param p2, "currentValue"    # D
    .param p4, "maxBound"    # D
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 13
    new-instance v1, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    .local v1, "boundedState":Lcom/parrot/freeflight/util/DoubleBoundedState;
    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p0

    .line 14
    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    .line 15
    return-object v1
.end method


# virtual methods
.method public getCurrentValue()D
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mCurrentValue:D

    return-wide v0
.end method

.method public getMaxBound()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mMaxBound:D

    return-wide v0
.end method

.method public getMinBound()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mMinBound:D

    return-wide v0
.end method

.method public isSettingEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mSettingEnabled:Z

    return v0
.end method

.method public update(DDDZ)Z
    .locals 3
    .param p1, "currentValue"    # D
    .param p3, "maxBound"    # D
    .param p5, "minBound"    # D
    .param p7, "settingEnabled"    # Z

    .prologue
    .line 26
    invoke-virtual/range {p0 .. p6}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateState(DDD)Z

    move-result v1

    .line 27
    .local v1, "isStateUpdated":Z
    invoke-virtual {p0, p7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->updateAvailability(Z)Z

    move-result v0

    .line 28
    .local v0, "isAvaibilityUpdated":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public update(Lcom/parrot/freeflight/util/DoubleBoundedState;)Z
    .locals 9
    .param p1, "state"    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    iget-wide v2, p1, Lcom/parrot/freeflight/util/DoubleBoundedState;->mCurrentValue:D

    iget-wide v4, p1, Lcom/parrot/freeflight/util/DoubleBoundedState;->mMaxBound:D

    iget-wide v6, p1, Lcom/parrot/freeflight/util/DoubleBoundedState;->mMinBound:D

    iget-boolean v8, p1, Lcom/parrot/freeflight/util/DoubleBoundedState;->mSettingEnabled:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v0

    return v0
.end method

.method public updateAvailability(Z)Z
    .locals 2
    .param p1, "settingEnabled"    # Z

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "updated":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mSettingEnabled:Z

    if-eq v1, p1, :cond_0

    .line 57
    iput-boolean p1, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mSettingEnabled:Z

    .line 58
    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0
.end method

.method public updateCurrentValue(D)Z
    .locals 3
    .param p1, "currentValue"    # D

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mCurrentValue:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    .line 48
    iput-wide p1, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mCurrentValue:D

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateState(DDD)Z
    .locals 5
    .param p1, "currentValue"    # D
    .param p3, "maxBound"    # D
    .param p5, "minBound"    # D

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "updated":Z
    iget-wide v2, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mCurrentValue:D

    cmpl-double v1, v2, p1

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mMaxBound:D

    cmpl-double v1, v2, p3

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mMinBound:D

    cmpl-double v1, v2, p5

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x1

    .line 39
    iput-wide p1, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mCurrentValue:D

    .line 40
    iput-wide p3, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mMaxBound:D

    .line 41
    iput-wide p5, p0, Lcom/parrot/freeflight/util/DoubleBoundedState;->mMinBound:D

    .line 43
    :cond_1
    return v0
.end method
