.class public Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
.super Ljava/lang/Object;
.source "GamePadJoystickParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams$JoystickSelectedParameterIndex;,
        Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams$JoystickParameterIndex;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEFT_JOYSTICK_X_EXPONENTIAL_INDEX:I = 0x2

.field public static final LEFT_JOYSTICK_X_LINEAR_INDEX:I = 0x0

.field public static final LEFT_JOYSTICK_X_SELECTED_PARAMETER:I = 0x0

.field public static final LEFT_JOYSTICK_Y_EXPONENTIAL_INDEX:I = 0x3

.field public static final LEFT_JOYSTICK_Y_LINEAR_INDEX:I = 0x1

.field public static final LEFT_JOYSTICK_Y_SELECTED_PARAMETER:I = 0x1

.field public static final PARAMETER_SIZE:I = 0x8

.field public static final RIGHT_JOYSTICK_X_EXPONENTIAL_INDEX:I = 0x6

.field public static final RIGHT_JOYSTICK_X_LINEAR_INDEX:I = 0x4

.field public static final RIGHT_JOYSTICK_X_SELECTED_PARAMETER:I = 0x2

.field public static final RIGHT_JOYSTICK_Y_EXPONENTIAL_INDEX:I = 0x7

.field public static final RIGHT_JOYSTICK_Y_LINEAR_INDEX:I = 0x5

.field public static final RIGHT_JOYSTICK_Y_SELECTED_PARAMETER:I = 0x3

.field public static final SELECTED_PARAMETER_SIZE:I = 0x4


# instance fields
.field private mJoystickSelectedParameters:[I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSensibilities:[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mJoystickSelectedParameters:[I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mJoystickSelectedParameters:[I

    .line 65
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mSensibilities:[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;[I)V
    .locals 4
    .param p1, "sensibilities"    # [Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "joystickSelectedParameters"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mJoystickSelectedParameters:[I

    .line 52
    if-eqz p1, :cond_1

    array-length v0, p1

    if-ne v0, v3, :cond_1

    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mSensibilities:[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    .line 58
    :goto_0
    if-eqz p2, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mJoystickSelectedParameters:[I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    :cond_0
    return-void

    .line 55
    :cond_1
    new-array v0, v3, [Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mSensibilities:[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getFilterAtIndex(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mSensibilities:[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mJoystickSelectedParameters:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mSensibilities:[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterAtIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mJoystickSelectedParameters:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSelectedParameters()[I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mJoystickSelectedParameters:[I

    return-object v0
.end method

.method public getSensibilities()[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mSensibilities:[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    return-object v0
.end method

.method public setParameter(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "param"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mSensibilities:[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->setValue(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setSelectedParameter(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mJoystickSelectedParameters:[I

    aput p2, v0, p1

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mJoystickSelectedParameters:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->mSensibilities:[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 110
    return-void
.end method
