.class public Lcom/parrot/freeflight/core/model/ModelStore;
.super Ljava/lang/Object;
.source "ModelStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;,
        Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/model/ModelStore$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUserDrone:Lcom/parrot/freeflight/UserDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mUserSettings:Lcom/parrot/freeflight/UserSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/UserSettings;Lcom/parrot/freeflight/location/SmartLocationManager;)V
    .locals 1
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "userSettings"    # Lcom/parrot/freeflight/UserSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    iput-object p2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mApplicationContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 62
    iput-object p4, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    .line 63
    iput-object p5, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 64
    new-instance v0, Lcom/parrot/freeflight/core/model/ModelStore$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/model/ModelStore$1;-><init>(Lcom/parrot/freeflight/core/model/ModelStore;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnApplicationVisibilityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->saveDrone()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->saveRemoteCtrl()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/UserRemoteCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/UserRemoteCtrl;)Lcom/parrot/freeflight/UserRemoteCtrl;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;
    .param p1, "x1"    # Lcom/parrot/freeflight/UserRemoteCtrl;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/Model;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->notifyRemoteListeners()V

    return-void
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->loadRemoteCtrl()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/UserSettings;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/UserDrone;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/UserDrone;)Lcom/parrot/freeflight/UserDrone;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;
    .param p1, "x1"    # Lcom/parrot/freeflight/UserDrone;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/Model;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->notifyListeners()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/location/SmartLocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->loadDrone()V

    return-void
.end method

.method private loadDrone()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->loadFromStore()V

    .line 88
    :cond_0
    return-void
.end method

.method private loadRemoteCtrl()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->loadFromStore()V

    .line 100
    :cond_0
    return-void
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 218
    .local v0, "listener":Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/core/model/ModelStore$Listener;->onModelChange(Lcom/parrot/freeflight/core/model/Model;)V

    goto :goto_0

    .line 220
    .end local v0    # "listener":Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    :cond_0
    return-void
.end method

.method private notifyRemoteListeners()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    .line 224
    .local v0, "listener":Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;->onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V

    goto :goto_0

    .line 226
    .end local v0    # "listener":Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
    :cond_0
    return-void
.end method

.method private saveDrone()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->saveToStore()V

    .line 82
    :cond_0
    return-void
.end method

.method private saveRemoteCtrl()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->saveToStore()V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/ModelStore$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/core/model/ModelStore$Listener;->onModelChange(Lcom/parrot/freeflight/core/model/Model;)V

    .line 191
    return-void
.end method

.method public addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;->onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V

    .line 200
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->saveDrone()V

    .line 171
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->saveRemoteCtrl()V

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 174
    iput-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserDrone:Lcom/parrot/freeflight/UserDrone;

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/parrot/freeflight/core/model/Model;->listenEvents(Landroid/content/Context;Z)V

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->close()V

    .line 178
    iput-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    .line 180
    :cond_0
    iput-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/parrot/freeflight/core/model/Model;->listenEvents(Landroid/content/Context;Z)V

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->close()V

    .line 184
    iput-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    .line 186
    :cond_1
    return-void
.end method

.method public getModel()Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method public getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method public removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/ModelStore$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    new-instance v1, Lcom/parrot/freeflight/core/model/ModelStore$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/model/ModelStore$2;-><init>(Lcom/parrot/freeflight/core/model/ModelStore;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/UserSettings;->addOnUserDroneChangeListener(Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;)V

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    new-instance v1, Lcom/parrot/freeflight/core/model/ModelStore$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/model/ModelStore$3;-><init>(Lcom/parrot/freeflight/core/model/ModelStore;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/UserSettings;->addOnUserRemoteCtrlChangeListener(Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;)V

    .line 167
    return-void
.end method
