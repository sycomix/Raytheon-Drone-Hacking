.class public Lcom/parrot/freeflight/piloting/motion/MotionManager;
.super Ljava/lang/Object;
.source "MotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;,
        Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;,
        Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;
    }
.end annotation


# static fields
.field private static final ACCELERO_THRESHOLD:F = 0.034906585f

.field private static final ANGLE_LIMIT:F = 45.0f

.field private static final ANGLE_MAX:F = 90.0f

.field private static final DEBUG:Z = false

.field private static final EPSILON:F = 1.0E-9f

.field private static final HPF_COEFFICIENT:F = 0.8f

.field private static final NS2S:F = 1.0E-9f

.field private static final ONE_RAD_IN_DEGREES:F = 57.29578f

.field private static final PITCH:I = 0x1

.field private static final ROLL:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static deltaMatrix:[F

.field private static deltaVector:[F

.field private static instance:Lcom/parrot/freeflight/piloting/motion/MotionManager;

.field private static normValues:[F

.field static resultMatrix:[F

.field static resultMatrix2:[F

.field private static tempGyroMatrix:[F

.field private static warningShown:Z

.field static xM:[F

.field static yM:[F

.field static zM:[F


# instance fields
.field private accMagOrientation:[F

.field private accMagRotationMatrix:[F

.field private acceleroAvailable:Z

.field private acceleroEventListener:Landroid/hardware/SensorEventListener;

.field private acceleroRotation:[F

.field private acceleroValues:[F

.field private fuseTimer:Ljava/util/Timer;

.field private fusedOrientation:[F

.field private gyroAvailable:Z

.field private gyroEventListener:Landroid/hardware/SensorEventListener;

.field private gyroOrientation:[F

.field private gyroRotationMatrix:[F

.field private gyroValues:[F

.field private initGyroRotationMatrix:Z

.field private listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

.field private mAzimut:F

.field private mHorizontalAngle:F

.field private final mLogLock:Ljava/lang/Object;

.field private mPitch:F

.field private mRoll:F

.field private mRotationMatrix:[F

.field private mTimer:Ljava/util/Timer;

.field private magneticHeading:F

.field private magnetoAvailable:Z

.field private magnetoEventListener:Landroid/hardware/SensorEventListener;

.field private magnetoValues:[F

.field private motionMode:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

.field private orientationRef:[F

.field private screenRotation:I

.field private sensorHandler:Landroid/os/Handler;

.field private sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

.field private started:Z

.field private timestamp:F

.field private workerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->instance:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .line 75
    const-class v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->TAG:Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->warningShown:Z

    .line 396
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->deltaVector:[F

    .line 397
    new-array v0, v1, [F

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->deltaMatrix:[F

    .line 591
    new-array v0, v1, [F

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    .line 592
    new-array v0, v1, [F

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    .line 593
    new-array v0, v1, [F

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    .line 594
    new-array v0, v1, [F

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->resultMatrix:[F

    .line 595
    new-array v0, v1, [F

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->resultMatrix2:[F

    .line 661
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->normValues:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->initGyroRotationMatrix:Z

    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->fusedOrientation:[F

    .line 446
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mLogLock:Ljava/lang/Object;

    .line 447
    iput v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mAzimut:F

    iput v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mRoll:F

    iput v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mPitch:F

    .line 448
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mRotationMatrix:[F

    .line 449
    iput v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mHorizontalAngle:F

    .line 451
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mTimer:Ljava/util/Timer;

    .line 129
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    .line 130
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    .line 131
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->motionMode:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->started:Z

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->fusedOrientation:[F

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/motion/MotionManager;[F)[F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p1, "x1"    # [F

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->fusedOrientation:[F

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroOrientation:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/piloting/motion/MotionManager;[F)[F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p1, "x1"    # [F

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/motion/MotionManager;[F)[F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p1, "x1"    # [F

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getRotationMatrixFromOrientation([F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/motion/MotionManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mLogLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/motion/MotionManager;)[F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mRotationMatrix:[F

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/motion/MotionManager;)Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/piloting/motion/MotionManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 21
    iget v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magneticHeading:F

    return v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/piloting/motion/MotionManager;[FF[F)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p1, "x1"    # [F
    .param p2, "x2"    # F
    .param p3, "x3"    # [F

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->onDeviceOrientationChanged([FF[F)V

    return-void
.end method

.method private checkSensors(Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;)V
    .locals 1
    .param p1, "sensorManager"    # Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isAcceleroAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroAvailable:Z

    .line 288
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isGyroAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroAvailable:Z

    .line 289
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isMagnetoAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoAvailable:Z

    .line 290
    return-void
.end method

.method private formatFloatValue(F)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # F

    .prologue
    .line 482
    const-string v0, ";%+.15f"

    .line 483
    .local v0, "format":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private formatRadValue(F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 460
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 461
    .local v0, "deg":D
    double-to-float v2, v0

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->formatValue(F)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private formatValue(F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 471
    const-string v0, ";%04.0f"

    .line 472
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->instance:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;

    invoke-direct {v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->instance:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .line 72
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->instance:Lcom/parrot/freeflight/piloting/motion/MotionManager;

    return-object v0
.end method

.method private getRotationMatrixFromOrientation([F)[F
    .locals 14
    .param p1, "o"    # [F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 598
    aget v6, p1, v11

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 599
    .local v3, "sinX":F
    aget v6, p1, v11

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 600
    .local v0, "cosX":F
    aget v6, p1, v12

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 601
    .local v4, "sinY":F
    aget v6, p1, v12

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 602
    .local v1, "cosY":F
    aget v6, p1, v10

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 603
    .local v5, "sinZ":F
    aget v6, p1, v10

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 606
    .local v2, "cosZ":F
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    aput v13, v6, v10

    .line 607
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    aput v9, v6, v11

    .line 608
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    aput v9, v6, v12

    .line 609
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    const/4 v7, 0x3

    aput v9, v6, v7

    .line 610
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    const/4 v7, 0x4

    aput v0, v6, v7

    .line 611
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    const/4 v7, 0x5

    aput v3, v6, v7

    .line 612
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    const/4 v7, 0x6

    aput v9, v6, v7

    .line 613
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    const/4 v7, 0x7

    neg-float v8, v3

    aput v8, v6, v7

    .line 614
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    const/16 v7, 0x8

    aput v0, v6, v7

    .line 617
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    aput v1, v6, v10

    .line 618
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    aput v9, v6, v11

    .line 619
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    aput v4, v6, v12

    .line 620
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    const/4 v7, 0x3

    aput v9, v6, v7

    .line 621
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    const/4 v7, 0x4

    aput v13, v6, v7

    .line 622
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    const/4 v7, 0x5

    aput v9, v6, v7

    .line 623
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    const/4 v7, 0x6

    neg-float v8, v4

    aput v8, v6, v7

    .line 624
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    const/4 v7, 0x7

    aput v9, v6, v7

    .line 625
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    const/16 v7, 0x8

    aput v1, v6, v7

    .line 628
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    aput v2, v6, v10

    .line 629
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    aput v5, v6, v11

    .line 630
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    aput v9, v6, v12

    .line 631
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    const/4 v7, 0x3

    neg-float v8, v5

    aput v8, v6, v7

    .line 632
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    const/4 v7, 0x4

    aput v2, v6, v7

    .line 633
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    const/4 v7, 0x5

    aput v9, v6, v7

    .line 634
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    const/4 v7, 0x6

    aput v9, v6, v7

    .line 635
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    const/4 v7, 0x7

    aput v9, v6, v7

    .line 636
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    const/16 v7, 0x8

    aput v13, v6, v7

    .line 639
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->resultMatrix2:[F

    sget-object v7, Lcom/parrot/freeflight/piloting/motion/MotionManager;->xM:[F

    sget-object v8, Lcom/parrot/freeflight/piloting/motion/MotionManager;->yM:[F

    invoke-direct {p0, v6, v7, v8}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->matrixMultiplication([F[F[F)[F

    .line 640
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->resultMatrix:[F

    sget-object v7, Lcom/parrot/freeflight/piloting/motion/MotionManager;->zM:[F

    sget-object v8, Lcom/parrot/freeflight/piloting/motion/MotionManager;->resultMatrix2:[F

    invoke-direct {p0, v6, v7, v8}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->matrixMultiplication([F[F[F)[F

    .line 642
    sget-object v6, Lcom/parrot/freeflight/piloting/motion/MotionManager;->resultMatrix:[F

    return-object v6
.end method

.method private getRotationVectorFromGyro([F[FF)V
    .locals 10
    .param p1, "gyroValues"    # [F
    .param p2, "deltaRotationVector"    # [F
    .param p3, "timeFactor"    # F

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 665
    aget v4, p1, v7

    aget v5, p1, v7

    mul-float/2addr v4, v5

    aget v5, p1, v8

    aget v6, p1, v8

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p1, v9

    aget v6, p1, v9

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 668
    .local v1, "omegaMagnitude":F
    const v4, 0x3089705f    # 1.0E-9f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 669
    sget-object v4, Lcom/parrot/freeflight/piloting/motion/MotionManager;->normValues:[F

    aget v5, p1, v7

    div-float/2addr v5, v1

    aput v5, v4, v7

    .line 670
    sget-object v4, Lcom/parrot/freeflight/piloting/motion/MotionManager;->normValues:[F

    aget v5, p1, v8

    div-float/2addr v5, v1

    aput v5, v4, v8

    .line 671
    sget-object v4, Lcom/parrot/freeflight/piloting/motion/MotionManager;->normValues:[F

    aget v5, p1, v9

    div-float/2addr v5, v1

    aput v5, v4, v9

    .line 678
    :cond_0
    mul-float v3, v1, p3

    .line 679
    .local v3, "thetaOverTwo":F
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 680
    .local v2, "sinThetaOverTwo":F
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 681
    .local v0, "cosThetaOverTwo":F
    sget-object v4, Lcom/parrot/freeflight/piloting/motion/MotionManager;->normValues:[F

    aget v4, v4, v7

    mul-float/2addr v4, v2

    aput v4, p2, v7

    .line 682
    sget-object v4, Lcom/parrot/freeflight/piloting/motion/MotionManager;->normValues:[F

    aget v4, v4, v8

    mul-float/2addr v4, v2

    aput v4, p2, v8

    .line 683
    sget-object v4, Lcom/parrot/freeflight/piloting/motion/MotionManager;->normValues:[F

    aget v4, v4, v9

    mul-float/2addr v4, v2

    aput v4, p2, v9

    .line 684
    const/4 v4, 0x3

    aput v0, p2, v4

    .line 685
    return-void
.end method

.method private initSensorListeners()V
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/motion/MotionManager$2;-><init>(Lcom/parrot/freeflight/piloting/motion/MotionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroEventListener:Landroid/hardware/SensorEventListener;

    .line 304
    new-instance v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/motion/MotionManager$3;-><init>(Lcom/parrot/freeflight/piloting/motion/MotionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoEventListener:Landroid/hardware/SensorEventListener;

    .line 315
    new-instance v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/motion/MotionManager$4;-><init>(Lcom/parrot/freeflight/piloting/motion/MotionManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroEventListener:Landroid/hardware/SensorEventListener;

    .line 326
    return-void
.end method

.method private logSensors()V
    .locals 5

    .prologue
    .line 490
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mLogLock:Ljava/lang/Object;

    monitor-enter v3

    .line 491
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v0, "b":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->screenRotation:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->formatValue(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mHorizontalAngle:F

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->formatRadValue(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mAzimut:F

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->formatValue(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mRoll:F

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->formatFloatValue(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mPitch:F

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->formatFloatValue(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mRotationMatrix:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mRotationMatrix:[F

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->formatFloatValue(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_0
    sget-object v2, Lcom/parrot/freeflight/piloting/motion/MotionManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    monitor-exit v3

    .line 502
    return-void

    .line 501
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private matrixMultiplication([F[F[F)[F
    .locals 9
    .param p1, "result"    # [F
    .param p2, "A"    # [F
    .param p3, "B"    # [F

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 646
    aget v0, p2, v4

    aget v1, p3, v4

    mul-float/2addr v0, v1

    aget v1, p2, v5

    aget v2, p3, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v6

    const/4 v2, 0x6

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v4

    .line 647
    aget v0, p2, v4

    aget v1, p3, v5

    mul-float/2addr v0, v1

    aget v1, p2, v5

    aget v2, p3, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v6

    const/4 v2, 0x7

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v5

    .line 648
    aget v0, p2, v4

    aget v1, p3, v6

    mul-float/2addr v0, v1

    aget v1, p2, v5

    const/4 v2, 0x5

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v6

    const/16 v2, 0x8

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v6

    .line 650
    aget v0, p2, v7

    aget v1, p3, v4

    mul-float/2addr v0, v1

    aget v1, p2, v8

    aget v2, p3, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, 0x6

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v7

    .line 651
    aget v0, p2, v7

    aget v1, p3, v5

    mul-float/2addr v0, v1

    aget v1, p2, v8

    aget v2, p3, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, 0x7

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v8

    .line 652
    const/4 v0, 0x5

    aget v1, p2, v7

    aget v2, p3, v6

    mul-float/2addr v1, v2

    aget v2, p2, v8

    const/4 v3, 0x5

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p2, v2

    const/16 v3, 0x8

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 654
    const/4 v0, 0x6

    const/4 v1, 0x6

    aget v1, p2, v1

    aget v2, p3, v4

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    aget v3, p3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p2, v2

    const/4 v3, 0x6

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 655
    const/4 v0, 0x7

    const/4 v1, 0x6

    aget v1, p2, v1

    aget v2, p3, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    aget v3, p3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p2, v2

    const/4 v3, 0x7

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 656
    const/16 v0, 0x8

    const/4 v1, 0x6

    aget v1, p2, v1

    aget v2, p3, v6

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p2, v2

    const/16 v3, 0x8

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 658
    return-object p1
.end method

.method private onDeviceOrientationChanged([FF)V
    .locals 12
    .param p1, "orientation"    # [F
    .param p2, "magneticHeading"    # F

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const v10, 0x3d0efa35

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v7, 0x1

    .line 539
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->motionMode:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    sget-object v5, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    if-ne v4, v5, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-boolean v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoAvailable:Z

    if-eqz v4, :cond_5

    .line 544
    const v4, 0x42652ee1

    mul-float v0, p2, v4

    .line 545
    .local v0, "heading":F
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mLogLock:Ljava/lang/Object;

    monitor-enter v5

    .line 546
    :try_start_0
    iput v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mAzimut:F

    .line 547
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    iget v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->screenRotation:I

    if-ne v4, v7, :cond_2

    .line 549
    add-float/2addr v0, v8

    .line 551
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    invoke-interface {v4, p0, v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;->onMotionManagerHeadingChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    .line 557
    .end local v0    # "heading":F
    :goto_1
    aget v4, p1, v7

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->orientationRef:[F

    aget v5, v5, v7

    sub-float v2, v4, v5

    .line 558
    .local v2, "pitch":F
    const/4 v4, 0x2

    aget v4, p1, v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->orientationRef:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-float v3, v4, v5

    .line 560
    .local v3, "roll":F
    iget v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->screenRotation:I

    if-ne v4, v7, :cond_6

    .line 562
    move v1, v2

    .line 563
    .local v1, "oldPitch":F
    move v2, v3

    .line 564
    neg-float v3, v1

    .line 573
    .end local v1    # "oldPitch":F
    :cond_3
    :goto_2
    mul-float v4, v2, v8

    const/high16 v5, 0x42340000    # 45.0f

    div-float v2, v4, v5

    .line 574
    mul-float v4, v3, v8

    const/high16 v5, 0x42340000    # 45.0f

    div-float v3, v4, v5

    .line 577
    invoke-static {v2, v9, v11}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v2

    .line 578
    invoke-static {v3, v9, v11}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v3

    .line 580
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mLogLock:Ljava/lang/Object;

    monitor-enter v5

    .line 581
    :try_start_1
    iput v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mRoll:F

    .line 582
    iput v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mPitch:F

    .line 583
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 585
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v10

    if-gtz v4, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v10

    if-lez v4, :cond_0

    .line 586
    :cond_4
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    invoke-interface {v4, p0, v2}, Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;->onMotionManagerPitchChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    .line 587
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    invoke-interface {v4, p0, v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;->onMotionManagerRollChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    goto :goto_0

    .line 547
    .end local v2    # "pitch":F
    .end local v3    # "roll":F
    .restart local v0    # "heading":F
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 554
    .end local v0    # "heading":F
    :cond_5
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    const/4 v5, 0x0

    invoke-interface {v4, p0, v5}, Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;->onMotionManagerHeadingChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    goto :goto_1

    .line 565
    .restart local v2    # "pitch":F
    .restart local v3    # "roll":F
    :cond_6
    iget v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->screenRotation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 567
    move v1, v2

    .line 568
    .restart local v1    # "oldPitch":F
    neg-float v2, v3

    .line 569
    move v3, v1

    goto :goto_2

    .line 583
    .end local v1    # "oldPitch":F
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method private onDeviceOrientationChanged([FF[F)V
    .locals 10
    .param p1, "orientation"    # [F
    .param p2, "magneticHeading"    # F
    .param p3, "rotationMatrix"    # [F

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 505
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->motionMode:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    sget-object v3, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    if-ne v2, v3, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const/4 v1, 0x0

    .line 512
    .local v1, "horizontalAngle":F
    iget v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->screenRotation:I

    packed-switch v2, :pswitch_data_0

    .line 530
    :goto_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mLogLock:Ljava/lang/Object;

    monitor-enter v3

    .line 531
    :try_start_0
    iput v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mHorizontalAngle:F

    .line 532
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    invoke-interface {v2, p0, v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;->onMotionManagerHorizonChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    .line 535
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->onDeviceOrientationChanged([FF)V

    goto :goto_0

    .line 514
    :pswitch_0
    aget v2, p3, v4

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget v4, p3, v8

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 515
    .local v0, "horizontal":F
    const/4 v2, 0x6

    aget v2, p3, v2

    neg-float v2, v2

    float-to-double v2, v2

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 516
    goto :goto_1

    .line 518
    .end local v0    # "horizontal":F
    :pswitch_1
    aget v2, p3, v5

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget v4, p3, v9

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 519
    .restart local v0    # "horizontal":F
    const/4 v2, 0x7

    aget v2, p3, v2

    float-to-double v2, v2

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 520
    goto :goto_1

    .line 522
    .end local v0    # "horizontal":F
    :pswitch_2
    aget v2, p3, v4

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget v4, p3, v8

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 523
    .restart local v0    # "horizontal":F
    const/4 v2, 0x6

    aget v2, p3, v2

    float-to-double v2, v2

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 524
    goto :goto_1

    .line 526
    .end local v0    # "horizontal":F
    :pswitch_3
    aget v2, p3, v5

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget v4, p3, v9

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 527
    .restart local v0    # "horizontal":F
    const/4 v2, 0x7

    aget v2, p3, v2

    neg-float v2, v2

    float-to-double v2, v2

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    goto/16 :goto_1

    .line 532
    .end local v0    # "horizontal":F
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private registerSensorListeners()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 329
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->initSensorListeners()V

    .line 331
    const/4 v6, 0x0

    .line 332
    .local v6, "acceleroInitialized":Z
    const/4 v7, 0x0

    .line 334
    .local v7, "gyroInitialized":Z
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isAcceleroAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v2}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->registerListener(Landroid/hardware/SensorEventListener;ILandroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v6, 0x1

    .line 336
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->TAG:Ljava/lang/String;

    const-string v1, "Accelerometer [OK]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isMagnetoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->registerListener(Landroid/hardware/SensorEventListener;ILandroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->TAG:Ljava/lang/String;

    const-string v1, "Magnetometer [OK]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isGyroAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->registerListener(Landroid/hardware/SensorEventListener;ILandroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->initGyroRotationMatrix:Z

    .line 345
    const/4 v7, 0x1

    .line 346
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->TAG:Ljava/lang/String;

    const-string v1, "Gyroscope [OK]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_2
    if-nez v6, :cond_3

    if-eqz v7, :cond_4

    .line 350
    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->fuseTimer:Ljava/util/Timer;

    .line 351
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->fuseTimer:Ljava/util/Timer;

    new-instance v1, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/motion/MotionManager$CalculateFusedOrientationTask;-><init>(Lcom/parrot/freeflight/piloting/motion/MotionManager;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 353
    :cond_4
    return-void
.end method

.method private unregisterSensorListeners()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 358
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 360
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->fuseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->fuseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 363
    :cond_0
    return-void
.end method


# virtual methods
.method public computeAccMagOrientation()V
    .locals 10

    .prologue
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v4, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 688
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoValues:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagRotationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoValues:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    if-nez v0, :cond_0

    .line 692
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    .line 693
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->orientationRef:[F

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagRotationMatrix:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 698
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    aget v0, v0, v6

    iput v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magneticHeading:F

    .line 700
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    aget v0, v0, v6

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 701
    iget v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magneticHeading:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magneticHeading:F

    .line 711
    :cond_1
    :goto_0
    return-void

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    if-nez v0, :cond_3

    .line 705
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    .line 708
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v1, v1, v6

    float-to-double v2, v1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v1, v1, v8

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v4, v4, v8

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v5, v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v9

    aput v1, v0, v7

    .line 709
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v1, v1, v8

    float-to-double v2, v1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v1, v1, v6

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v4, v4, v6

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v5, v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v9

    aput v1, v0, v8

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAcceleroChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    if-nez v0, :cond_0

    .line 367
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    .line 370
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->computeAccMagOrientation()V

    .line 374
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroAvailable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagOrientation:[F

    iget v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magneticHeading:F

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->onDeviceOrientationChanged([FF)V

    .line 377
    :cond_1
    return-void
.end method

.method public onDisplayRotationChange(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 232
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->mLogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->screenRotation:I

    .line 234
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onGyroChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 403
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoValues:[F

    if-nez v3, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->initGyroRotationMatrix:Z

    if-eqz v3, :cond_2

    .line 409
    sget-object v3, Lcom/parrot/freeflight/piloting/motion/MotionManager;->TAG:Ljava/lang/String;

    const-string v4, "initialisation of gyroscope based rotation matrix"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoValues:[F

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getRotationMatrixFromOrientation([F)[F

    move-result-object v1

    .line 411
    .local v1, "initMatrix":[F
    new-array v2, v8, [F

    .line 412
    .local v2, "tempGyroMatrix":[F
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    invoke-direct {p0, v2, v3, v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->matrixMultiplication([F[F[F)[F

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    .line 413
    iput-boolean v6, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->initGyroRotationMatrix:Z

    .line 418
    .end local v1    # "initMatrix":[F
    .end local v2    # "tempGyroMatrix":[F
    :cond_2
    iget v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->timestamp:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 419
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroValues:[F

    if-nez v3, :cond_3

    .line 420
    new-array v3, v7, [F

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroValues:[F

    .line 423
    :cond_3
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v3, v4

    iget v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->timestamp:F

    sub-float/2addr v3, v4

    const v4, 0x3089705f    # 1.0E-9f

    mul-float v0, v3, v4

    .line 424
    .local v0, "dT":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroValues:[F

    invoke-static {v3, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroValues:[F

    sget-object v4, Lcom/parrot/freeflight/piloting/motion/MotionManager;->deltaVector:[F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getRotationVectorFromGyro([F[FF)V

    .line 429
    .end local v0    # "dT":F
    :cond_4
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v3, v4

    iput v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->timestamp:F

    .line 432
    sget-object v3, Lcom/parrot/freeflight/piloting/motion/MotionManager;->deltaMatrix:[F

    sget-object v4, Lcom/parrot/freeflight/piloting/motion/MotionManager;->deltaVector:[F

    invoke-static {v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 436
    sget-object v3, Lcom/parrot/freeflight/piloting/motion/MotionManager;->tempGyroMatrix:[F

    if-nez v3, :cond_5

    .line 437
    new-array v3, v8, [F

    sput-object v3, Lcom/parrot/freeflight/piloting/motion/MotionManager;->tempGyroMatrix:[F

    .line 440
    :cond_5
    sget-object v3, Lcom/parrot/freeflight/piloting/motion/MotionManager;->tempGyroMatrix:[F

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    sget-object v5, Lcom/parrot/freeflight/piloting/motion/MotionManager;->deltaMatrix:[F

    invoke-direct {p0, v3, v4, v5}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->matrixMultiplication([F[F[F)[F

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    .line 443
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroOrientation:[F

    invoke-static {v3, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto :goto_0
.end method

.method protected onMagnetoChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 382
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoValues:[F

    if-nez v1, :cond_0

    .line 383
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoValues:[F

    .line 386
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->magnetoValues:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    .line 389
    .local v0, "magnetoAccuracy":I
    sget-boolean v1, Lcom/parrot/freeflight/piloting/motion/MotionManager;->warningShown:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 390
    const/4 v1, 0x1

    sput-boolean v1, Lcom/parrot/freeflight/piloting/motion/MotionManager;->warningShown:Z

    .line 391
    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager;->TAG:Ljava/lang/String;

    const-string v2, "Magnetometer sensor data is unreliable. Calibration is required!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    return-void
.end method

.method public resetNeutralMotionPosition(FFF)V
    .locals 8
    .param p1, "phi"    # F
    .param p2, "theta"    # F
    .param p3, "psi"    # F

    .prologue
    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroRotation:[F

    const/4 v1, 0x0

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroRotation:[F

    const/4 v1, 0x1

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroRotation:[F

    const/4 v1, 0x2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroRotation:[F

    const/4 v1, 0x3

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroRotation:[F

    const/4 v1, 0x4

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroRotation:[F

    const/4 v1, 0x5

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroRotation:[F

    const/4 v1, 0x6

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroRotation:[F

    const/4 v1, 0x7

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroRotation:[F

    const/16 v1, 0x8

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 247
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 714
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 715
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorHandler:Landroid/os/Handler;

    .line 717
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->registerSensorListeners()V

    .line 719
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 721
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->unregisterSensorListeners()V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorHandler:Landroid/os/Handler;

    .line 724
    return-void
.end method

.method public setMotionMode(Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;)V
    .locals 13
    .param p1, "motionMode"    # Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    .prologue
    const/high16 v12, -0x40800000    # -1.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 257
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->motionMode:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    .line 258
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroAvailable:Z

    if-eqz v3, :cond_2

    .line 259
    sget-object v3, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    if-eq p1, v3, :cond_4

    .line 260
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isAcceleroAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;->isGyroAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->fusedOrientation:[F

    .line 262
    .local v0, "orientationRef":[F
    sget-object v3, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_ENABLED_HORIZONTAL_REF:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    if-eq p1, v3, :cond_0

    if-nez v0, :cond_1

    .line 265
    :cond_0
    const/4 v3, 0x3

    new-array v0, v3, [F

    .end local v0    # "orientationRef":[F
    fill-array-data v0, :array_0

    .line 267
    .restart local v0    # "orientationRef":[F
    :cond_1
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setOnTouchMatrixOrientation([F)V

    .line 284
    .end local v0    # "orientationRef":[F
    :cond_2
    :goto_0
    return-void

    .line 268
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    if-eqz v3, :cond_2

    .line 272
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v3, v3, v10

    float-to-double v4, v3

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v3, v3, v11

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v6, v6, v11

    mul-float/2addr v3, v6

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v6, v6, v9

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v7, v7, v9

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float v2, v3, v12

    .line 273
    .local v2, "theta":F
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v3, v3, v11

    float-to-double v4, v3

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v3, v3, v10

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v6, v6, v10

    mul-float/2addr v3, v6

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v6, v6, v9

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroValues:[F

    aget v7, v7, v9

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float v1, v3, v12

    .line 275
    .local v1, "phi":F
    invoke-virtual {p0, v1, v2, v8}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->resetNeutralMotionPosition(FFF)V

    .line 276
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->fusedOrientation:[F

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setOnTouchMatrixOrientation([F)V

    goto :goto_0

    .line 280
    .end local v1    # "phi":F
    .end local v2    # "theta":F
    :cond_4
    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setOnTouchMatrixOrientation([F)V

    .line 281
    invoke-virtual {p0, v8, v8, v8}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->resetNeutralMotionPosition(FFF)V

    goto :goto_0

    .line 265
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 280
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setOnTouchMatrixOrientation([F)V
    .locals 3
    .param p1, "newMatrixOrientationRef"    # [F

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->orientationRef:[F

    if-nez v0, :cond_0

    .line 251
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->orientationRef:[F

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->orientationRef:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    return-void
.end method

.method public start(Landroid/content/Context;Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->started:Z

    if-nez v1, :cond_1

    .line 149
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->accMagRotationMatrix:[F

    .line 151
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroOrientation:[F

    .line 152
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroOrientation:[F

    aput v3, v1, v6

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroOrientation:[F

    aput v3, v1, v4

    .line 154
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroOrientation:[F

    aput v3, v1, v7

    .line 156
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    aput v5, v1, v6

    .line 160
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    aput v3, v1, v4

    .line 161
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    aput v3, v1, v7

    .line 162
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    const/4 v2, 0x3

    aput v3, v1, v2

    .line 163
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    const/4 v2, 0x4

    aput v5, v1, v2

    .line 164
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    const/4 v2, 0x5

    aput v3, v1, v2

    .line 165
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    const/4 v2, 0x6

    aput v3, v1, v2

    .line 166
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    const/4 v2, 0x7

    aput v3, v1, v2

    .line 167
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->gyroRotationMatrix:[F

    const/16 v2, 0x8

    aput v5, v1, v2

    .line 169
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->orientationRef:[F

    .line 170
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->orientationRef:[F

    aput v3, v1, v6

    .line 171
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->orientationRef:[F

    aput v3, v1, v4

    .line 172
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->orientationRef:[F

    aput v3, v1, v7

    .line 174
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->acceleroRotation:[F

    .line 176
    new-instance v1, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    .line 177
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorManager:Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->checkSensors(Lcom/parrot/freeflight/piloting/motion/MotionSensorManagerWrapper;)V

    .line 178
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    .line 181
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 182
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->screenRotation:I

    .line 184
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Sensor thread already started"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Sensor Data Processing Thread"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    .line 189
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 191
    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->started:Z

    .line 192
    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager;->TAG:Ljava/lang/String;

    const-string v2, "MotionManager has been started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 194
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to start an MotionManager which is already started."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->started:Z

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->sensorHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 208
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    .line 217
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->started:Z

    .line 218
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->listener:Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;

    .line 219
    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager;->TAG:Ljava/lang/String;

    const-string v2, "MotionManager has been stopped."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/motion/MotionManager;->workerThread:Ljava/lang/Thread;

    throw v1

    .line 221
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to stop an MotionManager which isn\'t started."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
