.class public Lcom/parrot/freeflight/core/ScreenConfiguration;
.super Ljava/lang/Object;
.source "ScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;
    }
.end annotation


# static fields
.field private static final SCREEN_TAG:Ljava/lang/String; = "FFMini.Screen"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScreenStateChanged:Landroid/content/BroadcastReceiver;

.field private final mPowerManager:Landroid/os/PowerManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRegistered:Z

.field private mScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 116
    new-instance v0, Lcom/parrot/freeflight/core/ScreenConfiguration$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/ScreenConfiguration$1;-><init>(Lcom/parrot/freeflight/core/ScreenConfiguration;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mOnScreenStateChanged:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/parrot/freeflight/core/ScreenConfiguration$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/ScreenConfiguration$2;-><init>(Lcom/parrot/freeflight/core/ScreenConfiguration;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 46
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mPowerManager:Landroid/os/PowerManager;

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/core/ScreenConfiguration;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/ScreenConfiguration;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/ScreenConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/ScreenConfiguration;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/core/ScreenConfiguration;->notifyChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/ScreenConfiguration;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/ScreenConfiguration;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;

    .line 112
    .local v0, "listener":Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mScreenOn:Z

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;->onChanged(Z)V

    goto :goto_0

    .line 114
    .end local v0    # "listener":Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public isScreenOn()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mScreenOn:Z

    return v1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 90
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mScreenOn:Z

    goto :goto_0

    .line 95
    :cond_2
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mScreenOn:Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public registerListener(Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 103
    invoke-direct {p0}, Lcom/parrot/freeflight/core/ScreenConfiguration;->notifyChanged()V

    .line 104
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 50
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_1

    .line 51
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mRegistered:Z

    if-nez v2, :cond_0

    .line 54
    iput-boolean v8, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mRegistered:Z

    .line 55
    iget-object v2, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mOnScreenStateChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mScreenOn:Z

    .line 70
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 61
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 63
    iput-boolean v8, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mScreenOn:Z

    .line 68
    .end local v0    # "display":Landroid/view/Display;
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 66
    .restart local v0    # "display":Landroid/view/Display;
    :cond_3
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mScreenOn:Z

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 74
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mRegistered:Z

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mOnScreenStateChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/core/ScreenConfiguration;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method
