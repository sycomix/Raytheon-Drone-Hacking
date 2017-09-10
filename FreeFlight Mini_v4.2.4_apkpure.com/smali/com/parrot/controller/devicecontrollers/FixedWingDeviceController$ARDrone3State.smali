.class Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;
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
    name = "ARDrone3State"
.end annotation


# instance fields
.field private batteryLevel:I

.field private cameraData:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

.field private emergency:Z

.field private flying:Z

.field private pilotingData:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 917
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->this$0:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->batteryLevel:I

    .line 919
    new-instance v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    invoke-direct {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;-><init>(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    .line 920
    new-instance v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    invoke-direct {v0, p1}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;-><init>(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    .line 921
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->emergency:Z

    .line 922
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->flying:Z

    .line 923
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    .prologue
    .line 908
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->emergency:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;
    .param p1, "x1"    # Z

    .prologue
    .line 908
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->emergency:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    .prologue
    .line 908
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->batteryLevel:I

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    .prologue
    .line 908
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->flying:Z

    return v0
.end method

.method static synthetic access$902(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;
    .param p1, "x1"    # Z

    .prologue
    .line 908
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->flying:Z

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 927
    const/4 v2, 0x0

    .line 931
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :goto_0
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->batteryLevel:I

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->batteryLevel:I

    .line 939
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    iput-object v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3CameraData;

    .line 940
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    iput-object v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3PilotingData;

    .line 941
    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->emergency:Z

    iput-boolean v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->emergency:Z

    .line 942
    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->flying:Z

    iput-boolean v3, v2, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$ARDrone3State;->flying:Z

    .line 944
    return-object v2

    .line 933
    :catch_0
    move-exception v1

    .line 935
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
