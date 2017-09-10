.class public Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SkyControllerNotificationDictionaryReceiver.java"


# instance fields
.field private delegate:Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiverDelegate;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiverDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiverDelegate;

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiver;->delegate:Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiverDelegate;

    .line 15
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 22
    .local v0, "dictionary":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiver;->delegate:Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiverDelegate;

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiver;->delegate:Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiverDelegate;

    invoke-interface {v1, v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerNotificationDictionaryReceiverDelegate;->onSkyControllerNotificationDictionaryChanged(Landroid/os/Bundle;)V

    .line 26
    :cond_0
    return-void
.end method
