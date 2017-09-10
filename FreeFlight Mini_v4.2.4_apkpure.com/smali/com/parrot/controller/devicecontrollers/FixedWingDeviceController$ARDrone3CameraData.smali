.class Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;
.super Ljava/lang/Object;
.source "FixedWingDeviceController.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARDrone3CameraData"
.end annotation


# instance fields
.field private pan:F

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

.field private tilt:F


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 994
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->this$0:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    iput v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->tilt:F

    .line 996
    iput v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->pan:F

    .line 997
    return-void
.end method

.method static synthetic access$700(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    .prologue
    .line 988
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->tilt:F

    return v0
.end method

.method static synthetic access$702(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;
    .param p1, "x1"    # F

    .prologue
    .line 988
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->tilt:F

    return p1
.end method

.method static synthetic access$800(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    .prologue
    .line 988
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->pan:F

    return v0
.end method

.method static synthetic access$802(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;
    .param p1, "x1"    # F

    .prologue
    .line 988
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->pan:F

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1001
    const/4 v2, 0x0

    .line 1005
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_0
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->tilt:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->tilt:F

    .line 1013
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->pan:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->pan:F

    .line 1015
    return-object v2

    .line 1007
    :catch_0
    move-exception v1

    .line 1009
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
