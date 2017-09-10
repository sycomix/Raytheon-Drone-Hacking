.class public Lcom/parrot/freeflight/network/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;
    }
.end annotation


# static fields
.field public static final IsInternetReachableKey:Ljava/lang/String; = "IsInternetReachableIntentKey"

.field public static final NETWORK_STATUS_CHANGED_NOTIFICATION:Ljava/lang/String; = "com.parrot.freeflight4.NetworkStatus.notificationKey"


# instance fields
.field private final mInternetConnectionCheckListener:Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    new-instance v0, Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;-><init>(Lcom/parrot/freeflight/network/NetworkStatusReceiver$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/network/NetworkStatusReceiver;->mInternetConnectionCheckListener:Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    iget-object v1, p0, Lcom/parrot/freeflight/network/NetworkStatusReceiver;->mInternetConnectionCheckListener:Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;

    invoke-static {v1}, Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;->access$100(Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/parrot/freeflight/network/NetworkStatusReceiver;->mInternetConnectionCheckListener:Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;

    invoke-virtual {v1}, Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;->markWaiting()V

    .line 23
    new-instance v0, Lcom/parrot/freeflight/network/InternetConnectionChecker;

    iget-object v1, p0, Lcom/parrot/freeflight/network/NetworkStatusReceiver;->mInternetConnectionCheckListener:Lcom/parrot/freeflight/network/NetworkStatusReceiver$InternetConnectionCheckListener;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/network/InternetConnectionChecker;-><init>(Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;)V

    .line 24
    .local v0, "internetConnectionChecker":Lcom/parrot/freeflight/network/InternetConnectionChecker;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->performCheck(Landroid/content/Context;)V

    .line 26
    .end local v0    # "internetConnectionChecker":Lcom/parrot/freeflight/network/InternetConnectionChecker;
    :cond_0
    return-void
.end method
