.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionStraight.java"


# instance fields
.field private mDistance:D

.field private mMaxSpeed:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 18
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_STRAIGHT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 13
    iput-wide v2, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->mMaxSpeed:D

    .line 14
    iput-wide v2, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->mDistance:D

    .line 19
    return-void
.end method


# virtual methods
.method public getDistance()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->mDistance:D

    return-wide v0
.end method

.method public getMaxSpeed()D
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->mMaxSpeed:D

    return-wide v0
.end method

.method public setArgs(DD)V
    .locals 1
    .param p1, "maxSpeed"    # D
    .param p3, "distance"    # D

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->mMaxSpeed:D

    .line 24
    iput-wide p3, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->mDistance:D

    .line 25
    return-void
.end method

.method public setDistance(D)V
    .locals 1
    .param p1, "distance"    # D

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->mDistance:D

    .line 45
    return-void
.end method

.method public setMaxSpeed(D)V
    .locals 1
    .param p1, "maxSpeed"    # D

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->mMaxSpeed:D

    .line 40
    return-void
.end method
