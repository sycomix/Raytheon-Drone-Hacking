.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionTakePicture;
.super Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.source "ARRoadPlanInstructionTakePicture.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_TAKEPICTURE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;-><init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V

    .line 16
    return-void
.end method
