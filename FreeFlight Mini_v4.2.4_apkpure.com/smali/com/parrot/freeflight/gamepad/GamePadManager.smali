.class public Lcom/parrot/freeflight/gamepad/GamePadManager;
.super Ljava/lang/Object;
.source "GamePadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;,
        Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;,
        Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    }
.end annotation


# instance fields
.field private mCurrentActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentDialog:Landroid/app/Dialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

.field private final mDiscoveryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/gamepad/VirtualInputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSelectedGamePadListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

.field private final mVirtualInputDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/gamepad/VirtualInputDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/core/model/ModelStore;Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$3;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    .line 211
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$4;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    .line 267
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$5;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    .line 68
    invoke-static {p3}, Lcom/parrot/freeflight/gamepad/GamePadDiscoveryFactory;->create(Landroid/content/Context;)Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryMap:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedGamePadListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 77
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$1;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnCurrentActivityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;)V

    .line 84
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/gamepad/GamePadManager;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->notifyCurrentActivityChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/core/model/ModelStore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->notifySelectedVirtualInputDeviceChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->notifyGamePadListListeners()V

    return-void
.end method

.method private getList(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/gamepad/VirtualInputDevice;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "inputDeviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/gamepad/VirtualInputDevice;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 262
    .local v0, "device":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "device":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    :cond_0
    return-object v1
.end method

.method private notifyCurrentActivityChange()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;

    .line 232
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;->onCurrentActivityChange(Landroid/app/Activity;)V

    goto :goto_0

    .line 234
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
    :cond_0
    return-void
.end method

.method private notifyCurrentDialogChange()V
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;

    .line 238
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentDialog:Landroid/app/Dialog;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;->onCurrentDialogChange(Landroid/app/Dialog;)V

    goto :goto_0

    .line 240
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
    :cond_0
    return-void
.end method

.method private notifyGamePadListListeners()V
    .locals 4

    .prologue
    .line 252
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    .line 253
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;->onGamePadListChange(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 255
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;
    :cond_0
    return-void
.end method

.method private notifySelectedVirtualInputDeviceChange()V
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedGamePadListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 207
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;->onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 209
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public addCurrentWindowListener(Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;->onCurrentActivityChange(Landroid/app/Activity;)V

    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentDialog:Landroid/app/Dialog;

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;->onCurrentDialogChange(Landroid/app/Dialog;)V

    .line 224
    return-void
.end method

.method public addGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;->onGamePadListChange(Ljava/util/List;Ljava/util/List;)V

    .line 245
    return-void
.end method

.method public addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedGamePadListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;->onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 199
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->close()V

    .line 112
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->unselectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 116
    .local v0, "inputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->close()V

    goto :goto_0

    .line 118
    .end local v0    # "inputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 119
    return-void
.end method

.method public forgetGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 3
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    const-string v0, "FFMini.GamePad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forget game pad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->removeSelectedListener(Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;)V

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->setSelected(Z)V

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->removeListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->unlockGamePadMode()V

    .line 161
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->close()V

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->remove(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 165
    return-void
.end method

.method public getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockGamePadMode()V
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 300
    .local v0, "selectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->lockGamePadMode()V

    .line 303
    :cond_0
    return-void
.end method

.method public removeCurrentWindowListener(Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public removeGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedGamePadListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public selectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 4
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 124
    .local v0, "currentGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :goto_0
    const-string v1, "FFMini.GamePad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select new game pad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eq v0, p1, :cond_2

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->removeListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->setSelected(Z)V

    .line 130
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->unlockGamePadMode()V

    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeSelectedListener(Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 135
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->setSelected(Z)V

    .line 136
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->addSelectedListener(Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;)V

    .line 138
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 140
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-nez v1, :cond_4

    .line 144
    const-string v1, "FFMini.GamePad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected game pad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but cannot find a virtual input device for it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    :goto_1
    return-void

    .line 122
    .end local v0    # "currentGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 146
    .restart local v0    # "currentGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->addListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V

    goto :goto_1
.end method

.method public setCurrentDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 294
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentDialog:Landroid/app/Dialog;

    .line 295
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->notifyCurrentDialogChange()V

    .line 296
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadManager$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$2;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 107
    return-void
.end method

.method public startScan()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->startScan()V

    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->addListListener(Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;)V

    .line 286
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->removeListListener(Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;)V

    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->stopScan()V

    .line 291
    return-void
.end method

.method public unlockGamePadMode()V
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 307
    .local v0, "selectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->unlockGamePadMode()V

    .line 310
    :cond_0
    return-void
.end method

.method public unselectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 2
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    const-string v0, "FFMini.GamePad"

    const-string/jumbo v1, "unselectGamePad: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->setSelected(Z)V

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->removeListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->close()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 189
    :cond_0
    return-void
.end method
