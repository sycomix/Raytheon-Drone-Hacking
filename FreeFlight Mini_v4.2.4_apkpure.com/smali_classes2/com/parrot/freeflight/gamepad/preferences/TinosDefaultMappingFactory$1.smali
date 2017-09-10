.class synthetic Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;
.super Ljava/lang/Object;
.source "TinosDefaultMappingFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$accessories$ClawCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$accessories$GunCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$accessories$LightCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 365
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->values()[Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_35

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_34

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_LEFT:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_33

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_32

    :goto_3
    :try_start_4
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_BACK:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_31

    :goto_4
    :try_start_5
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_30

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2f

    :goto_6
    :try_start_7
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2e

    :goto_7
    :try_start_8
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2d

    :goto_8
    :try_start_9
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE_FORWARD:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2c

    :goto_9
    :try_start_a
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE_BACKWARD:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2b

    :goto_a
    :try_start_b
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2a

    .line 282
    :goto_b
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->values()[Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    :try_start_c
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_STOP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_29

    :goto_c
    :try_start_d
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_28

    :goto_d
    :try_start_e
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_27

    :goto_e
    :try_start_f
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_TURN_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_26

    :goto_f
    :try_start_10
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_25

    :goto_10
    :try_start_11
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_24

    :goto_11
    :try_start_12
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PLANE_GEAR_UP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_23

    :goto_12
    :try_start_13
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PLANE_GEAR_DOWN:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_22

    :goto_13
    :try_start_14
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_QUAD_MODE:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_21

    :goto_14
    :try_start_15
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_LOOPING:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_20

    :goto_15
    :try_start_16
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_BACKSWAP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_1f

    :goto_16
    :try_start_17
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_BARREL_ROLL_LEFT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1e

    :goto_17
    :try_start_18
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_BARREL_ROLL_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_1d

    .line 186
    :goto_18
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->values()[Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    :try_start_19
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_1c

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_AUTO_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1b

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_FRONT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1a

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_BACK:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_19

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_LEFT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_18

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_RIGHT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_17

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_16

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_LEFT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_15

    :goto_20
    :try_start_21
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_RIGHT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_14

    :goto_21
    :try_start_22
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_BACK:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_13

    :goto_22
    :try_start_23
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_12

    :goto_23
    :try_start_24
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_11

    :goto_24
    :try_start_25
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_10

    :goto_25
    :try_start_26
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_f

    .line 139
    :goto_26
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->values()[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    :try_start_27
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_BACK:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_e

    :goto_27
    :try_start_28
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_VALIDATE:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_d

    :goto_28
    :try_start_29
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_LEFT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_c

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_RIGHT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_b

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_UP:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_a

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_DOWN:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_9

    .line 117
    :goto_2c
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->values()[Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$accessories$LightCommand:[I

    :try_start_2d
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$accessories$LightCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->CMD_TOGGLE:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_8

    .line 95
    :goto_2d
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;->values()[Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$accessories$GunCommand:[I

    :try_start_2e
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$accessories$GunCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;->CMD_SHOOT:Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/accessories/GunCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_7

    .line 73
    :goto_2e
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->values()[Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$accessories$ClawCommand:[I

    :try_start_2f
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$accessories$ClawCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->CMD_OPEN_CLOSE:Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_6

    .line 37
    :goto_2f
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    :try_start_30
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_5

    :goto_30
    :try_start_31
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_4

    :goto_31
    :try_start_32
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_3

    :goto_32
    :try_start_33
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_2

    :goto_33
    :try_start_34
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_1

    :goto_34
    :try_start_35
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/TinosDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_BRICK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_0

    :goto_35
    return-void

    :catch_0
    move-exception v0

    goto :goto_35

    :catch_1
    move-exception v0

    goto :goto_34

    :catch_2
    move-exception v0

    goto :goto_33

    :catch_3
    move-exception v0

    goto :goto_32

    :catch_4
    move-exception v0

    goto :goto_31

    :catch_5
    move-exception v0

    goto :goto_30

    .line 73
    :catch_6
    move-exception v0

    goto :goto_2f

    .line 95
    :catch_7
    move-exception v0

    goto :goto_2e

    .line 117
    :catch_8
    move-exception v0

    goto/16 :goto_2d

    .line 139
    :catch_9
    move-exception v0

    goto/16 :goto_2c

    :catch_a
    move-exception v0

    goto/16 :goto_2b

    :catch_b
    move-exception v0

    goto/16 :goto_2a

    :catch_c
    move-exception v0

    goto/16 :goto_29

    :catch_d
    move-exception v0

    goto/16 :goto_28

    :catch_e
    move-exception v0

    goto/16 :goto_27

    .line 186
    :catch_f
    move-exception v0

    goto/16 :goto_26

    :catch_10
    move-exception v0

    goto/16 :goto_25

    :catch_11
    move-exception v0

    goto/16 :goto_24

    :catch_12
    move-exception v0

    goto/16 :goto_23

    :catch_13
    move-exception v0

    goto/16 :goto_22

    :catch_14
    move-exception v0

    goto/16 :goto_21

    :catch_15
    move-exception v0

    goto/16 :goto_20

    :catch_16
    move-exception v0

    goto/16 :goto_1f

    :catch_17
    move-exception v0

    goto/16 :goto_1e

    :catch_18
    move-exception v0

    goto/16 :goto_1d

    :catch_19
    move-exception v0

    goto/16 :goto_1c

    :catch_1a
    move-exception v0

    goto/16 :goto_1b

    :catch_1b
    move-exception v0

    goto/16 :goto_1a

    :catch_1c
    move-exception v0

    goto/16 :goto_19

    .line 282
    :catch_1d
    move-exception v0

    goto/16 :goto_18

    :catch_1e
    move-exception v0

    goto/16 :goto_17

    :catch_1f
    move-exception v0

    goto/16 :goto_16

    :catch_20
    move-exception v0

    goto/16 :goto_15

    :catch_21
    move-exception v0

    goto/16 :goto_14

    :catch_22
    move-exception v0

    goto/16 :goto_13

    :catch_23
    move-exception v0

    goto/16 :goto_12

    :catch_24
    move-exception v0

    goto/16 :goto_11

    :catch_25
    move-exception v0

    goto/16 :goto_10

    :catch_26
    move-exception v0

    goto/16 :goto_f

    :catch_27
    move-exception v0

    goto/16 :goto_e

    :catch_28
    move-exception v0

    goto/16 :goto_d

    :catch_29
    move-exception v0

    goto/16 :goto_c

    .line 365
    :catch_2a
    move-exception v0

    goto/16 :goto_b

    :catch_2b
    move-exception v0

    goto/16 :goto_a

    :catch_2c
    move-exception v0

    goto/16 :goto_9

    :catch_2d
    move-exception v0

    goto/16 :goto_8

    :catch_2e
    move-exception v0

    goto/16 :goto_7

    :catch_2f
    move-exception v0

    goto/16 :goto_6

    :catch_30
    move-exception v0

    goto/16 :goto_5

    :catch_31
    move-exception v0

    goto/16 :goto_4

    :catch_32
    move-exception v0

    goto/16 :goto_3

    :catch_33
    move-exception v0

    goto/16 :goto_2

    :catch_34
    move-exception v0

    goto/16 :goto_1

    :catch_35
    move-exception v0

    goto/16 :goto_0
.end method
