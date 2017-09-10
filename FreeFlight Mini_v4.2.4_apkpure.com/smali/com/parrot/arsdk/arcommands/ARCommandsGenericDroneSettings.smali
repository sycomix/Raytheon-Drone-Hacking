.class public Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;
.super Ljava/lang/Object;
.source "ARCommandsGenericDroneSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;,
        Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;
    }
.end annotation


# instance fields
.field private final _ardrone3BankedTurn:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;

.field private final _ardrone3HomeType:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;

.field private final _ardrone3MaxAltitude:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;

.field private final _ardrone3MaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;

.field private final _ardrone3MaxPitchRollRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;

.field private final _ardrone3MaxRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;

.field private final _ardrone3MaxTilt:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;

.field private final _ardrone3MaxVerticalSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;

.field private final _ardrone3NoFlyOverMaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;

.field private final _ardrone3ReturnHomeDelay:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;

.field private final _ardrone3VideoStabilizationMode:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxAltitude:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;

    .line 98
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxTilt:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;

    .line 99
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;

    .line 100
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3NoFlyOverMaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;

    .line 101
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxVerticalSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;

    .line 102
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;

    .line 103
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxPitchRollRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;

    .line 104
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3ReturnHomeDelay:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;

    .line 105
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3HomeType:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;

    .line 106
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3VideoStabilizationMode:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;

    .line 107
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;-><init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3BankedTurn:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;

    .line 95
    return-void
.end method


# virtual methods
.method public getArdrone3BankedTurnIsSet()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3BankedTurn:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;->isSet:I

    return v0
.end method

.method public getArdrone3BankedTurnValue()B
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3BankedTurn:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;

    iget-byte v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;->value:B

    return v0
.end method

.method public getArdrone3HomeTypeIsSet()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3HomeType:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;->isSet:I

    return v0
.end method

.method public getArdrone3HomeTypeType()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3HomeType:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;

    iget-object v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;->type:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    return-object v0
.end method

.method public getArdrone3MaxAltitudeCurrent()F
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxAltitude:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;->current:F

    return v0
.end method

.method public getArdrone3MaxAltitudeIsSet()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxAltitude:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;->isSet:I

    return v0
.end method

.method public getArdrone3MaxDistanceIsSet()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;->isSet:I

    return v0
.end method

.method public getArdrone3MaxDistanceValue()F
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;->value:F

    return v0
.end method

.method public getArdrone3MaxPitchRollRotationSpeedCurrent()F
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxPitchRollRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;->current:F

    return v0
.end method

.method public getArdrone3MaxPitchRollRotationSpeedIsSet()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxPitchRollRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;->isSet:I

    return v0
.end method

.method public getArdrone3MaxRotationSpeedCurrent()F
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;->current:F

    return v0
.end method

.method public getArdrone3MaxRotationSpeedIsSet()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;->isSet:I

    return v0
.end method

.method public getArdrone3MaxTiltCurrent()F
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxTilt:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;->current:F

    return v0
.end method

.method public getArdrone3MaxTiltIsSet()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxTilt:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;->isSet:I

    return v0
.end method

.method public getArdrone3MaxVerticalSpeedCurrent()F
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxVerticalSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;->current:F

    return v0
.end method

.method public getArdrone3MaxVerticalSpeedIsSet()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxVerticalSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;->isSet:I

    return v0
.end method

.method public getArdrone3NoFlyOverMaxDistanceIsSet()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3NoFlyOverMaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;->isSet:I

    return v0
.end method

.method public getArdrone3NoFlyOverMaxDistanceShouldNotFlyOver()B
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3NoFlyOverMaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;

    iget-byte v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;->shouldNotFlyOver:B

    return v0
.end method

.method public getArdrone3ReturnHomeDelayDelay()S
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3ReturnHomeDelay:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;

    iget-short v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;->delay:S

    return v0
.end method

.method public getArdrone3ReturnHomeDelayIsSet()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3ReturnHomeDelay:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;->isSet:I

    return v0
.end method

.method public getArdrone3VideoStabilizationModeIsSet()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3VideoStabilizationMode:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;

    iget v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;->isSet:I

    return v0
.end method

.method public getArdrone3VideoStabilizationModeMode()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3VideoStabilizationMode:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;

    iget-object v0, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;->mode:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    return-object v0
.end method

.method public setArdrone3BankedTurn(B)V
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3BankedTurn:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;->isSet:I

    .line 161
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3BankedTurn:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;

    iput-byte p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3BankedTurn;->value:B

    .line 162
    return-void
.end method

.method public setArdrone3HomeType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;)V
    .locals 2
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3HomeType:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;->isSet:I

    .line 151
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3HomeType:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;

    iput-object p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3HomeType;->type:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_GPSSETTINGS_HOMETYPE_TYPE_ENUM;

    .line 152
    return-void
.end method

.method public setArdrone3MaxAltitude(F)V
    .locals 2
    .param p1, "current"    # F

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxAltitude:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;->isSet:I

    .line 111
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxAltitude:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxAltitude;->current:F

    .line 112
    return-void
.end method

.method public setArdrone3MaxDistance(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;->isSet:I

    .line 121
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxDistance;->value:F

    .line 122
    return-void
.end method

.method public setArdrone3MaxPitchRollRotationSpeed(F)V
    .locals 2
    .param p1, "current"    # F

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxPitchRollRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;->isSet:I

    .line 141
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxPitchRollRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxPitchRollRotationSpeed;->current:F

    .line 142
    return-void
.end method

.method public setArdrone3MaxRotationSpeed(F)V
    .locals 2
    .param p1, "current"    # F

    .prologue
    .line 135
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;->isSet:I

    .line 136
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxRotationSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxRotationSpeed;->current:F

    .line 137
    return-void
.end method

.method public setArdrone3MaxTilt(F)V
    .locals 2
    .param p1, "current"    # F

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxTilt:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;->isSet:I

    .line 116
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxTilt:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxTilt;->current:F

    .line 117
    return-void
.end method

.method public setArdrone3MaxVerticalSpeed(F)V
    .locals 2
    .param p1, "current"    # F

    .prologue
    .line 130
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxVerticalSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;->isSet:I

    .line 131
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3MaxVerticalSpeed:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;

    iput p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3MaxVerticalSpeed;->current:F

    .line 132
    return-void
.end method

.method public setArdrone3NoFlyOverMaxDistance(B)V
    .locals 2
    .param p1, "shouldNotFlyOver"    # B

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3NoFlyOverMaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;->isSet:I

    .line 126
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3NoFlyOverMaxDistance:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;

    iput-byte p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3NoFlyOverMaxDistance;->shouldNotFlyOver:B

    .line 127
    return-void
.end method

.method public setArdrone3ReturnHomeDelay(S)V
    .locals 2
    .param p1, "delay"    # S

    .prologue
    .line 145
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3ReturnHomeDelay:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;->isSet:I

    .line 146
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3ReturnHomeDelay:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;

    iput-short p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;->delay:S

    .line 147
    return-void
.end method

.method public setArdrone3VideoStabilizationMode(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;)V
    .locals 2
    .param p1, "mode"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3VideoStabilizationMode:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;

    const/4 v1, 0x1

    iput v1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;->isSet:I

    .line 156
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;->_ardrone3VideoStabilizationMode:Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;

    iput-object p1, v0, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;->mode:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;

    .line 157
    return-void
.end method
