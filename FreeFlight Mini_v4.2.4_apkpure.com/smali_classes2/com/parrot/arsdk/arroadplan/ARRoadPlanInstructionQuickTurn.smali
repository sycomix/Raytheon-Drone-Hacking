.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionQuickTurn.java"


# instance fields
.field private mAngle:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_QUICKTURN:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 12
    const-wide v0, 0x4056800000000000L    # 90.0

    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;->mAngle:D

    .line 17
    return-void
.end method


# virtual methods
.method public getAngle()D
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;->mAngle:D

    return-wide v0
.end method

.method public setAngle(D)V
    .locals 1
    .param p1, "angle"    # D

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;->mAngle:D

    .line 32
    return-void
.end method

.method public setArgs(D)V
    .locals 1
    .param p1, "angle"    # D

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;->mAngle:D

    .line 22
    return-void
.end method
