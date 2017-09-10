.class public Lcom/parrot/freeflight/core/model/LightAccessory;
.super Ljava/lang/Object;
.source "LightAccessory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/LightAccessory$State;
    }
.end annotation


# static fields
.field public static final STATE_BLINKED:I = 0x1

.field public static final STATE_FIXED:I = 0x0

.field public static final STATE_OSCILLATED:I = 0x2

.field public static final STATE_UNKNOWN:I = -0x1


# instance fields
.field private mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mId:I

.field private mIntensity:I

.field private mState:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "state"    # I
    .param p3, "intensity"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mState:I

    .line 35
    iput p1, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mId:I

    .line 36
    iput p2, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mState:I

    .line 37
    iput p3, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mIntensity:I

    .line 38
    return-void
.end method

.method private sendCommand()V
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v1, :cond_0

    .line 88
    iget v1, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 97
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_FIXED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;

    .line 100
    .local v0, "mode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    iget v2, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mId:I

    iget v3, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mIntensity:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestSetUsbLightsIntensity(ILcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;I)V

    .line 102
    .end local v0    # "mode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;
    :cond_0
    return-void

    .line 90
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_BLINKED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;

    .line 91
    .restart local v0    # "mode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;
    goto :goto_0

    .line 93
    .end local v0    # "mode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_OSCILLATED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;

    .line 94
    .restart local v0    # "mode":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_LIGHTCONTROL_MODE_ENUM;
    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mId:I

    return v0
.end method

.method public getIntensity()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mIntensity:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mState:I

    return v0
.end method

.method public setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V
    .locals 0
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .line 42
    return-void
.end method

.method public setIntensity(I)V
    .locals 1
    .param p1, "intensity"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 69
    iput p1, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mIntensity:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mState:I

    .line 71
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/LightAccessory;->sendCommand()V

    .line 73
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 76
    iget v0, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mState:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_1

    .line 77
    iput p1, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mState:I

    .line 78
    iget v0, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mState:I

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mIntensity:I

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/LightAccessory;->sendCommand()V

    .line 83
    :cond_1
    return-void
.end method

.method public update(II)Z
    .locals 2
    .param p1, "state"    # I
    .param p2, "intensity"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mState:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mIntensity:I

    if-eq p2, v1, :cond_1

    .line 60
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mState:I

    .line 61
    iput p2, p0, Lcom/parrot/freeflight/core/model/LightAccessory;->mIntensity:I

    .line 62
    const/4 v0, 0x1

    .line 64
    :cond_1
    return v0
.end method
