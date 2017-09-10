.class public Lcom/parrot/freeflight/core/connection/WifiReconnection;
.super Ljava/lang/Object;
.source "WifiReconnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;,
        Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;
    }
.end annotation


# static fields
.field private static final DELAY_RECONNECTION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FFMini.Connect.Fast"


# instance fields
.field private mCurrentTask:Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSavedSSID:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/controller/utils/WifiUtils;Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;)V
    .locals 1
    .param p1, "wifiUtils"    # Lcom/parrot/controller/utils/WifiUtils;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/parrot/freeflight/core/connection/WifiReconnection$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/WifiReconnection$1;-><init>(Lcom/parrot/freeflight/core/connection/WifiReconnection;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    .line 44
    iput-object p2, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mListener:Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/connection/WifiReconnection;)Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/WifiReconnection;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mListener:Lcom/parrot/freeflight/core/connection/WifiReconnection$IListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 66
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mTimer:Ljava/util/Timer;

    .line 67
    iput-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mCurrentTask:Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;

    .line 69
    :cond_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mCurrentTask:Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mCurrentTask:Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;->setReconnectionAlreadyDone(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public saveSSID()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    invoke-virtual {v0}, Lcom/parrot/controller/utils/WifiUtils;->getCurrentWifiSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mSavedSSID:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public start(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 6
    .param p1, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/connection/WifiReconnection;->cancel()V

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mSavedSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mTimer:Ljava/util/Timer;

    .line 58
    new-instance v0, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mWifiUtils:Lcom/parrot/controller/utils/WifiUtils;

    iget-object v2, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mSavedSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/utils/WifiUtils;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mCurrentTask:Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/WifiReconnection;->mCurrentTask:Lcom/parrot/freeflight/core/connection/WifiReconnection$FastReconnectionTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 61
    :cond_0
    return-void
.end method
