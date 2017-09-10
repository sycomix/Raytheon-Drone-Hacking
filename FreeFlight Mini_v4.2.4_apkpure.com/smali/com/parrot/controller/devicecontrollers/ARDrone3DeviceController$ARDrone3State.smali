.class Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
.super Ljava/lang/Object;
.source "ARDrone3DeviceController.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARDrone3State"
.end annotation


# instance fields
.field private batteryLevel:I

.field private cameraData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

.field private emergency:Z

.field private flying:Z

.field private pilotingData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 929
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->batteryLevel:I

    .line 931
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    invoke-direct {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    .line 932
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    invoke-direct {v0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    .line 933
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->emergency:Z

    .line 934
    iput-boolean v1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->flying:Z

    .line 935
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->emergency:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    .param p1, "x1"    # Z

    .prologue
    .line 920
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->emergency:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 920
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->batteryLevel:I

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->flying:Z

    return v0
.end method

.method static synthetic access$902(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    .param p1, "x1"    # Z

    .prologue
    .line 920
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->flying:Z

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 939
    const/4 v2, 0x0

    .line 943
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->batteryLevel:I

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->batteryLevel:I

    .line 951
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    iput-object v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    .line 952
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    iput-object v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    .line 953
    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->emergency:Z

    iput-boolean v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->emergency:Z

    .line 954
    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->flying:Z

    iput-boolean v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->flying:Z

    .line 956
    return-object v2

    .line 945
    :catch_0
    move-exception v1

    .line 947
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
