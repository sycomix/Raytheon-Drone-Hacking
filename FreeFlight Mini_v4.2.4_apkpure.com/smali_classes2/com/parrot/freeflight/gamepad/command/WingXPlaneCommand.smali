.class public abstract enum Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
.super Ljava/lang/Enum;
.source "WingXPlaneCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/Command",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_BACKSWAP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_BARREL_ROLL_LEFT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_BARREL_ROLL_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_LOOPING:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_PLANE_GEAR_DOWN:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_PLANE_GEAR_UP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_QUAD_MODE:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_STOP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_TURN_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field public static final enum CMD_YAW:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

.field private static final DEBUG_JOYSTICK:Z = false

.field private static final TURN_LEFT_RIGHT_THRESHOLD:F = 0.8f


# instance fields
.field private final mAnalog:Z

.field private final mId:I

.field private final mResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$1;

    const-string v1, "CMD_GAZ"

    const v4, 0x7f08022f

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$1;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 19
    new-instance v3, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$2;

    const-string v4, "CMD_PITCH"

    const v7, 0x7f08023b

    move v6, v5

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$2;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 26
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$3;

    const-string v7, "CMD_TURN_LEFT_RIGHT"

    const v10, 0x7f080652

    move v8, v12

    move v9, v12

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$3;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_TURN_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 35
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$4;

    const-string v7, "CMD_YAW"

    const v10, 0x7f080250

    move v8, v13

    move v9, v13

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$4;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 42
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$5;

    const-string v7, "CMD_PLANE_GEAR_UP"

    const v10, 0x7f080651

    move v8, v14

    move v9, v14

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$5;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PLANE_GEAR_UP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 52
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$6;

    const-string v7, "CMD_PLANE_GEAR_DOWN"

    const/4 v8, 0x5

    const/4 v9, 0x5

    const v10, 0x7f080650

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$6;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PLANE_GEAR_DOWN:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 62
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$7;

    const-string v7, "CMD_STOP"

    const/4 v8, 0x6

    const/4 v9, 0x6

    const v10, 0x7f080654

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$7;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_STOP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 69
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$8;

    const-string v7, "CMD_TAKE_PICTURE"

    const/4 v8, 0x7

    const/4 v9, 0x7

    const v10, 0x7f080248

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$8;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 76
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$9;

    const-string v7, "CMD_LOOPING"

    const/16 v8, 0x8

    const/16 v9, 0x8

    const v10, 0x7f080237

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$9;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_LOOPING:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 83
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$10;

    const-string v7, "CMD_BACKSWAP"

    const/16 v8, 0x9

    const/16 v9, 0x9

    const v10, 0x7f080220

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$10;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_BACKSWAP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 90
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$11;

    const-string v7, "CMD_BARREL_ROLL_LEFT"

    const/16 v8, 0xa

    const/16 v9, 0xa

    const v10, 0x7f080221

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$11;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_BARREL_ROLL_LEFT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 97
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$12;

    const-string v7, "CMD_BARREL_ROLL_RIGHT"

    const/16 v8, 0xb

    const/16 v9, 0xb

    const v10, 0x7f080222

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$12;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_BARREL_ROLL_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 104
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$13;

    const-string v7, "CMD_QUAD_MODE"

    const/16 v8, 0xc

    const/16 v9, 0xc

    const v10, 0x7f080240

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$13;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_QUAD_MODE:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    .line 10
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_TURN_LEFT_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v1, v0, v12

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v1, v0, v13

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PLANE_GEAR_UP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_PLANE_GEAR_DOWN:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_STOP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_LOOPING:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_BACKSWAP:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_BARREL_ROLL_LEFT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_BARREL_ROLL_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->CMD_QUAD_MODE:Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .param p5, "analog"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->mId:I

    .line 123
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->mResId:I

    .line 124
    iput-boolean p5, p0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->mAnalog:Z

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIZLcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand$1;

    .prologue
    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;-><init>(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$100(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->getSpeed(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(ILcom/parrot/freeflight/core/model/DelosModel;I)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DelosModel;
    .param p2, "x2"    # I

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->sendCommand(ILcom/parrot/freeflight/core/model/DelosModel;I)V

    return-void
.end method

.method private static getSpeed(II)I
    .locals 3
    .param p0, "flyingMode"    # I
    .param p1, "planeGear"    # I

    .prologue
    const/4 v2, 0x2

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "speed":I
    if-eq p0, v2, :cond_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 186
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 200
    :goto_0
    if-ne p0, v2, :cond_1

    neg-int v0, v0

    .line 202
    :cond_1
    return v0

    .line 188
    :pswitch_0
    const/4 v0, 0x1

    .line 189
    goto :goto_0

    .line 191
    :pswitch_1
    const/4 v0, 0x2

    .line 192
    goto :goto_0

    .line 194
    :pswitch_2
    const/4 v0, 0x3

    .line 195
    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static sendCommand(ILcom/parrot/freeflight/core/model/DelosModel;I)V
    .locals 4
    .param p0, "flyingMode"    # I
    .param p1, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newSpeed"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 164
    :pswitch_0
    invoke-virtual {p1, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXFlyingMode(I)V

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-virtual {p1, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXPlaneGear(I)V

    .line 168
    if-nez p0, :cond_0

    .line 169
    if-lez p2, :cond_1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXFlyingMode(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 173
    :pswitch_2
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXPlaneGear(I)V

    goto :goto_0

    .line 176
    :pswitch_3
    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXPlaneGear(I)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->mId:I

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 133
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->mResId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/WingXPlaneCommand;->mAnalog:Z

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method
