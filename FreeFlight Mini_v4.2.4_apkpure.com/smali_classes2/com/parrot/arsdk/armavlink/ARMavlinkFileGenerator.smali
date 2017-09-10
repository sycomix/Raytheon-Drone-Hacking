.class public Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;
.super Ljava/lang/Object;
.source "ARMavlinkFileGenerator.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private nativeFileGenerator:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/armavlink/ARMavlinkException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    .line 56
    invoke-direct {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    .line 57
    return-void
.end method

.method private native nativeAddMissionItem(JJ)I
.end method

.method private native nativeCreateMavlinkFile(JLjava/lang/String;)V
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeDeleteMissionItem(JI)I
.end method

.method private native nativeGetCurrentMissionItemList(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/armavlink/ARMavlinkException;
        }
    .end annotation
.end method

.method private native nativeInsertMissionItem(JJI)I
.end method

.method private native nativeNew()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/armavlink/ARMavlinkException;
        }
    .end annotation
.end method

.method private native nativeReplaceMissionItem(JJI)I
.end method


# virtual methods
.method public CreateMavlinkFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 187
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeCreateMavlinkFile(JLjava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method public GetCurrentMissionItemList()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/armavlink/ARMavlinkException;
        }
    .end annotation

    .prologue
    .line 197
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 199
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeGetCurrentMissionItemList(J)J

    move-result-wide v0

    .line 200
    .local v0, "itemListPtr":J
    new-instance v2, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;

    invoke-direct {v2, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;-><init>(J)V

    .line 202
    .end local v0    # "itemListPtr":J
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    .locals 6
    .param p1, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    .prologue
    const-wide/16 v4, 0x0

    .line 104
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 105
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 107
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeAddMissionItem(JJ)I

    move-result v1

    .line 108
    .local v1, "value":I
    invoke-static {v1}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 114
    .end local v1    # "value":I
    :goto_0
    return-object v0

    .line 112
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_ERROR:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    goto :goto_0
.end method

.method public addMissionItemList(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    .locals 3
    .param p1, "missionList"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;

    .prologue
    .line 61
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 63
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 65
    invoke-virtual {p1, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->getMissionItem(I)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->addMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 66
    sget-object v2, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-eq v0, v2, :cond_1

    .line 70
    :cond_0
    return-object v0

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public deleteMissionItem(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 166
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 167
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 169
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeDeleteMissionItem(JI)I

    move-result v1

    .line 170
    .local v1, "value":I
    invoke-static {v1}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 176
    .end local v1    # "value":I
    :goto_0
    return-object v0

    .line 174
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_ERROR:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 211
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 212
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeDelete(J)V

    .line 213
    iput-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    .line 215
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 227
    return-void

    .line 225
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public insertMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    .locals 8
    .param p1, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .param p2, "index"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 146
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 147
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 149
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeInsertMissionItem(JJI)I

    move-result v7

    .line 150
    .local v7, "value":I
    invoke-static {v7}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 156
    .end local v7    # "value":I
    :goto_0
    return-object v0

    .line 154
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_ERROR:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    goto :goto_0
.end method

.method public removeAllMissionItem()Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    .locals 5

    .prologue
    .line 75
    sget-object v1, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 76
    .local v1, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    const/4 v3, 0x0

    .line 79
    .local v3, "size":I
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->GetCurrentMissionItemList()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->getSize()I
    :try_end_0
    .catch Lcom/parrot/arsdk/armavlink/ARMavlinkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 85
    :goto_0
    if-lez v3, :cond_0

    .line 87
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 89
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->deleteMissionItem(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v1

    .line 90
    sget-object v4, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-eq v1, v4, :cond_1

    .line 94
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lcom/parrot/arsdk/armavlink/ARMavlinkException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMavlinkException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0    # "e":Lcom/parrot/arsdk/armavlink/ARMavlinkException;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public replaceMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    .locals 8
    .param p1, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .param p2, "index"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 125
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 126
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 128
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeFileGenerator:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;->nativeReplaceMissionItem(JJI)I

    move-result v7

    .line 129
    .local v7, "value":I
    invoke-static {v7}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 135
    .end local v7    # "value":I
    :goto_0
    return-object v0

    .line 133
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_ERROR:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    goto :goto_0
.end method
