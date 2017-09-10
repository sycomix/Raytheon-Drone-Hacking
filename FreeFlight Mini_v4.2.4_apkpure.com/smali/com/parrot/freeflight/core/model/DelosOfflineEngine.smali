.class public Lcom/parrot/freeflight/core/model/DelosOfflineEngine;
.super Ljava/lang/Object;
.source "DelosOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;,
        Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetCutOutState;,
        Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;,
        Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxAltitude;,
        Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxRotationSpeed;,
        Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxVerticalSpeed;,
        Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxTilt;,
        Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;
    }
.end annotation


# static fields
.field private static final COMMAND_SET_ACCESSORY:I = 0x0

.field private static final COMMAND_SET_CUT_OUT_STATE:I = 0x1

.field private static final COMMAND_SET_MAX_ALTITUDE:I = 0x5

.field private static final COMMAND_SET_MAX_ROTATION_SPEED:I = 0x4

.field private static final COMMAND_SET_MAX_TILT:I = 0x2

.field private static final COMMAND_SET_MAX_VERTICAL_SPEED:I = 0x3


# instance fields
.field private final mCache:Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;

.field private final mModel:Lcom/parrot/freeflight/core/model/DelosModel;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 25
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;

    invoke-direct {v0, p0, p1}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;-><init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;Lcom/parrot/freeflight/core/model/DelosModel;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->mCache:Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;)Lcom/parrot/freeflight/core/model/DelosModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosOfflineEngine;
    .param p1, "x1"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->updateConfiguredAccessory(I)Z

    move-result v0

    return v0
.end method

.method private updateConfiguredAccessory(I)Z
    .locals 1
    .param p1, "configuredAccessory"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->updateConfiguredAccessory(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->mCache:Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->reset(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 42
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 34
    const-string v0, "FFMini.Pilot.Off"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to restore from cache, connectionState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->mCache:Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->restore()V

    .line 37
    return-void
.end method

.method public save()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->mCache:Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->reset(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 30
    return-void
.end method
