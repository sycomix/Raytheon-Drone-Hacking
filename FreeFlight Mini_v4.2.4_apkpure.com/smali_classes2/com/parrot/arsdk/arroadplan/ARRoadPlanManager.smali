.class public Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;
.super Ljava/lang/Object;
.source "ARRoadPlanManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mARROADPLAN_Script_ptr:J

.field private nativeManager:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    .line 81
    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->mARROADPLAN_Script_ptr:J

    .line 92
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v1, "ARRoadPlanManager ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method private native nativeAllocateMemory(I)J
.end method

.method private native nativeBuildFromBufferJSSTree(Ljava/lang/String;)J
.end method

.method private native nativeBuildFromFileJSSTree(Ljava/lang/String;)J
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeFreeMemory(J)V
.end method

.method private native nativeGet2DoublesArgsMove(JI)[D
.end method

.method private native nativeGet2DoublesArgsStraight(JI)[D
.end method

.method private native nativeGet2IntsArgsGreenLed(JI)[I
.end method

.method private native nativeGet2IntsArgsRedLed(JI)[I
.end method

.method private native nativeGet3DoublesArgsArc(JI)[D
.end method

.method private native nativeGetDescription(J)Ljava/lang/String;
.end method

.method private native nativeGetDoubleArgQuickTurn(JI)D
.end method

.method private native nativeGetDoubleArgWait(JI)D
.end method

.method private native nativeGetIntArgAnimation(JI)I
.end method

.method private native nativeGetIntArgJump(JI)I
.end method

.method private native nativeGetIntArgPosture(JI)I
.end method

.method private native nativeGetIntArgRecord(JI)I
.end method

.method private native nativeGetLastModified(J)I
.end method

.method private native nativeGetName(J)Ljava/lang/String;
.end method

.method private native nativeGetNumberOfInstructions(J)I
.end method

.method private native nativeGetProduct(J)Ljava/lang/String;
.end method

.method private native nativeGetStringArgsCall(JI)Ljava/lang/String;
.end method

.method private native nativeGetTypeOfInstructions(JI)I
.end method

.method private native nativeGetUuid(J)Ljava/lang/String;
.end method

.method private native nativeGetVersion(J)I
.end method

.method private native nativeSaveJSSTreeToBuffer(J)Ljava/lang/String;
.end method

.method private native nativeSet2DoublesArgsMove(JIDD)V
.end method

.method private native nativeSet2DoublesArgsStraight(JIDD)V
.end method

.method private native nativeSet2IntsArgsGreenLed(JIII)V
.end method

.method private native nativeSet2IntsArgsRedLed(JIII)V
.end method

.method private native nativeSet3DoublesArgsArc(JIDDD)V
.end method

.method private native nativeSetComment(JILjava/lang/String;)V
.end method

.method private native nativeSetDescription(JLjava/lang/String;)V
.end method

.method private native nativeSetDoubleArgQuickTurn(JID)V
.end method

.method private native nativeSetDoubleArgWait(JID)V
.end method

.method private native nativeSetIntArgAnimation(JII)V
.end method

.method private native nativeSetIntArgJump(JII)V
.end method

.method private native nativeSetIntArgPosture(JII)V
.end method

.method private native nativeSetIntArgRecord(JII)V
.end method

.method private native nativeSetLastModified(JI)V
.end method

.method private native nativeSetName(JLjava/lang/String;)V
.end method

.method private native nativeSetNumberOfInstructions(JI)V
.end method

.method private native nativeSetProduct(JLjava/lang/String;)V
.end method

.method private native nativeSetStringArgsCall(JILjava/lang/String;)V
.end method

.method private native nativeSetTypeOfInstructions(JII)V
.end method

.method private native nativeSetUuid(JLjava/lang/String;)V
.end method

.method private native nativeSetVersion(JI)V
.end method

.method private static native nativeStaticInit()Z
.end method


# virtual methods
.method public buildFromFile_JSSTree(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildFromFile_JSSTree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeBuildFromFileJSSTree(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    .line 99
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildFromFile_JSSTree done: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nativeManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    return-wide v0
.end method

.method public buildFromString_JSSTree(Ljava/lang/String;)J
    .locals 4
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildFromString_JSSTree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeBuildFromBufferJSSTree(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    .line 107
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildFromString_JSSTree done: buffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nativeManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-wide v0, p0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    return-wide v0
.end method

.method public buildString_JSSTree(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 59
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # B
    .param p4, "product"    # Ljava/lang/String;
    .param p5, "lastModified"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p6, "listOfInstructions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;>;"
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "buildString_JSSTree"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v56

    .line 121
    .local v56, "ninst":I
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "nativeAllocateMemory"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeAllocateMemory(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    .line 123
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "nativeSetProduct"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v2, v3, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetProduct(JLjava/lang/String;)V

    .line 125
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "nativeSetUuid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v3, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetUuid(JLjava/lang/String;)V

    .line 127
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "nativeSetName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v3, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetName(JLjava/lang/String;)V

    .line 129
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "nativeSetVersion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v3, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetVersion(JI)V

    .line 131
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "nativeSetLastModified"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v2, v3, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetLastModified(JI)V

    .line 133
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "nativeSetNumberOfInstructions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetNumberOfInstructions(JI)V

    .line 135
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "nativeSetDescription"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetDescription(JLjava/lang/String;)V

    .line 137
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v56

    if-ge v5, v0, :cond_1

    .line 141
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;

    .line 142
    .local v12, "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arInstruction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;->getType()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->getValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetTypeOfInstructions(JII)V

    .line 144
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetComment(JILjava/lang/String;)V

    .line 145
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager$1;->$SwitchMap$com$parrot$arsdk$arroadplan$ARROADPLAN_Instruction_ENUM:[I

    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;->getType()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 137
    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 148
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_0
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_ANIMATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;->getAnimArg()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;->getValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetIntArgAnimation(JII)V

    goto :goto_1

    .line 152
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_1
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_ARC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v12

    .line 153
    check-cast v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->getMaxSpeed()D

    move-result-wide v6

    .local v6, "maxSpeedArc":D
    move-object v2, v12

    .line 154
    check-cast v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->getAngle()D

    move-result-wide v8

    .line 155
    .local v8, "angleArc":D
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->getRadius()D

    move-result-wide v10

    .line 156
    .local v10, "radiusArc":D
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSet3DoublesArgsArc(JIDDD)V

    goto :goto_1

    .line 159
    .end local v6    # "maxSpeedArc":D
    .end local v8    # "angleArc":D
    .end local v10    # "radiusArc":D
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_2
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_CALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;->getUuid()Ljava/lang/String;

    move-result-object v58

    .line 161
    .local v58, "uuidCall":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetStringArgsCall(JILjava/lang/String;)V

    goto :goto_1

    .line 164
    .end local v58    # "uuidCall":Ljava/lang/String;
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_3
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_COMMENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    :pswitch_4
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_JUMP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;->getJumpArg()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;->getValue()I

    move-result v55

    .line 169
    .local v55, "jumpType":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetIntArgJump(JII)V

    goto :goto_1

    .line 172
    .end local v55    # "jumpType":I
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_5
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_LEDGREEN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v12

    .line 173
    check-cast v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->getGreenLedSideArg()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;->getValue()I

    move-result v17

    .line 174
    .local v17, "sideLedGreen":I
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->getGreenLedLitArg()I

    move-result v18

    .line 175
    .local v18, "valueGreen":I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v13, p0

    move/from16 v16, v5

    invoke-direct/range {v13 .. v18}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSet2IntsArgsGreenLed(JIII)V

    goto/16 :goto_1

    .line 178
    .end local v17    # "sideLedGreen":I
    .end local v18    # "valueGreen":I
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_6
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_LEDRED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v12

    .line 179
    check-cast v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRedLed;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRedLed;->getRedLedSideArg()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;->getValue()I

    move-result v23

    .line 180
    .local v23, "sideLedRed":I
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRedLed;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRedLed;->getRedLedLitArg()I

    move-result v24

    .line 181
    .local v24, "litLedRed":I
    if-nez v24, :cond_0

    const/16 v24, 0x0

    .line 182
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-wide/from16 v20, v0

    move-object/from16 v19, p0

    move/from16 v22, v5

    invoke-direct/range {v19 .. v24}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSet2IntsArgsRedLed(JIII)V

    goto/16 :goto_1

    .line 181
    :cond_0
    const/16 v24, 0x1

    goto :goto_2

    .line 185
    .end local v23    # "sideLedRed":I
    .end local v24    # "litLedRed":I
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_7
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_MOVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v12

    .line 186
    check-cast v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->getSpeed()D

    move-result-wide v30

    .line 187
    .local v30, "speedMove":D
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->getAngularSpeed()D

    move-result-wide v32

    .line 188
    .local v32, "angularSpeedMove":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-wide/from16 v27, v0

    move-object/from16 v26, p0

    move/from16 v29, v5

    invoke-direct/range {v26 .. v33}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSet2DoublesArgsMove(JIDD)V

    goto/16 :goto_1

    .line 191
    .end local v30    # "speedMove":D
    .end local v32    # "angularSpeedMove":D
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_8
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_POSTURE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;->getPostureArg()Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;->getValue()I

    move-result v57

    .line 193
    .local v57, "postureType":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetIntArgPosture(JII)V

    goto/16 :goto_1

    .line 196
    .end local v57    # "postureType":I
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_9
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_QUICKTURN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;->getAngle()D

    move-result-wide v38

    .line 198
    .local v38, "angleTurn":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-wide/from16 v35, v0

    move-object/from16 v34, p0

    move/from16 v37, v5

    invoke-direct/range {v34 .. v39}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetDoubleArgQuickTurn(JID)V

    goto/16 :goto_1

    .line 201
    .end local v38    # "angleTurn":D
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_a
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_RECORD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;->getEnabled()I

    move-result v54

    .line 203
    .local v54, "enable":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetIntArgRecord(JII)V

    goto/16 :goto_1

    .line 206
    .end local v54    # "enable":I
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_b
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_STRAIGHT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v12

    .line 207
    check-cast v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->getDistance()D

    move-result-wide v44

    .line 208
    .local v44, "distanceStraight":D
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->getMaxSpeed()D

    move-result-wide v46

    .line 209
    .local v46, "maxSpeedStraight":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-wide/from16 v41, v0

    move-object/from16 v40, p0

    move/from16 v43, v5

    invoke-direct/range {v40 .. v47}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSet2DoublesArgsStraight(JIDD)V

    goto/16 :goto_1

    .line 212
    .end local v44    # "distanceStraight":D
    .end local v46    # "maxSpeedStraight":D
    .restart local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    :pswitch_c
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_TAKEPICTURE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 215
    :pswitch_d
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    const-string v3, "ARROADPLAN_Instruction_WAIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    check-cast v12, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;

    .end local v12    # "arInstruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-virtual {v12}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;->getDuration()D

    move-result-wide v52

    .line 217
    .local v52, "duration":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-wide/from16 v49, v0

    move-object/from16 v48, p0

    move/from16 v51, v5

    invoke-direct/range {v48 .. v53}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSetDoubleArgWait(JID)V

    goto/16 :goto_1

    .line 222
    .end local v52    # "duration":D
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting JSSTree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeSaveJSSTreeToBuffer(J)Ljava/lang/String;

    move-result-object v25

    .line 224
    .local v25, "buffer":Ljava/lang/String;
    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-object v25

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getARRoadPlanInstructions()Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v24, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;>;"
    sget-object v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getARRoadPlanInstructions - nativeManager=<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 234
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGetNumberOfInstructions(J)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    .line 235
    .local v18, "ninst":J
    const/4 v13, 0x0

    .line 236
    .local v13, "i":I
    sget-object v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getARRoadPlanInstructions - nativeGetNumberOfInstructions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v14, 0x0

    .line 240
    .local v14, "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    const/4 v13, 0x0

    :goto_0
    int-to-long v4, v13

    cmp-long v3, v4, v18

    if-gez v3, :cond_1

    .line 242
    sget-object v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type of inst: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGetTypeOfInstructions(JI)I

    move-result v5

    invoke-static {v5}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager$1;->$SwitchMap$com$parrot$arsdk$arroadplan$ARROADPLAN_Instruction_ENUM:[I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGetTypeOfInstructions(JI)I

    move-result v4

    invoke-static {v4}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 314
    const/4 v14, 0x0

    .line 317
    :goto_1
    if-eqz v14, :cond_0

    .line 319
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 246
    :pswitch_0
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;-><init>()V

    .line 247
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGetIntArgAnimation(JI)I

    move-result v3

    invoke-static {v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;

    move-result-object v2

    .local v2, "animArg":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;
    move-object v3, v14

    .line 248
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;

    invoke-virtual {v3, v2}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionAnimation;->setArgs(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;)V

    goto :goto_1

    .line 251
    .end local v2    # "animArg":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_AnimArg_ENUM;
    :pswitch_1
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;-><init>()V

    .line 252
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGet3DoublesArgsArc(JI)[D

    move-result-object v10

    .local v10, "arcArgs":[D
    move-object v3, v14

    .line 253
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;

    const/4 v4, 0x0

    aget-wide v4, v10, v4

    const/4 v6, 0x1

    aget-wide v6, v10, v6

    const/4 v8, 0x2

    aget-wide v8, v10, v8

    invoke-virtual/range {v3 .. v9}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionArc;->setArgs(DDD)V

    goto :goto_1

    .line 256
    .end local v10    # "arcArgs":[D
    :pswitch_2
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;-><init>()V

    .line 257
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGetStringArgsCall(JI)Ljava/lang/String;

    move-result-object v11

    .local v11, "callArg":Ljava/lang/String;
    move-object v3, v14

    .line 258
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;

    invoke-virtual {v3, v11}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionCall;->setArgs(Ljava/lang/String;)V

    goto :goto_1

    .line 261
    .end local v11    # "callArg":Ljava/lang/String;
    :pswitch_3
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionComment;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionComment;-><init>()V

    .line 262
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    goto :goto_1

    .line 264
    :pswitch_4
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;-><init>()V

    .line 265
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGetIntArgJump(JI)I

    move-result v3

    invoke-static {v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;

    move-result-object v15

    .local v15, "jumpArg":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;
    move-object v3, v14

    .line 266
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;

    invoke-virtual {v3, v15}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionJump;->setArgs(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;)V

    goto :goto_1

    .line 269
    .end local v15    # "jumpArg":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_JumpArg_ENUM;
    :pswitch_5
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;-><init>()V

    .line 270
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGet2IntsArgsGreenLed(JI)[I

    move-result-object v12

    .line 271
    .local v12, "greenArgs":[I
    const/4 v3, 0x0

    aget v3, v12, v3

    invoke-static {v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

    move-result-object v25

    .local v25, "sideGreenArg":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;
    move-object v3, v14

    .line 272
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;

    const/4 v4, 0x1

    aget v4, v12, v4

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v4}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionGreenLed;->setArgs(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;I)V

    goto/16 :goto_1

    .line 275
    .end local v12    # "greenArgs":[I
    .end local v25    # "sideGreenArg":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;
    :pswitch_6
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRedLed;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRedLed;-><init>()V

    .line 276
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGet2IntsArgsRedLed(JI)[I

    move-result-object v23

    .line 277
    .local v23, "redArgs":[I
    const/4 v3, 0x0

    aget v3, v23, v3

    invoke-static {v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;

    move-result-object v26

    .local v26, "sideRedArg":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;
    move-object v3, v14

    .line 278
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRedLed;

    const/4 v4, 0x1

    aget v4, v23, v4

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v4}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRedLed;->setArgs(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;I)V

    goto/16 :goto_1

    .line 281
    .end local v23    # "redArgs":[I
    .end local v26    # "sideRedArg":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_SideArg_ENUM;
    :pswitch_7
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;-><init>()V

    .line 282
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGet2DoublesArgsMove(JI)[D

    move-result-object v16

    .local v16, "moveArgs":[D
    move-object v3, v14

    .line 283
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    const/4 v6, 0x1

    aget-wide v6, v16, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionMove;->setArgs(DD)V

    goto/16 :goto_1

    .line 286
    .end local v16    # "moveArgs":[D
    :pswitch_8
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;-><init>()V

    .line 287
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGetIntArgPosture(JI)I

    move-result v3

    invoke-static {v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;

    move-result-object v17

    .local v17, "postureArg":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;
    move-object v3, v14

    .line 288
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionPosture;->setArgs(Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;)V

    goto/16 :goto_1

    .line 291
    .end local v17    # "postureArg":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_PostureArg_ENUM;
    :pswitch_9
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;-><init>()V

    .line 292
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGetDoubleArgQuickTurn(JI)D

    move-result-wide v20

    .local v20, "quickTurnArg":D
    move-object v3, v14

    .line 293
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionQuickTurn;->setArgs(D)V

    goto/16 :goto_1

    .line 296
    .end local v20    # "quickTurnArg":D
    :pswitch_a
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;-><init>()V

    .line 297
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGetIntArgRecord(JI)I

    move-result v22

    .local v22, "recordArg":I
    move-object v3, v14

    .line 298
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionRecord;->setArgs(I)V

    goto/16 :goto_1

    .line 301
    .end local v22    # "recordArg":I
    :pswitch_b
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;-><init>()V

    .line 302
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGet2DoublesArgsStraight(JI)[D

    move-result-object v27

    .local v27, "straightArgs":[D
    move-object v3, v14

    .line 303
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;

    const/4 v4, 0x0

    aget-wide v4, v27, v4

    const/4 v6, 0x1

    aget-wide v6, v27, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionStraight;->setArgs(DD)V

    goto/16 :goto_1

    .line 306
    .end local v27    # "straightArgs":[D
    :pswitch_c
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionTakePicture;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionTakePicture;-><init>()V

    .line 307
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    goto/16 :goto_1

    .line 309
    :pswitch_d
    new-instance v14, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;

    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    invoke-direct {v14}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;-><init>()V

    .line 310
    .restart local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeManager:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->nativeGetDoubleArgWait(JI)D

    move-result-wide v28

    .local v28, "waitDuration":D
    move-object v3, v14

    .line 311
    check-cast v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstructionWait;->setArgs(D)V

    goto/16 :goto_1

    .line 323
    .end local v28    # "waitDuration":D
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arroadplan/ARRoadPlanManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getARRoadPlanInstructions null instruction for i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 331
    .end local v13    # "i":I
    .end local v14    # "instruction":Lcom/parrot/arsdk/arroadplan/ARRoadPlanInstruction;
    .end local v18    # "ninst":J
    :cond_1
    return-object v24

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
