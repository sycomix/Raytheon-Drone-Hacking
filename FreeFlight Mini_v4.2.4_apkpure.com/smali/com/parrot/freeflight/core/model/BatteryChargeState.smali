.class public Lcom/parrot/freeflight/core/model/BatteryChargeState;
.super Ljava/lang/Object;
.source "BatteryChargeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/BatteryChargeState$BatteryPhase;,
        Lcom/parrot/freeflight/core/model/BatteryChargeState$BatteryRate;
    }
.end annotation


# static fields
.field public static final BATTERY_PHASE_CHARGED:I = 0x4

.field public static final BATTERY_PHASE_CONSTANT_CURRENT_1:I = 0x1

.field public static final BATTERY_PHASE_CONSTANT_CURRENT_2:I = 0x2

.field public static final BATTERY_PHASE_CONSTANT_CURRENT_3:I = 0x3

.field public static final BATTERY_PHASE_DISCHARGING:I = 0x5

.field public static final BATTERY_PHASE_UNKNOWN:I = 0x0

.field public static final BATTERY_RATE_FAST:I = 0x3

.field public static final BATTERY_RATE_MODERATE:I = 0x2

.field public static final BATTERY_RATE_SLOW:I = 0x1

.field public static final BATTERY_RATE_UNKNOWN:I


# instance fields
.field private mFullChargingTime:I

.field private mIntensity:I

.field private mPhase:I

.field private mRate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mPhase:I

    .line 40
    iput v1, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mRate:I

    .line 48
    iput v0, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mIntensity:I

    .line 54
    iput v0, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mFullChargingTime:I

    return-void
.end method


# virtual methods
.method public getFullChargingTime()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mFullChargingTime:I

    return v0
.end method

.method public getIntensity()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mIntensity:I

    return v0
.end method

.method public getPhase()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mPhase:I

    return v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mRate:I

    return v0
.end method

.method public update(IIII)Z
    .locals 2
    .param p1, "batteryPhase"    # I
    .param p2, "batteryRate"    # I
    .param p3, "intensity"    # I
    .param p4, "fullChargingTime"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mPhase:I

    if-eq p1, v1, :cond_0

    .line 63
    iput p1, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mPhase:I

    .line 64
    const/4 v0, 0x1

    .line 67
    :cond_0
    iget v1, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mRate:I

    if-eq p2, v1, :cond_1

    .line 68
    iput p2, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mRate:I

    .line 69
    const/4 v0, 0x1

    .line 72
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mIntensity:I

    if-eq p3, v1, :cond_2

    .line 73
    iput p3, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mIntensity:I

    .line 74
    const/4 v0, 0x1

    .line 77
    :cond_2
    iget v1, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mFullChargingTime:I

    if-eq p4, v1, :cond_3

    .line 78
    iput p4, p0, Lcom/parrot/freeflight/core/model/BatteryChargeState;->mFullChargingTime:I

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_3
    return v0
.end method
