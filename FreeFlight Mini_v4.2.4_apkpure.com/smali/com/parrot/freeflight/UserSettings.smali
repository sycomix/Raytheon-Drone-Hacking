.class public Lcom/parrot/freeflight/UserSettings;
.super Ljava/lang/Object;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;,
        Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_DRONE_ID:Ljava/lang/String; = "current_drone_id"

.field private static final KEY_CURRENT_REMOTE_CTRL_ID:Ljava/lang/String; = "current_remote_ctrl_id"

.field private static final KEY_KNOWN_DRONE_LIST:Ljava/lang/String; = "known_drones"

.field private static final KEY_KNOWN_REMOTE_CTRL_LIST:Ljava/lang/String; = "known_remote_ctrl"

.field private static final PREFERENCE_FILENAME:Ljava/lang/String; = "user_settings"


# instance fields
.field private mCurrentDroneId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentRemoteCtrlId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mKnownDroneSet:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKnownRemoteCtrlSet:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnUserDroneChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnUserRemoteCtrlChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mOnUserDroneChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mOnUserRemoteCtrlChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    const-string/jumbo v2, "user_settings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 56
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "known_drones"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 57
    .local v0, "droneSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    .line 58
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "current_drone_id"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "known_remote_ctrl"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 60
    .local v1, "remoteCtrlSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    .line 61
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "current_remote_ctrl_id"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private notifyUserDroneChange()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mOnUserDroneChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;

    .line 172
    .local v0, "listener":Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;->onChange()V

    goto :goto_0

    .line 174
    .end local v0    # "listener":Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;
    :cond_0
    return-void
.end method

.method private notifyUserRemoteCtrlChange()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mOnUserRemoteCtrlChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;

    .line 178
    .local v0, "listener":Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;->onChange()V

    goto :goto_0

    .line 180
    .end local v0    # "listener":Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnUserDroneChangeListener(Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/UserSettings;->mOnUserDroneChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {p1}, Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;->onChange()V

    .line 111
    return-void
.end method

.method public addOnUserRemoteCtrlChangeListener(Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/UserSettings;->mOnUserRemoteCtrlChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {p1}, Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;->onChange()V

    .line 164
    return-void
.end method

.method public forgetCurrentUserDrone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    .line 81
    .local v1, "userDrone":Lcom/parrot/freeflight/UserDrone;
    iput-object v3, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    .line 82
    iput-object v3, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    .line 83
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/UserSettings;->unregisterUserDrone(Lcom/parrot/freeflight/UserDrone;)V

    .line 84
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_drone_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    invoke-direct {p0}, Lcom/parrot/freeflight/UserSettings;->notifyUserDroneChange()V

    .line 89
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "userDrone":Lcom/parrot/freeflight/UserDrone;
    :cond_0
    return-void
.end method

.method public forgetCurrentUserRemoteCtrl()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    if-eqz v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    .line 151
    .local v1, "userRemoteCtrl":Lcom/parrot/freeflight/UserRemoteCtrl;
    iput-object v3, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    .line 152
    iput-object v3, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/UserSettings;->unregisterUserRemoteCtrl(Lcom/parrot/freeflight/UserRemoteCtrl;)V

    .line 154
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_remote_ctrl_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    invoke-direct {p0}, Lcom/parrot/freeflight/UserSettings;->notifyUserRemoteCtrlChange()V

    .line 159
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "userRemoteCtrl":Lcom/parrot/freeflight/UserRemoteCtrl;
    :cond_0
    return-void
.end method

.method public getUserDrone()Lcom/parrot/freeflight/UserDrone;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 184
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "droneInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 187
    invoke-static {v0}, Lcom/parrot/freeflight/UserDrone;->create(Ljava/lang/String;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    .line 190
    .end local v0    # "droneInfo":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    return-object v1
.end method

.method public getUserRemoteCtrl()Lcom/parrot/freeflight/UserRemoteCtrl;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "remoteCtrlInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 198
    invoke-static {v0}, Lcom/parrot/freeflight/UserRemoteCtrl;->create(Ljava/lang/String;)Lcom/parrot/freeflight/UserRemoteCtrl;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    .line 201
    .end local v0    # "remoteCtrlInfo":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    return-object v1
.end method

.method public registerUserDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 4
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    new-instance v0, Lcom/parrot/freeflight/UserDrone;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/UserDrone;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 93
    .local v0, "drone":Lcom/parrot/freeflight/UserDrone;
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/parrot/freeflight/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 95
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "known_drones"

    iget-object v3, p0, Lcom/parrot/freeflight/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-virtual {v0}, Lcom/parrot/freeflight/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/UserDrone;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    return-void
.end method

.method public registerUserRemoteCtrl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 4
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    new-instance v1, Lcom/parrot/freeflight/UserRemoteCtrl;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/UserRemoteCtrl;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 133
    .local v1, "remoteCtrl":Lcom/parrot/freeflight/UserRemoteCtrl;
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/parrot/freeflight/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "known_remote_ctrl"

    iget-object v3, p0, Lcom/parrot/freeflight/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-virtual {v1}, Lcom/parrot/freeflight/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/parrot/freeflight/UserRemoteCtrl;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    return-void
.end method

.method public removeOnUserDroneChangeListener(Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/UserSettings$OnUserDroneChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/UserSettings;->mOnUserDroneChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public removeOnUserRemoteCtrlChangeListener(Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/UserSettings$OnUserRemoteCtrlChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/UserSettings;->mOnUserRemoteCtrlChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public setCurrentUserDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 3
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/UserDrone;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/UserDrone;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/UserDrone;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    iput-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    .line 67
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v1}, Lcom/parrot/freeflight/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "known_drones"

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v1}, Lcom/parrot/freeflight/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/UserDrone;

    invoke-virtual {v2}, Lcom/parrot/freeflight/UserDrone;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string v1, "current_drone_id"

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    invoke-direct {p0}, Lcom/parrot/freeflight/UserSettings;->notifyUserDroneChange()V

    .line 76
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public setCurrentUserRemoteCtrl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 3
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/UserRemoteCtrl;->matchDeviceService(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/UserRemoteCtrl;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/UserRemoteCtrl;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    iput-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    .line 120
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    invoke-virtual {v1}, Lcom/parrot/freeflight/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "known_remote_ctrl"

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 124
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    invoke-virtual {v1}, Lcom/parrot/freeflight/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/UserRemoteCtrl;

    invoke-virtual {v2}, Lcom/parrot/freeflight/UserRemoteCtrl;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v1, "current_remote_ctrl_id"

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    invoke-direct {p0}, Lcom/parrot/freeflight/UserSettings;->notifyUserRemoteCtrlChange()V

    .line 129
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public unregisterUserDrone(Lcom/parrot/freeflight/UserDrone;)V
    .locals 3
    .param p1, "userDrone"    # Lcom/parrot/freeflight/UserDrone;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/parrot/freeflight/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "known_drones"

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-virtual {p1}, Lcom/parrot/freeflight/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    return-void
.end method

.method public unregisterUserRemoteCtrl(Lcom/parrot/freeflight/UserRemoteCtrl;)V
    .locals 3
    .param p1, "userRemoteCtrl"    # Lcom/parrot/freeflight/UserRemoteCtrl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/parrot/freeflight/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "known_remote_ctrl"

    iget-object v2, p0, Lcom/parrot/freeflight/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-virtual {p1}, Lcom/parrot/freeflight/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    return-void
.end method
