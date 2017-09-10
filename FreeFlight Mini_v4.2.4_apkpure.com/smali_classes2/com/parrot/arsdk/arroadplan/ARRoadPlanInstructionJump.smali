.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionJump.java"


# instance fields
.field private mJumpArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_JUMP:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 12
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;->ARROADPLAN_JumpArg_HIGH:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;->mJumpArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;

    .line 17
    return-void
.end method


# virtual methods
.method public getJumpArg()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;->mJumpArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;

    return-object v0
.end method

.method public setArgs(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;)V
    .locals 0
    .param p1, "jumpArg"    # Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;->mJumpArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;

    .line 22
    return-void
.end method

.method public setJumpArg(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;)V
    .locals 0
    .param p1, "jumpArg"    # Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;->mJumpArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;

    .line 32
    return-void
.end method
