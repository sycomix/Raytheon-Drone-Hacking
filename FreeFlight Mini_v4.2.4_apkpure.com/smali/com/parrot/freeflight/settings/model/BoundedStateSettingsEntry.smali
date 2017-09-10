.class public abstract Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "BoundedStateSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/model/SettingsEntry",
        "<",
        "Lcom/parrot/freeflight/util/DoubleBoundedState;",
        "Ljava/lang/Double;",
        "TV;TU;>;"
    }
.end annotation


# static fields
.field private static final GAMEPAD_STEP_COEFF:I = 0x32


# instance fields
.field private final mExponentialValue:Z

.field private final mInterpretedTexts:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStep:D

.field protected mUnit:Lcom/parrot/freeflight/util/ui/Unit;

.field protected final mUnitAsString:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # Lcom/parrot/freeflight/util/ui/Unit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "step"    # D
    .param p5, "interpretedTexts"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/util/ui/Unit;D[Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # Lcom/parrot/freeflight/util/ui/Unit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "step"    # D
    .param p5, "interpretedTexts"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "exponentialValue"    # Z

    .prologue
    .line 28
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    const/4 v0, 0x0

    new-instance v1, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mUnitAsString:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mUnit:Lcom/parrot/freeflight/util/ui/Unit;

    .line 31
    iput-wide p3, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mStep:D

    .line 32
    iput-object p5, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    .line 33
    iput-boolean p6, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mExponentialValue:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "step"    # D

    .prologue
    .line 51
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;DZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DZ)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "step"    # D
    .param p5, "exponentialValue"    # Z

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    const/4 v1, 0x0

    .line 43
    new-instance v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    invoke-direct {p0, v1, p1, v0}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 44
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mUnitAsString:Ljava/lang/String;

    .line 45
    iput-wide p3, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mStep:D

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    .line 47
    iput-boolean p5, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mExponentialValue:Z

    .line 48
    return-void
.end method

.method private getExpValueFromSlider(DDD)D
    .locals 9
    .param p1, "value"    # D
    .param p3, "valueMin"    # D
    .param p5, "valueMax"    # D

    .prologue
    .line 90
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    cmpg-double v2, p1, p3

    if-gtz v2, :cond_0

    .line 94
    .end local p3    # "valueMin":D
    :goto_0
    return-wide p3

    .line 91
    .restart local p3    # "valueMin":D
    :cond_0
    cmpl-double v2, p1, p5

    if-ltz v2, :cond_1

    move-wide p3, p5

    goto :goto_0

    .line 92
    :cond_1
    sub-double v2, p5, p3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, p5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 93
    .local v6, "base":D
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, p3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v4

    .local v0, "expValue":D
    move-wide v2, p3

    move-wide v4, p5

    .line 94
    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(DDD)D

    move-result-wide p3

    goto :goto_0
.end method

.method private getSliderValueFromExpValue(DDD)I
    .locals 9
    .param p1, "expValue"    # D
    .param p3, "minValue"    # D
    .param p5, "maxValue"    # D

    .prologue
    .line 106
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    sub-double v4, p5, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, p5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 107
    .local v0, "base":D
    sub-double v4, p1, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double v2, v4, v6

    .line 108
    .local v2, "value":D
    sub-double v4, v2, p3

    iget-wide v6, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mStep:D

    div-double/2addr v4, v6

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method


# virtual methods
.method public getGamePadStep()I
    .locals 8

    .prologue
    .line 73
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    const/4 v0, 0x0

    .line 74
    .local v0, "gamepadStep":I
    iget-boolean v1, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mExponentialValue:Z

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v2

    iget-object v1, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    iget-wide v6, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mStep:D

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 77
    :cond_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 78
    :cond_1
    return v0
.end method

