.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionCall.java"


# instance fields
.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_CALL:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;->mUuid:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;->mUuid:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;->mUuid:Ljava/lang/String;

    .line 33
    return-void
.end method
