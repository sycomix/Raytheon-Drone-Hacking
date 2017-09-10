.class public Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
.super Ljava/lang/Object;
.source "ARMavlinkFileParser.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private nativeFileParser:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->TAG:Ljava/lang/String;

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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->nativeFileParser:J

    .line 51
    invoke-direct {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->nativeFileParser:J

    .line 52
    return-void
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeNew()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/armavlink/ARMavlinkException;
        }
    .end annotation
.end method

.method private native nativeParse(JLjava/lang/String;J)V
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->nativeFileParser:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 72
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->nativeFileParser:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->nativeDelete(J)V

    .line 73
    iput-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->nativeFileParser:J

    .line 75
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
    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public parseFile(Ljava/lang/String;)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/arsdk/armavlink/ARMavlinkException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v6, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;

    invoke-direct {v6}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;-><init>()V

    .line 62
    .local v6, "missionList":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
    iget-wide v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->nativeFileParser:J

    invoke-virtual {v6}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->getNativePointre()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->nativeParse(JLjava/lang/String;J)V

    .line 63
    return-object v6
.end method
