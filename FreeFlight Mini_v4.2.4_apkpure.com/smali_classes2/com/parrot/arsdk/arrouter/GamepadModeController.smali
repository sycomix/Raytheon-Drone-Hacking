.class public Lcom/parrot/arsdk/arrouter/GamepadModeController;
.super Ljava/lang/Object;
.source "GamepadModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arrouter/GamepadModeController$GamepadModeControllerHolder;
    }
.end annotation


# instance fields
.field private appRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 10
    invoke-static {}, Lcom/parrot/arsdk/arrouter/GamepadModeController;->nativeInit()V

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/GamepadModeController;->appRunning:Z

    .line 15
    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/GamepadModeController;->appRunning:Z

    .line 16
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/GamepadModeController;->update()V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arrouter/GamepadModeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arrouter/GamepadModeController$1;

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/GamepadModeController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/parrot/arsdk/arrouter/GamepadModeController;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/parrot/arsdk/arrouter/GamepadModeController$GamepadModeControllerHolder;->access$100()Lcom/parrot/arsdk/arrouter/GamepadModeController;

    move-result-object v0

    return-object v0
.end method

.method private native nativeCalibrate()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeUpdate(Z)V
.end method

.method private update()V
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/GamepadModeController;->appRunning:Z

    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arrouter/GamepadModeController;->nativeUpdate(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public calibrate()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/GamepadModeController;->nativeCalibrate()V

    .line 45
    return-void
.end method

.method public declared-synchronized setAppRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/parrot/arsdk/arrouter/GamepadModeController;->appRunning:Z

    .line 34
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/GamepadModeController;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
