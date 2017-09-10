.class public Lcom/parrot/freeflight/core/model/DelosPreset;
.super Ljava/lang/Object;
.source "DelosPreset.java"


# static fields
.field public static final BANKED_TURN_STATE:Lcom/parrot/freeflight/util/ToggleState;

.field public static final CUT_OUT_STATE:Lcom/parrot/freeflight/util/ToggleState;

.field public static final MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MAX_ROTATION_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MAX_TILT_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

.field public static final MAX_VERTICAL_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 8
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    sput-object v2, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_ALTITUDE_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 9
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    invoke-static/range {v2 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    sput-object v2, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_TILT_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 10
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const-wide v4, 0x4066800000000000L    # 180.0

    const-wide v6, 0x4072c00000000000L    # 300.0

    invoke-static/range {v2 .. v7}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    sput-object v2, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_ROTATION_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 11
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->createFromValue(DDD)Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosPreset;->MAX_VERTICAL_SPEED_STATE:Lcom/parrot/freeflight/util/DoubleBoundedState;

    .line 12
    invoke-static {v9, v8}, Lcom/parrot/freeflight/util/ToggleState;->createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosPreset;->CUT_OUT_STATE:Lcom/parrot/freeflight/util/ToggleState;

    .line 13
    invoke-static {v9, v8}, Lcom/parrot/freeflight/util/ToggleState;->createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosPreset;->BANKED_TURN_STATE:Lcom/parrot/freeflight/util/ToggleState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
