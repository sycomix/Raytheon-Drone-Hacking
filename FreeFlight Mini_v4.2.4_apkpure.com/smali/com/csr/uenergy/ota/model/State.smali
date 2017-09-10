.class public Lcom/csr/uenergy/ota/model/State;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;,
        Lcom/csr/uenergy/ota/model/State$OtaState;,
        Lcom/csr/uenergy/ota/model/State$ScanState;,
        Lcom/csr/uenergy/ota/model/State$ConnectionState;
    }
.end annotation


# static fields
.field private static mConnectionState:Lcom/csr/uenergy/ota/model/State$ConnectionState;

.field private static mOtaState:Lcom/csr/uenergy/ota/model/State$OtaState;

.field private static mReadCsBlockState:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

.field private static mScanState:Lcom/csr/uenergy/ota/model/State$ScanState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;
    .locals 2

    .prologue
    .line 409
    const-class v0, Lcom/csr/uenergy/ota/model/State;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/csr/uenergy/ota/model/State;->mOtaState:Lcom/csr/uenergy/ota/model/State$OtaState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getReadCsBlockState()Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;
    .locals 1

    .prologue
    .line 429
    sget-object v0, Lcom/csr/uenergy/ota/model/State;->mReadCsBlockState:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    return-object v0
.end method

.method public static getScanState()Lcom/csr/uenergy/ota/model/State$ScanState;
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/csr/uenergy/ota/model/State;->mScanState:Lcom/csr/uenergy/ota/model/State$ScanState;

    return-object v0
.end method

.method public static getState()Lcom/csr/uenergy/ota/model/State$ConnectionState;
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lcom/csr/uenergy/ota/model/State;->mConnectionState:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    return-object v0
.end method

.method static declared-synchronized setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V
    .locals 4
    .param p0, "newState"    # Lcom/csr/uenergy/ota/model/State$OtaState;

    .prologue
    .line 399
    const-class v1, Lcom/csr/uenergy/ota/model/State;

    monitor-enter v1

    :try_start_0
    const-string v0, "State"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old OtaState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/csr/uenergy/ota/model/State;->mOtaState:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new OtaState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sput-object p0, Lcom/csr/uenergy/ota/model/State;->mOtaState:Lcom/csr/uenergy/ota/model/State$OtaState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit v1

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setReadCsBlockState(Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;)V
    .locals 3
    .param p0, "newState"    # Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    .prologue
    .line 419
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Old ReadCsBlockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/csr/uenergy/ota/model/State;->mReadCsBlockState:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new ReadCsBlockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sput-object p0, Lcom/csr/uenergy/ota/model/State;->mReadCsBlockState:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    .line 421
    return-void
.end method

.method static setScanState(Lcom/csr/uenergy/ota/model/State$ScanState;)V
    .locals 0
    .param p0, "newState"    # Lcom/csr/uenergy/ota/model/State$ScanState;

    .prologue
    .line 380
    sput-object p0, Lcom/csr/uenergy/ota/model/State;->mScanState:Lcom/csr/uenergy/ota/model/State$ScanState;

    .line 381
    return-void
.end method

.method static setState(Lcom/csr/uenergy/ota/model/State$ConnectionState;)V
    .locals 0
    .param p0, "newState"    # Lcom/csr/uenergy/ota/model/State$ConnectionState;

    .prologue
    .line 361
    sput-object p0, Lcom/csr/uenergy/ota/model/State;->mConnectionState:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    .line 362
    return-void
.end method
