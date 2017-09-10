.class public abstract enum Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;
.super Ljava/lang/Enum;
.source "UiControllerCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/Command",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/UIController;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

.field public static final enum CMD_OPEN_SETTINGS:Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;


# instance fields
.field private final mAnalog:Z

.field private final mId:I

.field private final mResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand$1;

    const-string v1, "CMD_OPEN_SETTINGS"

    const/16 v3, 0xc8

    const v4, 0x7f0803d7

    const/4 v6, 0x2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand$1;-><init>(Ljava/lang/String;IIIZI)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->CMD_OPEN_SETTINGS:Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->CMD_OPEN_SETTINGS:Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    aput-object v1, v0, v2

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZI)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .param p5, "analog"    # Z
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZI)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->mId:I

    .line 29
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->mResId:I

    .line 30
    iput-boolean p5, p0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->mAnalog:Z

    .line 31
    iput p6, p0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->mType:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIZILcom/parrot/freeflight/gamepad/command/UiControllerCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/parrot/freeflight/gamepad/command/UiControllerCommand$1;

    .prologue
    .line 10
    invoke-direct/range {p0 .. p6}, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;-><init>(Ljava/lang/String;IIIZI)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->mId:I

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->mResId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->mType:I

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/UiControllerCommand;->mAnalog:Z

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
