.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionWait.java"


# instance fields
.field private mDuration:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_WAIT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 13
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;->mDuration:D

    .line 18
    return-void
.end method


# virtual methods
.method public getDuration()D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;->mDuration:D

    return-wide v0
.end method

.method public setArgs(D)V
    .locals 1
    .param p1, "duration"    # D

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;->mDuration:D

    .line 23
    return-void
.end method

.method public setDuration(D)V
    .locals 1
    .param p1, "duration"    # D

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;->mDuration:D

    .line 28
    return-void
.end method
