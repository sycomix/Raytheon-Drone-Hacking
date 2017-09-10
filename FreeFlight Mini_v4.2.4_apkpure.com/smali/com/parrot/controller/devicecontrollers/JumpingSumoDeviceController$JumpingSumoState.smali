.class Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;
.super Ljava/lang/Object;
.source "JumpingSumoDeviceController.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JumpingSumoState"
.end annotation


# instance fields
.field private dbgJumpMotorSpeed:F

.field private screenFlag:Z

.field private speed:F

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

.field private turnRatio:F


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 725
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->this$0:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->screenFlag:Z

    .line 727
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->speed:F

    .line 728
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->turnRatio:F

    .line 729
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->dbgJumpMotorSpeed:F

    .line 731
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->screenFlag:Z

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;
    .param p1, "x1"    # Z

    .prologue
    .line 709
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->screenFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    .prologue
    .line 709
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->speed:F

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;
    .param p1, "x1"    # F

    .prologue
    .line 709
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->speed:F

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    .prologue
    .line 709
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->turnRatio:F

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;
    .param p1, "x1"    # F

    .prologue
    .line 709
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->turnRatio:F

    return p1
.end method

.method static synthetic access$302(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;
    .param p1, "x1"    # F

    .prologue
    .line 709
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->dbgJumpMotorSpeed:F

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 735
    const/4 v2, 0x0

    .line 739
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->screenFlag:Z

    iput-boolean v3, v2, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->screenFlag:Z

    .line 747
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->speed:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->speed:F

    .line 748
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->turnRatio:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->turnRatio:F

    .line 749
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->dbgJumpMotorSpeed:F

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController$JumpingSumoState;->dbgJumpMotorSpeed:F

    .line 751
    return-object v2

    .line 741
    :catch_0
    move-exception v1

    .line 743
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
