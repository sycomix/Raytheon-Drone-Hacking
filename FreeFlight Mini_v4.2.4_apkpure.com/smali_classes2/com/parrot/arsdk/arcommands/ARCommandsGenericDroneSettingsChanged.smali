.class public Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;
.super Ljava/lang/Object;
.source "ARCommandsGenericDroneSettingsChanged.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;
    }
.end annotation


# instance fields
.field private final _ardrone3BankedTurnChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;

.field private final _ardrone3HomeTypeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;

.field private final _ardrone3MaxAltitudeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

.field private final _ardrone3MaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

.field private final _ardrone3MaxPitchRollRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

.field private final _ardrone3MaxRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

.field private final _ardrone3MaxTiltChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

.field private final _ardrone3MaxVerticalSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

.field private final _ardrone3NoFlyOverMaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;

.field private final _ardrone3ReturnHomeDelayChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;

.field private final _ardrone3VideoStabilizationModeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxAltitudeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

    .line 110
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxTiltChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

    .line 111
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

    .line 112
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3NoFlyOverMaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;

    .line 113
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxVerticalSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

    .line 114
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

    .line 115
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxPitchRollRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

    .line 116
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3ReturnHomeDelayChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;

    .line 117
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3HomeTypeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;

    .line 118
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3VideoStabilizationModeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;

    .line 119
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3BankedTurnChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;

    .line 107
    return-void
.end method


# virtual methods
.method public getArdrone3BankedTurnChangedIsSet()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3BankedTurnChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;->isSet:I

    return v0
.end method

.method public getArdrone3BankedTurnChangedState()B
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3BankedTurnChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;

    iget-byte v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;->state:B

    return v0
.end method

.method public getArdrone3HomeTypeChangedIsSet()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3HomeTypeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;->isSet:I

    return v0
.end method

.method public getArdrone3HomeTypeChangedType()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3HomeTypeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;

    iget-object v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;->type:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;

    return-object v0
.end method

.method public getArdrone3MaxAltitudeChangedCurrent()F
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxAltitudeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;->current:F

    return v0
.end method

.method public getArdrone3MaxAltitudeChangedIsSet()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxAltitudeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;->isSet:I

    return v0
.end method

.method public getArdrone3MaxAltitudeChangedMax()F
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxAltitudeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;->max:F

    return v0
.end method

.method public getArdrone3MaxAltitudeChangedMin()F
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxAltitudeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;->min:F

    return v0
.end method

.method public getArdrone3MaxDistanceChangedCurrent()F
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;->current:F

    return v0
.end method

.method public getArdrone3MaxDistanceChangedIsSet()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;->isSet:I

    return v0
.end method

.method public getArdrone3MaxDistanceChangedMax()F
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;->max:F

    return v0
.end method

.method public getArdrone3MaxDistanceChangedMin()F
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;->min:F

    return v0
.end method

.method public getArdrone3MaxPitchRollRotationSpeedChangedCurrent()F
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxPitchRollRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;->current:F

    return v0
.end method

.method public getArdrone3MaxPitchRollRotationSpeedChangedIsSet()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxPitchRollRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;->isSet:I

    return v0
.end method

.method public getArdrone3MaxPitchRollRotationSpeedChangedMax()F
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxPitchRollRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;->max:F

    return v0
.end method

.method public getArdrone3MaxPitchRollRotationSpeedChangedMin()F
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxPitchRollRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;->min:F

    return v0
.end method

.method public getArdrone3MaxRotationSpeedChangedCurrent()F
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;->current:F

    return v0
.end method

.method public getArdrone3MaxRotationSpeedChangedIsSet()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;->isSet:I

    return v0
.end method

.method public getArdrone3MaxRotationSpeedChangedMax()F
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;->max:F

    return v0
.end method

.method public getArdrone3MaxRotationSpeedChangedMin()F
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;->min:F

    return v0
.end method

.method public getArdrone3MaxTiltChangedCurrent()F
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxTiltChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;->current:F

    return v0
.end method

.method public getArdrone3MaxTiltChangedIsSet()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxTiltChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;->isSet:I

    return v0
.end method

.method public getArdrone3MaxTiltChangedMax()F
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxTiltChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;->max:F

    return v0
.end method

.method public getArdrone3MaxTiltChangedMin()F
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxTiltChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;->min:F

    return v0
.end method

.method public getArdrone3MaxVerticalSpeedChangedCurrent()F
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxVerticalSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;->current:F

    return v0
.end method

.method public getArdrone3MaxVerticalSpeedChangedIsSet()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxVerticalSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;->isSet:I

    return v0
.end method

.method public getArdrone3MaxVerticalSpeedChangedMax()F
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxVerticalSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;->max:F

    return v0
.end method

.method public getArdrone3MaxVerticalSpeedChangedMin()F
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxVerticalSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;->min:F

    return v0
.end method

.method public getArdrone3NoFlyOverMaxDistanceChangedIsSet()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3NoFlyOverMaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;->isSet:I

    return v0
.end method

