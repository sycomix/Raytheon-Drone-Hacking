.class public Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;
.super Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;
.source "JumpingSumoPhotoRecordController.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;


# instance fields
.field private context:Landroid/content/Context;

.field private currentMassStorageId:Ljava/lang/Integer;

.field private deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

.field private massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

.field private notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;-><init>()V

    .line 29
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 30
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 31
    iput-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    .line 32
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 33
    iput-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 34
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->context:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->initBroadcastReceivers()V

    .line 36
    return-void
.end method

.method private computeFinalState(Z)V
    .locals 6
    .param p1, "notifyErrors"    # Z

    .prologue
    .line 227
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v4, v5, :cond_1

    .line 229
    sget-object v4, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 230
    sget-object v4, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_AVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 238
    :goto_0
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    const-string v5, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v4, v5}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 240
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    const-string v5, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v4, v5}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 241
    .local v2, "pictureStateChanged":Landroid/os/Bundle;
    const-string v4, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotificationStateKey"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 242
    .local v1, "newPictureState":Z
    :goto_1
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->guessFailureReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v3

    .line 246
    .local v3, "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->getDelegates()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 248
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0, p0, v3}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_2

    .line 234
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    .end local v1    # "newPictureState":Z
    .end local v2    # "pictureStateChanged":Landroid/os/Bundle;
    .end local v3    # "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    :cond_1
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 235
    sget-object v4, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_0

    .line 241
    .restart local v2    # "pictureStateChanged":Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 256
    .end local v2    # "pictureStateChanged":Landroid/os/Bundle;
    :cond_3
    return-void
.end method

.method private goToNotReady()V
    .locals 3

    .prologue
    .line 208
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 209
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 210
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->getDelegates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 212
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_0

    .line 217
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_1
    return-void
.end method

.method private guessFailureReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    .locals 8

    .prologue
    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, "mediaError":Z
    const/4 v1, 0x0

    .line 326
    .local v1, "lowBattery":Z
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 328
    .local v5, "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-nez v6, :cond_0

    .line 330
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 393
    :goto_0
    return-object v6

    .line 333
    :cond_0
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-virtual {v6}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    .line 336
    .local v4, "notififDict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v6, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 338
    const-string v6, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 339
    .local v0, "alertState":Landroid/os/Bundle;
    const-string v6, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 341
    const-string v6, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v3

    .line 342
    .local v3, "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    sget-object v6, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 358
    .end local v0    # "alertState":Landroid/os/Bundle;
    .end local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v7, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-eq v6, v7, :cond_2

    .line 360
    const/4 v2, 0x1

    .line 364
    :cond_2
    if-eqz v2, :cond_3

    .line 366
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_6

    .line 368
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 375
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 377
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_7

    .line 379
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_LOWBATTERY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 388
    :cond_4
    :goto_3
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_5

    .line 390
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    :cond_5
    move-object v6, v5

    .line 393
    goto :goto_0

    .line 346
    .restart local v0    # "alertState":Landroid/os/Bundle;
    .restart local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :pswitch_0
    const/4 v1, 0x1

    .line 347
    goto :goto_1

    .line 372
    .end local v0    # "alertState":Landroid/os/Bundle;
    .end local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :cond_6
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_2

    .line 383
    :cond_7
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_3

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initBroadcastReceivers()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;-><init>(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;)V

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    .line 183
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 192
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 193
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 201
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 202
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    return-void
.end method

