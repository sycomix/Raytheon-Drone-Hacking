.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionGreenLed.java"


# instance fields
.field private mGreenLedArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

.field private mLit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_LEDGREEN:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 12
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;->ARROADPLAN_SideArg_BOTH:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->mGreenLedArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->mLit:I

    .line 18
    return-void
.end method


# virtual methods
.method public getGreenLedLitArg()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->mLit:I

    return v0
.end method

.method public getGreenLedSideArg()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->mGreenLedArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

    return-object v0
.end method

.method public setArgs(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;I)V
    .locals 0
    .param p1, "greenLedArg"    # Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;
    .param p2, "lit"    # I

    .prologue
    .line 22
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->mGreenLedArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

    .line 23
    iput p2, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->mLit:I

    .line 24
    return-void
.end method

.method public setGreenLedArg(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;)V
    .locals 0
    .param p1, "greenLedArg"    # Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->mGreenLedArg:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

    .line 39
    return-void
.end method

.method public setLit(I)V
    .locals 0
    .param p1, "lit"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->mLit:I

    .line 44
    return-void
.end method
