.class public Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationDictionaryReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_HANDLER:Landroid/os/Handler;

.field private static final NOTIFICATION_HANDLER_THREAD:Landroid/os/HandlerThread;


# instance fields
.field private final mUpdateRunnable:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationDictionaryReceiver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;->NOTIFICATION_HANDLER_THREAD:Landroid/os/HandlerThread;

    .line 19
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;->initHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;->NOTIFICATION_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    new-instance v0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;-><init>(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$1;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;->mUpdateRunnable:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;

    .line 33
    return-void
.end method

.method private static final initHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 23
    sget-object v1, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;->NOTIFICATION_HANDLER_THREAD:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;->NOTIFICATION_HANDLER_THREAD:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .local v0, "handler":Landroid/os/Handler;
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    .local v0, "dictionary":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;->mUpdateRunnable:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;

    monitor-enter v2

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;->mUpdateRunnable:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;

    invoke-static {v1}, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;->access$100(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    sget-object v1, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;->NOTIFICATION_HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;->mUpdateRunnable:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver$UpdateRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void

    .line 42
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