.method public getArdrone3NoFlyOverMaxDistanceChangedShouldNotFlyOver()B
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3NoFlyOverMaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;

    iget-byte v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;->shouldNotFlyOver:B

    return v0
.end method

.method public getArdrone3ReturnHomeDelayChangedDelay()S
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3ReturnHomeDelayChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;

    iget-short v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;->delay:S

    return v0
.end method

.method public getArdrone3ReturnHomeDelayChangedIsSet()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3ReturnHomeDelayChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;->isSet:I

    return v0
.end method

.method public getArdrone3VideoStabilizationModeChangedIsSet()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3VideoStabilizationModeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;->isSet:I

    return v0
.end method

.method public getArdrone3VideoStabilizationModeChangedMode()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3VideoStabilizationModeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;

    iget-object v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;->mode:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;

    return-object v0
.end method

.method public setArdrone3BankedTurnChanged(B)V
    .locals 2
    .param p1, "state"    # B

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3BankedTurnChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;->isSet:I

    .line 185
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3BankedTurnChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;

    iput-byte p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3BankedTurnChanged;->state:B

    .line 186
    return-void
.end method

.method public setArdrone3HomeTypeChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;)V
    .locals 2
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3HomeTypeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;->isSet:I

    .line 175
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3HomeTypeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;

    iput-object p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3HomeTypeChanged;->type:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGSSTATE_HOMETYPECHANGED_TYPE_ENUM;

    .line 176
    return-void
.end method

.method public setArdrone3MaxAltitudeChanged(FFF)V
    .locals 2
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 122
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxAltitudeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;->isSet:I

    .line 123
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxAltitudeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;->current:F

    .line 124
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxAltitudeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

    iput p2, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;->min:F

    .line 125
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxAltitudeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;

    iput p3, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxAltitudeChanged;->max:F

    .line 126
    return-void
.end method

.method public setArdrone3MaxDistanceChanged(FFF)V
    .locals 2
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 136
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;->isSet:I

    .line 137
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;->current:F

    .line 138
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

    iput p2, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;->min:F

    .line 139
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;

    iput p3, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxDistanceChanged;->max:F

    .line 140
    return-void
.end method

.method public setArdrone3MaxPitchRollRotationSpeedChanged(FFF)V
    .locals 2
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 162
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxPitchRollRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;->isSet:I

    .line 163
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxPitchRollRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;->current:F

    .line 164
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxPitchRollRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

    iput p2, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;->min:F

    .line 165
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxPitchRollRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;

    iput p3, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxPitchRollRotationSpeedChanged;->max:F

    .line 166
    return-void
.end method

.method public setArdrone3MaxRotationSpeedChanged(FFF)V
    .locals 2
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 155
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;->isSet:I

    .line 156
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;->current:F

    .line 157
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

    iput p2, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;->min:F

    .line 158
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxRotationSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;

    iput p3, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxRotationSpeedChanged;->max:F

    .line 159
    return-void
.end method

.method public setArdrone3MaxTiltChanged(FFF)V
    .locals 2
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 129
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxTiltChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;->isSet:I

    .line 130
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxTiltChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;->current:F

    .line 131
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxTiltChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

    iput p2, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;->min:F

    .line 132
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxTiltChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;

    iput p3, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxTiltChanged;->max:F

    .line 133
    return-void
.end method

.method public setArdrone3MaxVerticalSpeedChanged(FFF)V
    .locals 2
    .param p1, "current"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxVerticalSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;->isSet:I

    .line 149
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxVerticalSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;->current:F

    .line 150
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxVerticalSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

    iput p2, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;->min:F

    .line 151
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3MaxVerticalSpeedChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;

    iput p3, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3MaxVerticalSpeedChanged;->max:F

    .line 152
    return-void
.end method

.method public setArdrone3NoFlyOverMaxDistanceChanged(B)V
    .locals 2
    .param p1, "shouldNotFlyOver"    # B

    .prologue
    .line 143
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3NoFlyOverMaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;->isSet:I

    .line 144
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3NoFlyOverMaxDistanceChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;

    iput-byte p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3NoFlyOverMaxDistanceChanged;->shouldNotFlyOver:B

    .line 145
    return-void
.end method

.method public setArdrone3ReturnHomeDelayChanged(S)V
    .locals 2
    .param p1, "delay"    # S

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3ReturnHomeDelayChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;->isSet:I

    .line 170
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3ReturnHomeDelayChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;

    iput-short p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3ReturnHomeDelayChanged;->delay:S

    .line 171
    return-void
.end method

.method public setArdrone3VideoStabilizationModeChanged(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;)V
    .locals 2
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3VideoStabilizationModeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;->isSet:I

    .line 180
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged;->_ardrone3VideoStabilizationModeChanged:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;

    iput-object p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettingsChanged$Ardrone3VideoStabilizationModeChanged;->mode:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGSSTATE_VIDEOSTABILIZATIONMODECHANGED_MODE_ENUM;

    .line 181
    return-void
.end method