.method private updateStorageMedia()V
    .locals 14

    .prologue
    .line 263
    iget-object v11, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-virtual {v11}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v9

    .line 264
    .local v9, "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v9, v11}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 266
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v9, v11}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 267
    .local v1, "commonStateMassStorageInfoStateListChanged":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 268
    .local v6, "lastPhotoStorageId":Ljava/lang/Integer;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 269
    sget-object v11, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOSTORAGEMEDIA:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v11, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "bestScore":I
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 274
    .local v8, "massStorageIdKey":Ljava/lang/String;
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 275
    .local v2, "infoDict":Landroid/os/Bundle;
    const-string v12, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationMassStorageIdKey"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    .line 276
    .local v7, "massStorageId":I
    const-string v12, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationPluggedKey"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v12

    if-eqz v12, :cond_1

    const/4 v5, 0x1

    .line 277
    .local v5, "isPlugged":Z
    :goto_1
    const-string v12, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationInternalKey"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v12

    if-eqz v12, :cond_2

    const/4 v4, 0x1

    .line 278
    .local v4, "isInternalMemory":Z
    :goto_2
    const-string v12, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationFullKey"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v12

    if-eqz v12, :cond_3

    const/4 v3, 0x1

    .line 280
    .local v3, "isFull":Z
    :goto_3
    if-eqz v5, :cond_0

    .line 282
    if-eqz v3, :cond_4

    .line 284
    iget-object v12, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v13, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-eq v12, v13, :cond_0

    .line 289
    sget-object v12, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_STORAGEMEDIAFULL:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v12, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_0

    .line 276
    .end local v3    # "isFull":Z
    .end local v4    # "isInternalMemory":Z
    .end local v5    # "isPlugged":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 277
    .restart local v5    # "isPlugged":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 278
    .restart local v4    # "isInternalMemory":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 295
    .restart local v3    # "isFull":Z
    :cond_4
    const/16 v10, 0xa

    .line 297
    .local v10, "score":I
    if-nez v4, :cond_5

    .line 299
    add-int/lit8 v10, v10, 0xa

    .line 302
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v7, v12, :cond_6

    .line 305
    add-int/lit8 v10, v10, 0x5

    .line 308
    :cond_6
    if-le v10, v0, :cond_0

    .line 310
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 311
    sget-object v12, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v12, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 312
    move v0, v10

    goto :goto_0

    .line 320
    .end local v0    # "bestScore":I
    .end local v1    # "commonStateMassStorageInfoStateListChanged":Landroid/os/Bundle;
    .end local v2    # "infoDict":Landroid/os/Bundle;
    .end local v3    # "isFull":Z
    .end local v4    # "isInternalMemory":Z
    .end local v5    # "isPlugged":Z
    .end local v6    # "lastPhotoStorageId":Ljava/lang/Integer;
    .end local v7    # "massStorageId":I
    .end local v8    # "massStorageIdKey":Ljava/lang/String;
    .end local v10    # "score":I
    :cond_7
    return-void
.end method


# virtual methods
.method public getCurrentMassStorageId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeviceController()Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    return-object v0
.end method

.method public onNotificationDictionaryChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "dictionary"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-eqz v0, :cond_0

    .line 151
    if-nez p1, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->updateStorageMedia()V

    .line 156
    invoke-direct {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->computeFinalState(Z)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string v0, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->updateStorageMedia()V

    .line 163
    invoke-direct {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->computeFinalState(Z)V

    .line 167
    :cond_2
    const-string v0, "JumpingSumoDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->computeFinalState(Z)V

    goto :goto_0
.end method

.method public setDeviceController(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;)V
    .locals 2
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "performRefresh":Z
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->unregisterReceivers()V

    .line 53
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->goToNotReady()V

    .line 61
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    .line 62
    if-eqz v0, :cond_1

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->onNotificationDictionaryChanged(Landroid/os/Bundle;)V

    .line 66
    :cond_1
    return-void

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->registerReceivers()V

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startRecording()V
    .locals 4

    .prologue
    .line 78
    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-eqz v2, :cond_3

    .line 80
    sget-object v2, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    sget-object v2, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_INPROGRESS:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v2}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 85
    sget-object v2, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v2}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "value":B
    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-virtual {v2, v1}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->userRequestRecordPicture(B)V

    goto :goto_0

    .line 93
    .end local v1    # "value":B
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->getDelegates()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 95
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v3

    invoke-interface {v0, p0, v3}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 110
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_3
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->goToNotReady()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-eqz v1, :cond_2

    .line 120
    sget-object v1, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->getDelegates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 125
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 142
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_2
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoPhotoRecordController;->goToNotReady()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
