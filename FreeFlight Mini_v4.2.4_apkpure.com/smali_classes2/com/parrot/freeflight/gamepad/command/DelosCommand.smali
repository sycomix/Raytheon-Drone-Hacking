.class public abstract enum Lcom/parrot/freeflight/gamepad/command/DelosCommand;
.super Ljava/lang/Enum;
.source "DelosCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/DelosCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/Command",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_AUTO_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_FAST_TURN_BACK:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_FAST_TURN_LEFT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_FAST_TURN_RIGHT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_FLIP_BACK:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_FLIP_FRONT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_FLIP_LEFT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_FLIP_RIGHT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

.field public static final enum CMD_YAW:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

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
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/DelosCommand$1;

    const-string v1, "CMD_GAZ"

    const v4, 0x7f08022f

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$1;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 19
    new-instance v3, Lcom/parrot/freeflight/gamepad/command/DelosCommand$2;

    const-string v4, "CMD_PITCH"

    const v7, 0x7f08023b

    move v6, v5

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$2;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 26
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$3;

    const-string v7, "CMD_ROLL"

    const v10, 0x7f080245

    move v8, v12

    move v9, v12

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$3;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 33
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$4;

    const-string v7, "CMD_YAW"

    const v10, 0x7f080250

    move v8, v13

    move v9, v13

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$4;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 40
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$5;

    const-string v7, "CMD_TAKE_OFF"

    const v10, 0x7f080249

    move v8, v14

    move v9, v14

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$5;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 60
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$6;

    const-string v7, "CMD_FLIP_FRONT"

    const/4 v8, 0x5

    const/4 v9, 0x5

    const v10, 0x7f08022a

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$6;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_FRONT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 67
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$7;

    const-string v7, "CMD_FLIP_BACK"

    const/4 v8, 0x6

    const/4 v9, 0x6

    const v10, 0x7f080229

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$7;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_BACK:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 74
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$8;

    const-string v7, "CMD_FLIP_LEFT"

    const/4 v8, 0x7

    const/4 v9, 0x7

    const v10, 0x7f08022b

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$8;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_LEFT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 81
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$9;

    const-string v7, "CMD_FLIP_RIGHT"

    const/16 v8, 0x8

    const/16 v9, 0x8

    const v10, 0x7f08022c

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$9;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_RIGHT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 88
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$10;

    const-string v7, "CMD_TAKE_PICTURE"

    const/16 v8, 0x9

    const/16 v9, 0x9

    const v10, 0x7f080248

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$10;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 95
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$11;

    const-string v7, "CMD_FAST_TURN_LEFT"

    const/16 v8, 0xa

    const/16 v9, 0xa

    const v10, 0x7f080227

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$11;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_LEFT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 102
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$12;

    const-string v7, "CMD_FAST_TURN_RIGHT"

    const/16 v8, 0xb

    const/16 v9, 0xb

    const v10, 0x7f080228

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$12;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_RIGHT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 109
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$13;

    const-string v7, "CMD_FAST_TURN_BACK"

    const/16 v8, 0xc

    const/16 v9, 0xc

    const v10, 0x7f080226

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$13;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_BACK:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 116
    new-instance v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand$14;

    const-string v7, "CMD_AUTO_TAKE_OFF"

    const/16 v8, 0xd

    const/16 v9, 0xd

    const v10, 0x7f08021e

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/parrot/freeflight/gamepad/command/DelosCommand$14;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_AUTO_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    .line 10
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_GAZ:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_PITCH:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_ROLL:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v1, v0, v12

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_YAW:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v1, v0, v13

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_FRONT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_BACK:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_LEFT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FLIP_RIGHT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_TAKE_PICTURE:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_LEFT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_RIGHT:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_FAST_TURN_BACK:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->CMD_AUTO_TAKE_OFF:Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/DelosCommand;

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
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput p3, p0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->mId:I

    .line 134
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->mResId:I

    .line 135
    iput-boolean p5, p0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->mAnalog:Z

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIZLcom/parrot/freeflight/gamepad/command/DelosCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/parrot/freeflight/gamepad/command/DelosCommand$1;

    .prologue
    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/gamepad/command/DelosCommand;-><init>(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/DelosCommand;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/DelosCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/DelosCommand;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->mId:I

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 145
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->mResId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/DelosCommand;->mAnalog:Z

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method
