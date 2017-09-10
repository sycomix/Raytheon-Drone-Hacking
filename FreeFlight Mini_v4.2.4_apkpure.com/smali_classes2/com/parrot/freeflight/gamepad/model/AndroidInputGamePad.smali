.class public Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;
.super Lcom/parrot/freeflight/gamepad/GamePad;
.source "AndroidInputGamePad.java"


# static fields
.field private static final CHECK_PERIOD_MS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "AndroidInputGamePad"


# instance fields
.field private final mCheckConnection:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInputDevice:Landroid/view/InputDevice;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsBleDevice:Z


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;Z)V
    .locals 2
    .param p1, "inputDevice"    # Landroid/view/InputDevice;
    .param p2, "isBleDevice"    # Z

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/parrot/freeflight/gamepad/GamePad;-><init>(II)V

    .line 63
    new-instance v0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad$1;-><init>(Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mCheckConnection:Ljava/lang/Runnable;

    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mInputDevice:Landroid/view/InputDevice;

    .line 28
    iput-boolean p2, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mIsBleDevice:Z

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mState:I

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mHandler:Landroid/os/Handler;

    .line 32
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->checkConnection()V

    return-void
.end method

.method private checkConnection()V
    .locals 6

    .prologue
    .line 48
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mCheckConnection:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    move-result v1

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 52
    .local v0, "device":Landroid/view/InputDevice;
    if-nez v0, :cond_0

    .line 53
    const-string v1, "AndroidInputGamePad"

    const-string v2, "checkConnection: STATE_DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x1

    iput v1, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mState:I

    .line 56
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->notifyStateChange()V

    .line 57
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mCheckConnection:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->setSelected(Z)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public getButtonName(I)Ljava/lang/String;
    .locals 3
    .param p1, "keyCode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "buttonName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v2, "KEYCODE_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    const-string v2, "KEYCODE_MEDIA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KEYCODE_VOLUME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    :cond_0
    const-string v2, "KEYCODE_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 115
    const-string v0, "UNKNOW"

    .line 117
    :cond_2
    return-object v0

    .line 108
    :cond_3
    :try_start_1
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDpadName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    const-string v0, "DPAD"

    return-object v0
.end method

.method public getLeftJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 129
    const-string v0, "J1"

    return-object v0
.end method

.method public getLeftTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 141
    const-string v0, "L2"

    return-object v0
.end method

.method public getMappingImageId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 95
    const v0, 0x7f020184

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightJoystickName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 135
    const-string v0, "J2"

    return-object v0
.end method

.method public getRightTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 147
    const-string v0, "R2"

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBatteryLevel()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/parrot/freeflight/gamepad/GamePad;->setSelected(Z)V

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mState:I

    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mCheckConnection:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->mCheckConnection:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
