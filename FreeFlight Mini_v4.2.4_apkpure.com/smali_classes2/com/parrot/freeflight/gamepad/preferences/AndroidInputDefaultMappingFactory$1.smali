.class synthetic Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;
.super Ljava/lang/Object;
.source "AndroidInputDefaultMappingFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$UiControllerCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 303
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->values()[Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2d

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2c

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_LEFT:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2b

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2a

    :goto_3
    :try_start_4
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_BACK:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_29

    :goto_4
    :try_start_5
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_28

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_27

    :goto_6
    :try_start_7
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_26

    :goto_7
    :try_start_8
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_25

    :goto_8
    :try_start_9
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE_FORWARD:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_24

    :goto_9
    :try_start_a
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXQuadCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE_BACKWARD:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_23

    .line 245
    :goto_a
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->values()[Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    :try_start_b
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_STOP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_22

    :goto_b
    :try_start_c
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_21

    :goto_c
    :try_start_d
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_20

    :goto_d
    :try_start_e
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_TURN_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1f

    :goto_e
    :try_start_f
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1e

    :goto_f
    :try_start_10
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1d

    :goto_10
    :try_start_11
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PLANE_GEAR_UP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1c

    :goto_11
    :try_start_12
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$WingXPlaneCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PLANE_GEAR_DOWN:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_1b

    .line 144
    :goto_12
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->values()[Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    :try_start_13
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1a

    :goto_13
    :try_start_14
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_AUTO_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_19

    :goto_14
    :try_start_15
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_FRONT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_18

    :goto_15
    :try_start_16
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_BACK:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_17

    :goto_16
    :try_start_17
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_LEFT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_16

    :goto_17
    :try_start_18
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_RIGHT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_15

    :goto_18
    :try_start_19
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_14

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_LEFT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_13

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_RIGHT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_12

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_BACK:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_11

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_10

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_f

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_e

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$DelosCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_d

    .line 89
    :goto_20
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->values()[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    :try_start_21
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_BACK:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_c

    :goto_21
    :try_start_22
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_VALIDATE:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_b

    :goto_22
    :try_start_23
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_LEFT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_a

    :goto_23
    :try_start_24
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_RIGHT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_9

    :goto_24
    :try_start_25
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_UP:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_8

    :goto_25
    :try_start_26
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$AppCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_DOWN:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_7

    .line 65
    :goto_26
    invoke-static {}, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->values()[Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$UiControllerCommand:[I

    :try_start_27
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$freeflight$gamepad$command$UiControllerCommand:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->CMD_OPEN_SETTINGS:Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_6

    .line 36
    :goto_27
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    :try_start_28
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_5

    :goto_28
    :try_start_29
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_4

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_3

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_BRICK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_1

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/AndroidInputDefaultMappingFactory$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_0

    :goto_2d
    return-void

    :catch_0
    move-exception v0

    goto :goto_2d

    :catch_1
    move-exception v0

    goto :goto_2c

    :catch_2
    move-exception v0

    goto :goto_2b

    :catch_3
    move-exception v0

    goto :goto_2a

    :catch_4
    move-exception v0

    goto :goto_29

    :catch_5
    move-exception v0

    goto :goto_28

    .line 65
    :catch_6
    move-exception v0

    goto :goto_27

    .line 89
    :catch_7
    move-exception v0

    goto :goto_26

    :catch_8
    move-exception v0

    goto :goto_25

    :catch_9
    move-exception v0

    goto/16 :goto_24

    :catch_a
    move-exception v0

    goto/16 :goto_23

    :catch_b
    move-exception v0

    goto/16 :goto_22

    :catch_c
    move-exception v0

    goto/16 :goto_21

    .line 144
    :catch_d
    move-exception v0

    goto/16 :goto_20

    :catch_e
    move-exception v0

    goto/16 :goto_1f

    :catch_f
    move-exception v0

    goto/16 :goto_1e

    :catch_10
    move-exception v0

    goto/16 :goto_1d

    :catch_11
    move-exception v0

    goto/16 :goto_1c

    :catch_12
    move-exception v0

    goto/16 :goto_1b

    :catch_13
    move-exception v0

    goto/16 :goto_1a

    :catch_14
    move-exception v0

    goto/16 :goto_19

    :catch_15
    move-exception v0

    goto/16 :goto_18

    :catch_16
    move-exception v0

    goto/16 :goto_17

    :catch_17
    move-exception v0

    goto/16 :goto_16

    :catch_18
    move-exception v0

    goto/16 :goto_15

    :catch_19
    move-exception v0

    goto/16 :goto_14

    :catch_1a
    move-exception v0

    goto/16 :goto_13

    .line 245
    :catch_1b
    move-exception v0

    goto/16 :goto_12

    :catch_1c
    move-exception v0

    goto/16 :goto_11

    :catch_1d
    move-exception v0

    goto/16 :goto_10

    :catch_1e
    move-exception v0

    goto/16 :goto_f

    :catch_1f
    move-exception v0

    goto/16 :goto_e

    :catch_20
    move-exception v0

    goto/16 :goto_d

    :catch_21
    move-exception v0

    goto/16 :goto_c

    :catch_22
    move-exception v0

    goto/16 :goto_b

    .line 303
    :catch_23
    move-exception v0

    goto/16 :goto_a

    :catch_24
    move-exception v0

    goto/16 :goto_9

    :catch_25
    move-exception v0

    goto/16 :goto_8

    :catch_26
    move-exception v0

    goto/16 :goto_7

    :catch_27
    move-exception v0

    goto/16 :goto_6

    :catch_28
    move-exception v0

    goto/16 :goto_5

    :catch_29
    move-exception v0

    goto/16 :goto_4

    :catch_2a
    move-exception v0

    goto/16 :goto_3

    :catch_2b
    move-exception v0

    goto/16 :goto_2

    :catch_2c
    move-exception v0

    goto/16 :goto_1

    :catch_2d
    move-exception v0

    goto/16 :goto_0
.end method
