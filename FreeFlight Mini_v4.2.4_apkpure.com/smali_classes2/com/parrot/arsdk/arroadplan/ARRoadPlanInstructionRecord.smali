.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionRecord.java"


# instance fields
.field private mEnabled:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_RECORD:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;->mEnabled:I

    .line 18
    return-void
.end method


# virtual methods
.method public getEnabled()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;->mEnabled:I

    return v0
.end method

.method public setArgs(I)V
    .locals 0
    .param p1, "enabled"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;->mEnabled:I

    .line 23
    return-void
.end method

.method public setEnabled(I)V
    .locals 0
    .param p1, "enabled"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;->mEnabled:I

    .line 33
    return-void
.end method
