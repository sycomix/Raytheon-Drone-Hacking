.class public abstract enum Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;
.super Ljava/lang/Enum;
.source "ClawCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/AccessoryCommand",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

.field public static final enum CMD_OPEN_CLOSE:Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;


# instance fields
.field private final mId:I

.field private final mResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand$1;

    const-string v1, "CMD_OPEN_CLOSE"

    const/16 v2, 0x320

    const v3, 0x7f080224

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand$1;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->CMD_OPEN_CLOSE:Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->CMD_OPEN_CLOSE:Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->mId:I

    .line 40
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->mResId:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/parrot/freeflight/gamepad/command/accessories/ClawCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand$1;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;

    return-object v0
.end method


# virtual methods
.method public getAccessoryType()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x2

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->mId:I

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 50
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/accessories/ClawCommand;->mResId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method
