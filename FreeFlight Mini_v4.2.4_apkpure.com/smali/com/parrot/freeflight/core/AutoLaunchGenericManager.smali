.class public abstract Lcom/parrot/freeflight/core/AutoLaunchGenericManager;
.super Ljava/lang/Object;
.source "AutoLaunchGenericManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "AutoLaunchManager"


# instance fields
.field private mAppVisible:Z

.field private final mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mCurrentActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mDroneModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHomeActivityLoaded:Z

.field protected final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 1
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "gamePadManager"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$1;-><init>(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 53
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$2;-><init>(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p2, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 65
    iput-object p4, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 67
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$3;-><init>(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnApplicationVisibilityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;)V

    .line 76
    new-instance v0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$4;-><init>(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnCurrentActivityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mAppVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchGenericManager;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mAppVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mHomeActivityLoaded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchGenericManager;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mHomeActivityLoaded:Z

    return p1
.end method


# virtual methods
.method protected abstract checkAutoLaunch()V
.end method

.method protected abstract checkProductsFirmware()V
.end method

.method public copyEmbeddedFirmwares(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    const-string v0, "AutoLaunchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyEmbeddedFirmwares "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 114
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->setOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getEmbeddedFirmwareCopyExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->setOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    goto :goto_0
.end method

.method public abstract getPendingIntent()Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected abstract onDroneModelChanged(Lcom/parrot/freeflight/core/model/Model;)V
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public removeEmbeddedFirmwareCopyListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    const-string v0, "AutoLaunchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeEmbeddedFirmwareCopyListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mEmbeddedFirmwareCopyTask:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->removeOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 105
    iput-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mDroneModel:Lcom/parrot/freeflight/core/model/Model;

    .line 106
    iput-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mCurrentActivity:Landroid/app/Activity;

    .line 107
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mHomeActivityLoaded:Z

    .line 108
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mAppVisible:Z

    .line 109
    return-void
.end method

.method public start()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.parrot.freeflight3.blacklist_updated"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 94
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mBlacklistUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->reset()V

    .line 101
    return-void
.end method

.method protected tryLauncher(Lcom/parrot/freeflight/core/AutoLaunchChecker;)V
    .locals 6
    .param p1, "checker"    # Lcom/parrot/freeflight/core/AutoLaunchChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->isNeedAutoLaunch()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mHomeActivityLoaded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mAppVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->getLaunchType(Landroid/app/Activity;)I

    move-result v1

    .line 132
    .local v1, "launchType":I
    const-string v2, "AutoLaunchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", AutoLaunchChecker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    packed-switch v1, :pswitch_data_0

    .line 151
    .end local v1    # "launchType":I
    :cond_0
    :goto_0
    return-void

    .line 135
    .restart local v1    # "launchType":I
    :pswitch_0
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->setNeedAutoLaunch(Z)V

    .line 136
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 138
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->setCondition(Z)V

    goto :goto_0

    .line 144
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p1, v5}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->setNeedAutoLaunch(Z)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
