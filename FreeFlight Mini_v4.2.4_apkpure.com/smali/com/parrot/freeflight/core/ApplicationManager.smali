.class public Lcom/parrot/freeflight/core/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;,
        Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;
    }
.end annotation


# instance fields
.field private final mApplicationVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCurrentActivityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStartedActivity:I


# direct methods
.method protected constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mCurrentActivityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mApplicationVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    new-instance v0, Lcom/parrot/freeflight/core/ApplicationManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/ApplicationManager$1;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/ApplicationManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/ApplicationManager;

    .prologue
    .line 11
    iget v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mStartedActivity:I

    return v0
.end method

.method static synthetic access$008(Lcom/parrot/freeflight/core/ApplicationManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/core/ApplicationManager;

    .prologue
    .line 11
    iget v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mStartedActivity:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mStartedActivity:I

    return v0
.end method

.method static synthetic access$010(Lcom/parrot/freeflight/core/ApplicationManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/core/ApplicationManager;

    .prologue
    .line 11
    iget v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mStartedActivity:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mStartedActivity:I

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/ApplicationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/ApplicationManager;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/parrot/freeflight/core/ApplicationManager;->notifyVisibilityChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/ApplicationManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/ApplicationManager;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/ApplicationManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mCurrentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/ApplicationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/ApplicationManager;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/parrot/freeflight/core/ApplicationManager;->notifyCurrentActivityChange()V

    return-void
.end method

.method private notifyCurrentActivityChange()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mCurrentActivityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;

    .line 100
    .local v0, "listener":Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;
    iget-object v2, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;->onCurrentActivityChange(Landroid/app/Activity;)V

    goto :goto_0

    .line 102
    .end local v0    # "listener":Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;
    :cond_0
    return-void
.end method

.method private notifyVisibilityChange()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mApplicationVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;

    .line 106
    .local v0, "listener":Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;
    iget v1, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mStartedActivity:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;->onVisibilityChange(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 108
    .end local v0    # "listener":Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public addOnApplicationVisibilityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mApplicationVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 91
    iget v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mStartedActivity:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnCurrentActivityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mCurrentActivityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;->onCurrentActivityChange(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public removeOnApplicationVisibilityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mApplicationVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public removeOnCurrentActivityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/core/ApplicationManager;->mCurrentActivityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method
