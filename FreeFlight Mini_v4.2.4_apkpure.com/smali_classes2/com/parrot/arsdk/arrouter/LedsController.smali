.class public Lcom/parrot/arsdk/arrouter/LedsController;
.super Ljava/lang/Object;
.source "LedsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arrouter/LedsController$LedsControllerHolder;,
        Lcom/parrot/arsdk/arrouter/LedsController$LedBank;,
        Lcom/parrot/arsdk/arrouter/LedsController$RedLed;,
        Lcom/parrot/arsdk/arrouter/LedsController$Led;,
        Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;
    }
.end annotation


# static fields
.field private static final BLINK_FREQ:I = 0x12c

.field private static final NAPBat0Id:I = 0x8

.field private static final NAPBat1Id:I = 0x7

.field private static final NAPBat2Id:I = 0x6

.field private static final NAPBat3Id:I = 0x5

.field private static final NAPBatRedId:I = 0x9

.field private static final deviceBat0Id:I = 0x3

.field private static final deviceBat1Id:I = 0x2

.field private static final deviceBat2Id:I = 0x1

.field private static final deviceBat3Id:I = 0x0

.field private static final deviceBatRedId:I = 0x4

.field private static final recordId:I = 0xf

.field private static final wifi0Id:I = 0xd

.field private static final wifi1Id:I = 0xc

.field private static final wifi2Id:I = 0xb

.field private static final wifi3Id:I = 0xa

.field private static final wifiRedId:I = 0xe


# instance fields
.field private blinkEnabled:Z

.field private blinkRunnable:Ljava/lang/Runnable;

.field private blinkThread:Ljava/lang/Thread;

.field private deviceBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

.field private napBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

.field private record:Lcom/parrot/arsdk/arrouter/LedsController$RedLed;

.field private wifi:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;-><init>(Lcom/parrot/arsdk/arrouter/LedsController;I)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->record:Lcom/parrot/arsdk/arrouter/LedsController$RedLed;

    .line 237
    new-instance v0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    const/16 v2, 0xe

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;-><init>(Lcom/parrot/arsdk/arrouter/LedsController;IIIII)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->wifi:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    .line 238
    new-instance v0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;-><init>(Lcom/parrot/arsdk/arrouter/LedsController;IIIII)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->napBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    .line 239
    new-instance v0, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;-><init>(Lcom/parrot/arsdk/arrouter/LedsController;IIIII)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->deviceBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    .line 241
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/LedsController;->apply()V

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arrouter/LedsController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arrouter/LedsController$1;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/LedsController;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/arrouter/LedsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/LedsController;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/LedsController;->apply()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/arrouter/LedsController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/LedsController;

    .prologue
    .line 7
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->blinkEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/arsdk/arrouter/LedsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/LedsController;
    .param p1, "x1"    # Z

    .prologue
    .line 7
    iput-boolean p1, p0, Lcom/parrot/arsdk/arrouter/LedsController;->blinkEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$LedBank;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/LedsController;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->wifi:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$RedLed;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/LedsController;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->record:Lcom/parrot/arsdk/arrouter/LedsController$RedLed;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$LedBank;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/LedsController;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->deviceBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$LedBank;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/LedsController;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->napBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    return-object v0
.end method

.method private apply()V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController;->record:Lcom/parrot/arsdk/arrouter/LedsController$RedLed;

    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->fillList(Ljava/util/ArrayList;)V

    .line 397
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController;->wifi:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->fillList(Ljava/util/ArrayList;)V

    .line 398
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController;->napBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->fillList(Ljava/util/ArrayList;)V

    .line 399
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController;->deviceBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->fillList(Ljava/util/ArrayList;)V

    .line 400
    invoke-static {}, Lcom/parrot/arsdk/arrouter/LedsDriver;->getInstance()Lcom/parrot/arsdk/arrouter/LedsDriver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arrouter/LedsDriver;->enableLeds(Ljava/util/ArrayList;)Z

    .line 401
    return-void
.end method

.method public static getInstance()Lcom/parrot/arsdk/arrouter/LedsController;
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/parrot/arsdk/arrouter/LedsController$LedsControllerHolder;->access$300()Lcom/parrot/arsdk/arrouter/LedsController;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized startBlink()V
    .locals 2

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->blinkThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->blinkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/arsdk/arrouter/LedsController$1;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arrouter/LedsController$1;-><init>(Lcom/parrot/arsdk/arrouter/LedsController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->blinkThread:Ljava/lang/Thread;

    .line 388
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->blinkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_1
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized setDeviceBatteryBlinking(Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;)V
    .locals 2
    .param p1, "mode"    # Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->deviceBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->setBlinkMode(Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;)V

    .line 336
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->deviceBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->setBlinkEnabled(Z)V

    .line 337
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/LedsController;->startBlink()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceBatteryLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->deviceBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->setLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNapBatteryBlinking(Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;)V
    .locals 2
    .param p1, "mode"    # Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->napBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->setBlinkMode(Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;)V

    .line 308
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->napBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->setBlinkEnabled(Z)V

    .line 309
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/LedsController;->startBlink()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNapBatteryLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->napBat:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->setLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecordBlinking()V
    .locals 2

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->record:Lcom/parrot/arsdk/arrouter/LedsController$RedLed;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->setBlinkEnabled(Z)V

    .line 358
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/LedsController;->startBlink()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecordEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->record:Lcom/parrot/arsdk/arrouter/LedsController$RedLed;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWifiBlinking(Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;)V
    .locals 2
    .param p1, "mode"    # Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->wifi:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->setBlinkMode(Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;)V

    .line 280
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->wifi:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->setBlinkEnabled(Z)V

    .line 281
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/LedsController;->startBlink()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWifiLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/LedsController;->wifi:Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->setLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
