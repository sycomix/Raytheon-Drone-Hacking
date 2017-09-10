.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionArc.java"


# instance fields
.field private mAngle:D

.field private mMaxSpeed:D

.field private mRadius:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_ARC:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 11
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mMaxSpeed:D

    .line 12
    const-wide v0, 0x4056800000000000L    # 90.0

    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mAngle:D

    .line 13
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mRadius:D

    .line 18
    return-void
.end method


# virtual methods
.method public getAngle()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mAngle:D

    return-wide v0
.end method

.method public getMaxSpeed()D
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mMaxSpeed:D

    return-wide v0
.end method

.method public getRadius()D
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mRadius:D

    return-wide v0
.end method

.method public setAngle(D)V
    .locals 1
    .param p1, "angle"    # D

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mAngle:D

    .line 50
    return-void
.end method

.method public setArgs(DDD)V
    .locals 1
    .param p1, "maxSpeed"    # D
    .param p3, "angle"    # D
    .param p5, "radius"    # D

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mMaxSpeed:D

    .line 23
    iput-wide p3, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mAngle:D

    .line 24
    iput-wide p5, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mRadius:D

    .line 25
    return-void
.end method

.method public setMaxSpeed(D)V
    .locals 1
    .param p1, "maxSpeed"    # D

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mMaxSpeed:D

    .line 45
    return-void
.end method

.method public setrRadius(D)V
    .locals 1
    .param p1, "radius"    # D

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->mRadius:D

    .line 55
    return-void
.end method
