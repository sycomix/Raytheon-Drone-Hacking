.class public Lcom/parrot/freeflight/core/AutoLaunchManager;
.super Lcom/parrot/freeflight/core/AutoLaunchGenericManager;
.source "AutoLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;
    }
.end annotation


# instance fields
.field private final mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneConnectorState:I

.field private mDroneFlyingState:I

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUserDrone:Lcom/parrot/freeflight/UserDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 2
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "deviceConnector"    # Lcom/parrot/freeflight/core/DeviceConnector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorState:I

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    .line 32
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$1;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 46
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$2;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    .line 64
    iput-object p3, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    .line 65
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/AutoLaunchManager$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/AutoLaunchManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 19
    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/core/AutoLaunchManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/UserDrone;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/UserDrone;)Lcom/parrot/freeflight/UserDrone;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/UserDrone;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/AutoLaunchManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 19
    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorState:I

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/AutoLaunchManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorState:I

    return p1
.end method

.method private checkDroneFirmware()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v2}, Lcom/parrot/freeflight/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/Model;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductUpdateMandatory(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->access$402(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->refreshCondition()V

    .line 98
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->access$402(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z

    goto :goto_0
.end method


# virtual methods
.method protected checkAutoLaunch()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->isNeedAutoLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->tryLauncher(Lcom/parrot/freeflight/core/AutoLaunchChecker;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected checkProductsFirmware()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkDroneFirmware()V

    .line 117
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->checkAutoLaunch()V

    .line 118
    return-void
.end method

.method public getPendingIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->isConditionMet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDroneModelChanged(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/Model;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->access$402(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/Model;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 112
    :cond_1
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->reset()V

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mForceUpdateChecker:Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->reset()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneFlyingState:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorState:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    .line 87
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->start()V

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->registerListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 72
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->stop()V

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDeviceConnector:Lcom/parrot/freeflight/core/DeviceConnector;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mDroneConnectorListener:Lcom/parrot/freeflight/core/DeviceConnector$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->unregisterListener(Lcom/parrot/freeflight/core/DeviceConnector$IListener;)V

    .line 78
    return-void
.end method
