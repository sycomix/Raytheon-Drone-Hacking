.class public abstract enum Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;
.super Ljava/lang/Enum;
.source "WingXQuadCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/Command",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_FAST_TURN_BACK:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_FAST_TURN_LEFT:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_FAST_TURN_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_FLYING_MODE_PLANE:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_FLYING_MODE_PLANE_BACKWARD:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_FLYING_MODE_PLANE_FORWARD:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field public static final enum CMD_YAW:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

.field private static final DEBUG_JOYSTICK:Z


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
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$1;

    const-string v1, "CMD_GAZ"

    const v4, 0x7f08022f

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$1;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 19
    new-instance v3, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$2;

    const-string v4, "CMD_PITCH"

    const v7, 0x7f08023b

    move v6, v5

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$2;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 26
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$3;

    const-string v7, "CMD_ROLL"

    const v10, 0x7f080245

    move v8, v12

    move v9, v12

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$3;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 33
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$4;

    const-string v7, "CMD_YAW"

    const v10, 0x7f080250

    move v8, v13

    move v9, v13

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$4;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 40
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$5;

    const-string v7, "CMD_TAKE_OFF"

    const v10, 0x7f080249

    move v8, v14

    move v9, v14

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$5;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 60
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$6;

    const-string v7, "CMD_TAKE_PICTURE"

    const/4 v8, 0x5

    const/4 v9, 0x5

    const v10, 0x7f080248

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$6;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 67
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$7;

    const-string v7, "CMD_FAST_TURN_LEFT"

    const/4 v8, 0x6

    const/4 v9, 0x6

    const v10, 0x7f080227

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$7;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_LEFT:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 74
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$8;

    const-string v7, "CMD_FAST_TURN_RIGHT"

    const/4 v8, 0x7

    const/4 v9, 0x7

    const v10, 0x7f080228

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$8;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 81
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$9;

    const-string v7, "CMD_FAST_TURN_BACK"

    const/16 v8, 0x8

    const/16 v9, 0x8

    const v10, 0x7f080226

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$9;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_BACK:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 88
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$10;

    const-string v7, "CMD_FLYING_MODE_PLANE_FORWARD"

    const/16 v8, 0x9

    const/16 v9, 0x9

    const v10, 0x7f08024e

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$10;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE_FORWARD:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 95
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$11;

    const-string v7, "CMD_FLYING_MODE_PLANE_BACKWARD"

    const/16 v8, 0xa

    const/16 v9, 0xa

    const v10, 0x7f08024d

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$11;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE_BACKWARD:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 102
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$12;

    const-string v7, "CMD_FLYING_MODE_PLANE"

    const/16 v8, 0xb

    const/16 v9, 0xb

    const v10, 0x7f08023f

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$12;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    .line 10
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v1, v0, v12

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v1, v0, v13

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_LEFT:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_RIGHT:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FAST_TURN_BACK:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE_FORWARD:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE_BACKWARD:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->CMD_FLYING_MODE_PLANE:Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->mId:I

    .line 119
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->mResId:I

    .line 120
    iput-boolean p5, p0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->mAnalog:Z

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIZLcom/parrot/freeflight/gamepad/command/WingXQuadCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand$1;

    .prologue
    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;-><init>(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->mId:I

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 129
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->mResId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/WingXQuadCommand;->mAnalog:Z

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method
