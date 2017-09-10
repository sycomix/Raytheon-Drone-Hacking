.class Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;
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
    name = "MiniDroneState"
.end annotation


# instance fields
.field private pilotingData:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V
    .locals 1

    .prologue
    .line 781
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->this$0:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    new-instance v0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    invoke-direct {v0, p1}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;-><init>(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->pilotingData:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    .line 783
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;)Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    .prologue
    .line 776
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->pilotingData:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 787
    const/4 v2, 0x0

    .line 791
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->pilotingData:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    iput-object v3, v2, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDroneState;->pilotingData:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController$MiniDronePilotingData;

    .line 799
    return-object v2

    .line 793
    :catch_0
    move-exception v1

    .line 795
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
