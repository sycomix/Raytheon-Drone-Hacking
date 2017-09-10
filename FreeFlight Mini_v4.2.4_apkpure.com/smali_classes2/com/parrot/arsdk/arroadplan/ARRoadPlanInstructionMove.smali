.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionMove.java"


# instance fields
.field private mAngularSpeed:D

.field private mSpeed:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_MOVE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 11
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->mSpeed:D

    .line 12
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->mAngularSpeed:D

    .line 17
    return-void
.end method


# virtual methods
.method public getAngularSpeed()D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->mAngularSpeed:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->mSpeed:D

    return-wide v0
.end method

.method public setAngularSpeed(D)V
    .locals 1
    .param p1, "angularSpeed"    # D

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->mAngularSpeed:D

    .line 43
    return-void
.end method

.method public setArgs(DD)V
    .locals 1
    .param p1, "speed"    # D
    .param p3, "angularSpeed"    # D

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->mSpeed:D

    .line 22
    iput-wide p3, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->mAngularSpeed:D

    .line 23
    return-void
.end method

.method public setSpeed(D)V
    .locals 1
    .param p1, "speed"    # D

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->mSpeed:D

    .line 38
    return-void
.end method
