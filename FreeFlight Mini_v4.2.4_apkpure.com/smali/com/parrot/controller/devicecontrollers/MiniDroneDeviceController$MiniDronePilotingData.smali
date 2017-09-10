.class Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;
.super Ljava/lang/Object;
.source "MiniDroneDeviceController.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniDronePilotingData"
.end annotation


# instance fields
.field private active:Z

.field private gaz:F

.field private pitch:F

.field private roll:F

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

.field private yaw:F


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 812
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->active:Z

    .line 814
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->roll:F

    .line 815
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->pitch:F

    .line 816
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->yaw:F

    .line 817
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->gaz:F

    .line 818
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->active:Z

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;
    .param p1, "x1"    # Z

    .prologue
    .line 803
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->active:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    .prologue
    .line 803
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->roll:F

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 803
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->roll:F

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    .prologue
    .line 803
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->pitch:F

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 803
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->pitch:F

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    .prologue
    .line 803
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->yaw:F

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 803
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->yaw:F

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    .prologue
    .line 803
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->gaz:F

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 803
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->gaz:F

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 822
    const/4 v2, 0x0

    .line 826
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_0
    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->active:Z

    iput-boolean v3, v2, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->active:Z

    .line 834
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->roll:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->roll:F

    .line 835
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->pitch:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->pitch:F

    .line 836
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->yaw:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->yaw:F

    .line 837
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->gaz:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->gaz:F

    .line 839
    return-object v2

    .line 828
    :catch_0
    move-exception v1

    .line 830
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
