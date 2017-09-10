.class public Lcom/parrot/freeflight/core/model/ClawAccessory;
.super Ljava/lang/Object;
.source "ClawAccessory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/ClawAccessory$State;
    }
.end annotation


# static fields
.field public static final STATE_CLOSED:I = 0x2

.field public static final STATE_CLOSING:I = 0x3

.field public static final STATE_OPENED:I = 0x0

.field public static final STATE_OPENING:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1


# instance fields
.field private mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mId:I

.field private mState:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "state"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mState:I

    .line 34
    iput p1, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mId:I

    .line 35
    iput p2, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mState:I

    .line 36
    return-void
.end method

.method private sendCommand()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v1, :cond_0

    .line 74
    iget v1, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 84
    :pswitch_0
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;

    .line 87
    .local v0, "action":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;
    :goto_0
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;->eARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    iget v2, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mId:I

    invoke-virtual {v1, v2, v0}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestClawAction(ILcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;)V

    .line 91
    .end local v0    # "action":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;
    :cond_0
    return-void

    .line 76
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_OPEN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;

    .line 77
    .restart local v0    # "action":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;
    goto :goto_0

    .line 80
    .end local v0    # "action":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_CLOSE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;

    .line 81
    .restart local v0    # "action":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORY_CLAWCONTROL_ACTION_ENUM;
    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mId:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mState:I

    return v0
.end method

.method public setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V
    .locals 0
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .line 40
    return-void
.end method

.method public switchState()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 61
    iget v0, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mState:I

    if-nez v0, :cond_1

    .line 62
    iput v1, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mState:I

    .line 63
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ClawAccessory;->sendCommand()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mState:I

    if-ne v0, v1, :cond_0

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mState:I

    .line 66
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ClawAccessory;->sendCommand()V

    goto :goto_0
.end method

.method public update(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 52
    iget v0, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mState:I

    if-eq v0, p1, :cond_0

    .line 53
    iput p1, p0, Lcom/parrot/freeflight/core/model/ClawAccessory;->mState:I

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
