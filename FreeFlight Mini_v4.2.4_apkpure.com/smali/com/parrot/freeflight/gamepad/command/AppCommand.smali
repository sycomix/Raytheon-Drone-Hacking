.class public abstract enum Lcom/parrot/freeflight/gamepad/command/AppCommand;
.super Ljava/lang/Enum;
.source "AppCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/AppCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/Command",
        "<",
        "Landroid/view/inputmethod/BaseInputConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/AppCommand;

.field public static final enum CMD_BACK:Lcom/parrot/freeflight/gamepad/command/AppCommand;

.field public static final enum CMD_DOWN:Lcom/parrot/freeflight/gamepad/command/AppCommand;

.field public static final enum CMD_LEFT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

.field public static final enum CMD_RIGHT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

.field public static final enum CMD_UP:Lcom/parrot/freeflight/gamepad/command/AppCommand;

.field public static final enum CMD_VALIDATE:Lcom/parrot/freeflight/gamepad/command/AppCommand;


# instance fields
.field private final mId:I

.field private final mRepeatable:Z

.field private final mRepeatingIntervalInMs:I

.field private final mResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final mShouldAccelerate:Z

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x2

    const/16 v3, 0x12c

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/AppCommand$1;

    const-string v1, "CMD_BACK"

    const v4, 0x7f08021f

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/gamepad/command/AppCommand$1;-><init>(Ljava/lang/String;IIIIZIZ)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_BACK:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    .line 21
    new-instance v4, Lcom/parrot/freeflight/gamepad/command/AppCommand$2;

    const-string v5, "CMD_VALIDATE"

    const/16 v7, 0x12d

    const v8, 0x7f08024a

    move v6, v13

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/parrot/freeflight/gamepad/command/AppCommand$2;-><init>(Ljava/lang/String;IIIIZIZ)V

    sput-object v4, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_VALIDATE:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    .line 29
    new-instance v4, Lcom/parrot/freeflight/gamepad/command/AppCommand$3;

    const-string v5, "CMD_LEFT"

    const/16 v7, 0x12e

    move v6, v14

    move v8, v2

    move v9, v2

    move v10, v13

    move v11, v3

    move v12, v13

    invoke-direct/range {v4 .. v12}, Lcom/parrot/freeflight/gamepad/command/AppCommand$3;-><init>(Ljava/lang/String;IIIIZIZ)V

    sput-object v4, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_LEFT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    .line 36
    new-instance v4, Lcom/parrot/freeflight/gamepad/command/AppCommand$4;

    const-string v5, "CMD_RIGHT"

    const/16 v7, 0x12f

    move v6, v15

    move v8, v2

    move v9, v2

    move v10, v13

    move v11, v3

    move v12, v13

    invoke-direct/range {v4 .. v12}, Lcom/parrot/freeflight/gamepad/command/AppCommand$4;-><init>(Ljava/lang/String;IIIIZIZ)V

    sput-object v4, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_RIGHT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    .line 43
    new-instance v4, Lcom/parrot/freeflight/gamepad/command/AppCommand$5;

    const-string v5, "CMD_UP"

    const/4 v6, 0x4

    const/16 v7, 0x130

    move v8, v2

    move v9, v2

    move v10, v13

    move v11, v3

    move v12, v13

    invoke-direct/range {v4 .. v12}, Lcom/parrot/freeflight/gamepad/command/AppCommand$5;-><init>(Ljava/lang/String;IIIIZIZ)V

    sput-object v4, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_UP:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    .line 50
    new-instance v4, Lcom/parrot/freeflight/gamepad/command/AppCommand$6;

    const-string v5, "CMD_DOWN"

    const/4 v6, 0x5

    const/16 v7, 0x131

    move v8, v2

    move v9, v2

    move v10, v13

    move v11, v3

    move v12, v13

    invoke-direct/range {v4 .. v12}, Lcom/parrot/freeflight/gamepad/command/AppCommand$6;-><init>(Ljava/lang/String;IIIIZIZ)V

    sput-object v4, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_DOWN:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/AppCommand;

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_BACK:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_VALIDATE:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v1, v0, v13

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_LEFT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v1, v0, v14

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_RIGHT:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_UP:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/gamepad/command/AppCommand;->CMD_DOWN:Lcom/parrot/freeflight/gamepad/command/AppCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZIZ)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .param p5, "type"    # I
    .param p6, "repeatable"    # Z
    .param p7, "repeatingIntervalInMs"    # I
    .param p8, "shouldAccelerate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZIZ)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mId:I

    .line 70
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mResId:I

    .line 71
    iput-boolean p6, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mRepeatable:Z

    .line 72
    iput p5, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mType:I

    .line 73
    iput p7, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mRepeatingIntervalInMs:I

    .line 74
    iput-boolean p8, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mShouldAccelerate:Z

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIZIZLcom/parrot/freeflight/gamepad/command/AppCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # I
    .param p8, "x7"    # Z
    .param p9, "x8"    # Lcom/parrot/freeflight/gamepad/command/AppCommand$1;

    .prologue
    .line 11
    invoke-direct/range {p0 .. p8}, Lcom/parrot/freeflight/gamepad/command/AppCommand;-><init>(Ljava/lang/String;IIIIZIZ)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/inputmethod/BaseInputConnection;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/inputmethod/BaseInputConnection;
    .param p1, "x1"    # I

    .prologue
    .line 11
    invoke-static {p0, p1}, Lcom/parrot/freeflight/gamepad/command/AppCommand;->sendKeyEvent(Landroid/view/inputmethod/BaseInputConnection;I)V

    return-void
.end method

.method private static sendKeyEvent(Landroid/view/inputmethod/BaseInputConnection;I)V
    .locals 4
    .param p0, "inputConnection"    # Landroid/view/inputmethod/BaseInputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "keyCode"    # I

    .prologue
    .line 113
    const-string v1, "AppCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyEvent() called with: keyCode = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 115
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 116
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 117
    .restart local v0    # "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 118
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/AppCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/AppCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/AppCommand;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/AppCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/AppCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/AppCommand;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mId:I

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mRepeatingIntervalInMs:I

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 84
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mResId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mType:I

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mRepeatable:Z

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/command/AppCommand;->mShouldAccelerate:Z

    return v0
.end method
