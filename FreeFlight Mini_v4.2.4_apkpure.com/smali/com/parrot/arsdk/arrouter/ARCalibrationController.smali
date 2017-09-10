.class public Lcom/parrot/arsdk/arrouter/ARCalibrationController;
.super Ljava/lang/Object;
.source "ARCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;,
        Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;
    }
.end annotation


# static fields
.field private static final READ_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final magnetoQualitySocketName:Ljava/lang/String; = "skycontroller.magneto.quality"


# instance fields
.field private delay:I

.field private hasStatus:Z

.field private magnetoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private magnetoQualityReader:Ljava/io/BufferedReader;

.field private magnetoQualitySocket:Landroid/net/LocalSocket;

.field private magnetoStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Landroid/hardware/SensorManager;

.field private orientation:Landroid/hardware/Sensor;

.field private quality:[I

.field private qualityReadingThread:Ljava/lang/Thread;

.field private running:Z

.field private sel:Landroid/hardware/SensorEventListener;

.field private final startStopLock:Ljava/lang/Object;

.field private status:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

.field private threadRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->delay:I

    .line 42
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->hasStatus:Z

    .line 47
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->running:Z

    .line 48
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->threadRunning:Z

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->startStopLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoStateListeners:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoListeners:Ljava/util/List;

    .line 66
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->quality:[I

    .line 67
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;->ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->status:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    .line 69
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->manager:Landroid/hardware/SensorManager;

    .line 70
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->orientation:Landroid/hardware/Sensor;

    .line 71
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController$1;-><init>(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->sel:Landroid/hardware/SensorEventListener;

    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/arsdk/arrouter/ARCalibrationController$2;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController$2;-><init>(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->qualityReadingThread:Ljava/lang/Thread;

    .line 120
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/arsdk/arrouter/ARCalibrationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->hasStatus:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->status:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/arsdk/arrouter/ARCalibrationController;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;
    .param p1, "x1"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->status:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->updateMagnetoStateListeners()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->updateMagnetoListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->threadRunning:Z

    return v0
.end method

.method static synthetic access$500(Lcom/parrot/arsdk/arrouter/ARCalibrationController;[I)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;
    .param p1, "x1"    # [I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->readQualityFromSocket([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->quality:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/arsdk/arrouter/ARCalibrationController;[I[I)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->qualityChanged([I[I)Z

    move-result v0

    return v0
.end method

.method private closeQualitySocket()V
    .locals 3

    .prologue
    .line 296
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoQualitySocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoQualitySocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoQualitySocket:Landroid/net/LocalSocket;

    .line 305
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->TAG:Ljava/lang/String;

    const-string v2, "Error while closing socket"

    invoke-static {v1, v2, v0}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private openQualitySocket()Z
    .locals 8

    .prologue
    .line 225
    const/4 v5, 0x1

    .line 226
    .local v5, "res":Z
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    .line 227
    .local v4, "qs":Landroid/net/LocalSocket;
    const/4 v0, 0x0

    .line 229
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Landroid/net/LocalSocketAddress;

    const-string v7, "skycontroller.magneto.quality"

    invoke-direct {v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    if-eqz v5, :cond_0

    .line 238
    const/16 v6, 0x3e8

    :try_start_1
    invoke-virtual {v4, v6}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 248
    :try_start_2
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 249
    .local v3, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 253
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v0, :cond_3

    const/4 v5, 0x1

    .line 256
    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    .line 258
    iput-object v4, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoQualitySocket:Landroid/net/LocalSocket;

    .line 259
    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoQualityReader:Ljava/io/BufferedReader;

    .line 262
    :cond_2
    return v5

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v6, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->TAG:Ljava/lang/String;

    const-string v7, "Impossible to connect to magneto quality server"

    invoke-static {v6, v7, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    const/4 v5, 0x0

    goto :goto_0

    .line 239
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 240
    .restart local v2    # "ioe":Ljava/io/IOException;
    sget-object v6, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->TAG:Ljava/lang/String;

    const-string v7, "Impossible to set timeout"

    invoke-static {v6, v7, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    const/4 v5, 0x0

    goto :goto_1

    .line 250
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 251
    .restart local v2    # "ioe":Ljava/io/IOException;
    sget-object v6, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->TAG:Ljava/lang/String;

    const-string v7, "Unable to get socket input stream"

    invoke-static {v6, v7, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 253
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private declared-synchronized qualityChanged([I[I)Z
    .locals 4
    .param p1, "prev"    # [I
    .param p2, "next"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 309
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    aget v2, p1, v2

    const/4 v3, 0x0

    aget v3, p2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    if-eq v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 312
    .local v0, "ret":Z
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, p2, v2

    aput v2, p1, v1

    .line 313
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, p2, v2

    aput v2, p1, v1

    .line 314
    const/4 v1, 0x2

    const/4 v2, 0x2

    aget v2, p2, v2

    aput v2, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return v0

    .line 309
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readQualityFromSocket([I)Z
    .locals 7
    .param p1, "out"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "line":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoQualityReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 273
    :goto_0
    if-nez v0, :cond_0

    .line 291
    :goto_1
    return v3

    .line 275
    :cond_0
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "values":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 278
    sget-object v4, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, p1, v5

    .line 284
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, p1, v5

    .line 285
    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, p1, v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    .line 291
    goto :goto_1

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 270
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v2    # "values":[Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private declared-synchronized updateMagnetoListeners()V
    .locals 7

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->hasStatus:Z

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;

    .line 218
    .local v0, "l":Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->status:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->quality:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->quality:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->quality:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;->magnetoCalibrationUpdated(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 216
    .end local v0    # "l":Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 221
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized updateMagnetoStateListeners()V
    .locals 3

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->hasStatus:Z

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;

    .line 209
    .local v0, "l":Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->status:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    invoke-interface {v0, v2}, Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;->magnetoCalibrationStateUpdated(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 207
    .end local v0    # "l":Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 212
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addMagnetoListener(Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->hasStatus:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->status:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->quality:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->quality:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->quality:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;->magnetoCalibrationUpdated(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMagnetoStateListener(Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->hasStatus:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->status:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;

    invoke-interface {p1, v0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;->magnetoCalibrationStateUpdated(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMagnetoListener(Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMagnetoStateListener(Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationStateListener;

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->magnetoStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 124
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->startStopLock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    iget-boolean v3, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->running:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    .line 143
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->manager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->sel:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->orientation:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->delay:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->openQualitySocket()Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->manager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->sel:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 136
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->running:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->threadRunning:Z

    .line 141
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->qualityReadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->running:Z

    monitor-exit v2

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->startStopLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->running:Z

    if-nez v1, :cond_0

    monitor-exit v2

    .line 169
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->manager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->sel:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->threadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->qualityReadingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->closeQualitySocket()V

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->running:Z

    .line 168
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v1, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->TAG:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for thread end"

    invoke-static {v1, v3, v0}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
