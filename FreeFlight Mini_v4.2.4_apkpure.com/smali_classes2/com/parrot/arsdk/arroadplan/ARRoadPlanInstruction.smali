.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
.super Ljava/lang/Object;
.source "ARRoadPlanInstruction.java"


# instance fields
.field protected mType:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;)V
    .locals 0
    .param p1, "type"    # Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;->mType:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 17
    return-void
.end method


# virtual methods
.method public getType()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;->mType:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    return-object v0
.end method
