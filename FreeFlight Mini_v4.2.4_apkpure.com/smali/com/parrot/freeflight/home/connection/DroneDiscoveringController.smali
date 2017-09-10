.class public Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;
.super Landroid/support/v4/app/Fragment;
.source "DroneDiscoveringController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;,
        Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;,
        Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;
    }
.end annotation


# static fields
.field private static final DISCOVERY_TIMEOUT:I = 0x3a98


# instance fields
.field private final mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

.field private final mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

.field private final mDiscoveryUid:Ljava/lang/String;

.field private mListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

.field private mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTimingHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 220
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$1;-><init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$2;-><init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$3;-><init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mTimingHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDeviceList:Ljava/util/ArrayList;

    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDiscoveryUid:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_IDLE:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 72
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getDiscoveryManager()Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;
    .param p1, "x1"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->runStateMachine(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private doStart()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mTimingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDiscoveryUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->connect(Ljava/lang/String;Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;)V

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->startBLEDiscovery()V

    .line 172
    return-void
.end method

.method private doStop()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mTimingHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->stopBLEDiscovery()V

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDiscoveryUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->disconnect(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private isBluetoothOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 213
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 215
    .local v1, "state":I
    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 217
    .end local v1    # "state":I
    :cond_1
    return v2
.end method

.method private notifyChanged()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;->onStateChange(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;)V

    .line 184
    :cond_0
    return-void
.end method

.method private runStateMachine(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;)V
    .locals 2
    .param p1, "event"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$4;->$SwitchMap$com$parrot$freeflight$home$connection$DroneDiscoveringController$State:[I

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 92
    :pswitch_0
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$4;->$SwitchMap$com$parrot$freeflight$home$connection$DroneDiscoveringController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->isBluetoothOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_DISCOVERING:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 96
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->notifyChanged()V

    .line 97
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->doStart()V

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_WAITING_BLUETOOTH_ON:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 100
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->notifyChanged()V

    goto :goto_0

    .line 104
    :pswitch_2
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_CLOSED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    goto :goto_0

    .line 110
    :pswitch_3
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$4;->$SwitchMap$com$parrot$freeflight$home$connection$DroneDiscoveringController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 121
    :pswitch_4
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_CLOSED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    goto :goto_0

    .line 112
    :pswitch_5
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_DISCOVERING:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 113
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->notifyChanged()V

    .line 114
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->doStart()V

    goto :goto_0

    .line 117
    :pswitch_6
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_IDLE:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 118
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->notifyChanged()V

    goto :goto_0

    .line 127
    :pswitch_7
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$4;->$SwitchMap$com$parrot$freeflight$home$connection$DroneDiscoveringController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    :pswitch_8
    goto :goto_0

    .line 144
    :pswitch_9
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_CLOSED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 145
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->doStop()V

    goto :goto_0

    .line 129
    :pswitch_a
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_DEVICE_FOUND:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 130
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->notifyChanged()V

    .line 131
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->doStop()V

    goto :goto_0

    .line 134
    :pswitch_b
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_IDLE:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 135
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->notifyChanged()V

    .line 136
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->doStop()V

    goto :goto_0

    .line 139
    :pswitch_c
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_DISCOVERY_FAILED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 140
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->notifyChanged()V

    .line 141
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->doStop()V

    goto/16 :goto_0

    .line 148
    :pswitch_d
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_WAITING_BLUETOOTH_ON:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 149
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->notifyChanged()V

    .line 150
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->doStop()V

    goto/16 :goto_0

    .line 156
    :pswitch_e
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$4;->$SwitchMap$com$parrot$freeflight$home$connection$DroneDiscoveringController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 158
    :pswitch_f
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_CLOSED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_e
    .end packed-switch

    .line 92
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 110
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 127
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 156
    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public getDeviceList()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->setRetainInstance(Z)V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 87
    return-void
.end method

.method public registerListener(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

    .line 188
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->notifyChanged()V

    .line 189
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

    .line 203
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_RESET:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->runStateMachine(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;)V

    .line 204
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_START_DISCOVERY:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->runStateMachine(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;)V

    .line 199
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

    if-ne v0, p1, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->mListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

    .line 195
    :cond_0
    return-void
.end method
