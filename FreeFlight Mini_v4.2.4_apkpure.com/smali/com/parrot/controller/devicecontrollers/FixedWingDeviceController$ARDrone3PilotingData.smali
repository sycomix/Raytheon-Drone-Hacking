.class Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;
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
    name = "ARDrone3PilotingData"
.end annotation


# instance fields
.field private active:Z

.field private gaz:F

.field private pitch:F

.field private roll:F

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

.field private yaw:F


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 957
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->this$0:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->active:Z

    .line 959
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->roll:F

    .line 960
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->pitch:F

    .line 961
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->yaw:F

    .line 962
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->gaz:F

    .line 963
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->active:Z

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;
    .param p1, "x1"    # Z

    .prologue
    .line 948
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->active:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    .prologue
    .line 948
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->roll:F

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 948
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->roll:F

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    .prologue
    .line 948
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->pitch:F

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 948
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->pitch:F

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    .prologue
    .line 948
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->yaw:F

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 948
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->yaw:F

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    .prologue
    .line 948
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->gaz:F

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 948
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->gaz:F

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 967
    const/4 v2, 0x0

    .line 971
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :goto_0
    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->active:Z

    iput-boolean v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->active:Z

    .line 979
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->roll:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->roll:F

    .line 980
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->pitch:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->pitch:F

    .line 981
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->yaw:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->yaw:F

    .line 982
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->gaz:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->gaz:F

    .line 984
    return-object v2

    .line 973
    :catch_0
    move-exception v1

    .line 975
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
