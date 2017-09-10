.class public Lcom/parrot/freeflight/core/model/GunAccessory;
.super Ljava/lang/Object;
.source "GunAccessory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/GunAccessory$State;
    }
.end annotation


# static fields
.field public static final STATE_BUSY:I = 0x1

.field public static final STATE_READY:I = 0x0

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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mState:I

    .line 31
    iput p1, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mId:I

    .line 32
    iput p2, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mState:I

    .line 33
    return-void
.end method


# virtual methods
.method public fire()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    iget v1, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mId:I

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestGunFire(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mId:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mState:I

    return v0
.end method

.method public setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V
    .locals 0
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mDeviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .line 37
    return-void
.end method

.method public update(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 49
    iget v0, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mState:I

    if-eq v0, p1, :cond_0

    .line 50
    iput p1, p0, Lcom/parrot/freeflight/core/model/GunAccessory;->mState:I

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
