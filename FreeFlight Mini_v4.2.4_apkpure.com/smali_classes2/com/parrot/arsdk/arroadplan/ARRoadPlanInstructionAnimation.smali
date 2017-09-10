.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionAnimation.java"


# instance fields
.field private mAnimArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_ANIMATION:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 11
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;->ARROADPLAN_AnimArg_METRONOME:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;->mAnimArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;

    .line 16
    return-void
.end method


# virtual methods
.method public getAnimArg()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;->mAnimArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;

    return-object v0
.end method

.method public setAnimArg(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;)V
    .locals 0
    .param p1, "animArg"    # Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;->mAnimArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;

    .line 31
    return-void
.end method

.method public setArgs(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;)V
    .locals 0
    .param p1, "animArg"    # Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;->mAnimArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;

    .line 21
    return-void
.end method
