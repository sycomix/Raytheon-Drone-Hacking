.class public Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
.super Ljava/lang/Object;
.source "ARMavlinkMissionItemList.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private nativeMissionItemList:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    .line 53
    invoke-direct {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemListNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    .line 54
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "itemListPtr"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    .line 62
    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 63
    iput-wide p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    .line 65
    :cond_0
    return-void
.end method

.method private native nativeMissionItemListDelete(J)V
.end method

.method private native nativeMissionItemListGet(JI)J
.end method

.method private native nativeMissionItemListGetSize(J)I
.end method

.method private native nativeMissionItemListNew()J
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 105
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 106
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemListDelete(J)V

    .line 107
    iput-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    .line 109
    :cond_0
    return-void
.end method

.method public getMissionItem(I)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    iget-wide v4, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 81
    iget-wide v4, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    invoke-direct {p0, v4, v5, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemListGet(JI)J

    move-result-wide v2

    .line 82
    .local v2, "missionItemPtr":J
    new-instance v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    .end local v0    # "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-direct {v0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>(J)V

    .line 83
    .restart local v0    # "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateCommandCode()V

    .line 85
    .end local v2    # "missionItemPtr":J
    :cond_0
    return-object v0
.end method

.method public getNativePointre()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    return-wide v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 94
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemList:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->nativeMissionItemListGetSize(J)I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
