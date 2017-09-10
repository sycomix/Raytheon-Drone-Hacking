.class public Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ARDiscoveryServicesDevicesListUpdatedReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private delegate:Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiverDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "ARDiscoveryServicesDevicesListUpdatedReceiver"

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiverDelegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiverDelegate;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiver;->TAG:Ljava/lang/String;

    const-string v1, "ARDiscoveryServicesDevicesListUpdatedReceiver constructor"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiver;->delegate:Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiverDelegate;

    .line 53
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiver;->delegate:Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiverDelegate;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiver;->delegate:Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiverDelegate;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/receivers/ARDiscoveryServicesDevicesListUpdatedReceiverDelegate;->onServicesDevicesListUpdated()V

    .line 64
    :cond_0
    return-void
.end method
