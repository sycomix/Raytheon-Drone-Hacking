.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionPosture.java"


# instance fields
.field private mPostureArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_POSTURE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 11
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;->ARROADPLAN_PostureArg_JUMPER:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;->mPostureArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;

    .line 16
    return-void
.end method


# virtual methods
.method public getPostureArg()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;->mPostureArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;

    return-object v0
.end method

.method public setArgs(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;)V
    .locals 0
    .param p1, "postureArg"    # Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;->mPostureArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;

    .line 21
    return-void
.end method

.method public setPostureArg(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;)V
    .locals 0
    .param p1, "postureArg"    # Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;->mPostureArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;

    .line 31
    return-void
.end method
