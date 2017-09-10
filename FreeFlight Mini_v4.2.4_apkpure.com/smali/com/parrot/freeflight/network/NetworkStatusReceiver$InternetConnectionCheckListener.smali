.class Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;
.super Ljava/lang/Object;
.source "NetworkStatusReceiver.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/network/NetworkStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternetConnectionCheckListener"
.end annotation


# instance fields
.field private mWaitingResult:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;->mWaitingResult:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/network/NetworkStatusReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/network/NetworkStatusReceiver$1;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;->mWaitingResult:Z

    return v0
.end method


# virtual methods
.method public markWaiting()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;->mWaitingResult:Z

    .line 34
    return-void
.end method

.method public onCheck(Z)V
    .locals 2
    .param p1, "hasInternet"    # Z

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.parrot.freeflight4.NetworkStatus.notificationKey"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "IsInternetReachableIntentKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;->mWaitingResult:Z

    .line 42
    return-void
.end method
