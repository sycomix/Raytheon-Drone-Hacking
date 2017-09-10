.class public Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ARMediaNotificationReceiver.java"


# instance fields
.field private listener:Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiver;->listener:Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;

    .line 48
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "dictionary":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiver;->listener:Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "ARMediaManagerNotificationDictionaryIsInitKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiver;->listener:Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;

    invoke-interface {v1}, Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;->onNotificationDictionaryIsInit()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v1, "ARMediaManagerNotificationDictionaryUpdatedKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiver;->listener:Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;

    const-string v1, "ARMediaManagerNotificationDictionaryUpdatedKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v1}, Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;->onNotificationDictionaryIsUpdated(Z)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v1, "ARMediaManagerNotificationDictionaryUpdatingKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    iget-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiver;->listener:Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;

    const-string v1, "ARMediaManagerNotificationDictionaryUpdatingKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;->onNotificationDictionaryIsUpdating(D)V

    goto :goto_0

    .line 69
    :cond_3
    const-string v1, "ARMediaManagerNotificationDictionaryMediaAddedKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiver;->listener:Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;

    const-string v1, "ARMediaManagerNotificationDictionaryMediaAddedKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/parrot/arsdk/armedia/ARMediaNotificationReceiverListener;->onNotificationDictionaryMediaAdded(Ljava/lang/String;)V

    goto :goto_0
.end method