.method public getInterpretedValue()Ljava/lang/String;
    .locals 14
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    iget-object v10, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    array-length v10, v10

    if-lez v10, :cond_1

    .line 120
    iget-object v10, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    array-length v3, v10

    .line 121
    .local v3, "length":I
    iget-object v10, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v10, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v0

    .line 122
    .local v0, "currentValue":D
    iget-object v10, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v10, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v6

    .line 123
    .local v6, "minValue":D
    iget-object v10, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v10, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v4

    .line 124
    .local v4, "maxValue":D
    sub-double v10, v4, v6

    int-to-double v12, v3

    div-double v8, v10, v12

    .line 125
    .local v8, "subdivision":D
    sub-double v10, v0, v6

    div-double/2addr v10, v8

    double-to-int v2, v10

    .line 126
    .local v2, "index":I
    if-ge v2, v3, :cond_0

    if-ltz v2, :cond_0

    iget-object v10, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    aget-object v10, v10, v2

    .line 128
    .end local v0    # "currentValue":D
    .end local v2    # "index":I
    .end local v3    # "length":I
    .end local v4    # "maxValue":D
    .end local v6    # "minValue":D
    .end local v8    # "subdivision":D
    :goto_0
    return-object v10

    .line 126
    .restart local v0    # "currentValue":D
    .restart local v2    # "index":I
    .restart local v3    # "length":I
    .restart local v4    # "maxValue":D
    .restart local v6    # "minValue":D
    .restart local v8    # "subdivision":D
    :cond_0
    iget-object v10, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    add-int/lit8 v11, v3, -0x1

    aget-object v10, v10, v11

    goto :goto_0

    .line 128
    .end local v0    # "currentValue":D
    .end local v2    # "index":I
    .end local v3    # "length":I
    .end local v4    # "maxValue":D
    .end local v6    # "minValue":D
    .end local v8    # "subdivision":D
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public getInterpretedValue(D)Ljava/lang/String;
    .locals 13
    .param p1, "value"    # D
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    iget-object v8, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_1

    .line 135
    iget-object v8, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    array-length v1, v8

    .line 136
    .local v1, "length":I
    iget-object v8, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v8, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v4

    .line 137
    .local v4, "minValue":D
    iget-object v8, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v8, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v2

    .line 138
    .local v2, "maxValue":D
    sub-double v8, v2, v4

    int-to-double v10, v1

    div-double v6, v8, v10

    .line 139
    .local v6, "subdivision":D
    sub-double v8, p1, v4

    div-double/2addr v8, v6

    double-to-int v0, v8

    .line 140
    .local v0, "index":I
    if-ge v0, v1, :cond_0

    iget-object v8, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    aget-object v8, v8, v0

    .line 142
    .end local v0    # "index":I
    .end local v1    # "length":I
    .end local v2    # "maxValue":D
    .end local v4    # "minValue":D
    .end local v6    # "subdivision":D
    :goto_0
    return-object v8

    .line 140
    .restart local v0    # "index":I
    .restart local v1    # "length":I
    .restart local v2    # "maxValue":D
    .restart local v4    # "minValue":D
    .restart local v6    # "subdivision":D
    :cond_0
    iget-object v8, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    add-int/lit8 v9, v1, -0x1

    aget-object v8, v8, v9

    goto :goto_0

    .line 142
    .end local v0    # "index":I
    .end local v1    # "length":I
    .end local v2    # "maxValue":D
    .end local v4    # "minValue":D
    .end local v6    # "subdivision":D
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getSliderValueFromValue()I
    .locals 10

    .prologue
    .line 98
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    .line 99
    .local v2, "currentValue":D
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v4

    .line 100
    .local v4, "minValue":D
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v6

    .line 101
    .local v6, "maxValue":D
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mExponentialValue:Z

    if-eqz v0, :cond_0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getSliderValueFromExpValue(DDD)I

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    sub-double v0, v2, v4

    iget-wide v8, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mStep:D

    div-double/2addr v0, v8

    const/4 v8, 0x0

    invoke-static {v0, v1, v8}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getStep()D
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    iget-wide v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mStep:D

    return-wide v0
.end method

.method public getUnit()Lcom/parrot/freeflight/util/ui/Unit;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mUnit:Lcom/parrot/freeflight/util/ui/Unit;

    return-object v0
.end method

.method public getUnitAsString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mUnitAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    return-object v0
.end method

.method public getValueFromSlider(I)D
    .locals 10
    .param p1, "progress"    # I

    .prologue
    .line 82
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v4

    .line 83
    .local v4, "valueMin":D
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v6

    .line 84
    .local v6, "valueMax":D
    int-to-double v0, p1

    iget-wide v8, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mStep:D

    mul-double/2addr v0, v8

    add-double v2, v4, v0

    .line 85
    .local v2, "value":D
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->mExponentialValue:Z

    if-eqz v0, :cond_0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getExpValueFromSlider(DDD)D

    move-result-wide v2

    .line 86
    .end local v2    # "value":D
    :cond_0
    return-wide v2
.end method

.method protected hasChanged(Lcom/parrot/freeflight/util/DoubleBoundedState;Lcom/parrot/freeflight/util/DoubleBoundedState;)Z
    .locals 9
    .param p1, "oldValue"    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->isSettingEnabled()Z

    move-result v8

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic hasChanged(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/util/DoubleBoundedState;

    check-cast p2, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->hasChanged(Lcom/parrot/freeflight/util/DoubleBoundedState;Lcom/parrot/freeflight/util/DoubleBoundedState;)Z

    move-result v0

    return v0
.end method
