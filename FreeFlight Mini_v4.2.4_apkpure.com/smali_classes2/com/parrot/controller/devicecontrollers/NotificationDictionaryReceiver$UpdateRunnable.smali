.class Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;
.super Ljava/lang/Object;
.source "NotificationDictionaryReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private dictionaryQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;)V
    .locals 4
    .param p1, "delegate"    # Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leaks might occur for this class : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;->delegate:Ljava/lang/ref/WeakReference;

    .line 63
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;->dictionaryQueue:Ljava/util/LinkedList;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;
    .param p2, "x1"    # Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;-><init>(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;->dictionaryQueue:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;->delegate:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 71
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;->dictionaryQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;

    .line 75
    .local v1, "delegateRef":Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;
    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v1, v0}, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;->onNotificationDictionaryChanged(Landroid/os/Bundle;)V

    .line 79
    :cond_0
    monitor-exit p0

    .line 81
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "delegateRef":Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;
    :cond_1
    return-void

    .line 79
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
