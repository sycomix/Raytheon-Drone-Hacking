.class public Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;
.super Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;
.source "FixedWingPhotoRecordController.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;


# instance fields
.field private context:Landroid/content/Context;

.field private currentMassStorageId:Ljava/lang/Integer;

.field private deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

.field private massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

.field private notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;-><init>()V

    .line 30
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 31
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 32
    iput-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .line 33
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 34
    iput-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 35
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->context:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->initBroadcastReceivers()V

    .line 37
    return-void
.end method

.method private computeFinalState(Z)V
    .locals 6
    .param p1, "notifyErrors"    # Z

    .prologue
    .line 224
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    const-string v5, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v4, v5}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    const-string v5, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v4, v5}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 227
    .local v2, "pictureStateChanged":Landroid/os/Bundle;
    const-string v4, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedNotificationStateKey"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 228
    .local v1, "newPictureState":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 231
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->guessFailureReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v3

    .line 232
    .local v3, "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->getDelegates()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 234
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0, p0, v3}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 227
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    .end local v1    # "newPictureState":Z
    .end local v3    # "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 244
    .end local v2    # "pictureStateChanged":Landroid/os/Bundle;
    :cond_2
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v4, v5, :cond_3

    .line 246
    sget-object v4, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 247
    sget-object v4, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_AVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 254
    :goto_2
    return-void

    .line 251
    :cond_3
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 252
    sget-object v4, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_2
.end method

.method private goToNotReady()V
    .locals 3

    .prologue
    .line 206
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 207
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 208
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 210
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_0

    .line 215
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_1
    return-void
.end method

.method private guessFailureReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    .locals 8

    .prologue
    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, "mediaError":Z
    const/4 v1, 0x0

    .line 309
    .local v1, "lowBattery":Z
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 311
    .local v5, "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-nez v6, :cond_0

    .line 313
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 376
    :goto_0
    return-object v6

    .line 316
    :cond_0
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v6}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    .line 319
    .local v4, "notififDict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v6, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 321
    const-string v6, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 322
    .local v0, "alertState":Landroid/os/Bundle;
    const-string v6, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 324
    const-string v6, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v3

    .line 325
    .local v3, "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    sget-object v6, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 341
    .end local v0    # "alertState":Landroid/os/Bundle;
    .end local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v7, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-eq v6, v7, :cond_2

    .line 343
    const/4 v2, 0x1

    .line 347
    :cond_2
    if-eqz v2, :cond_3

    .line 349
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_6

    .line 351
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 358
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 360
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_7

    .line 362
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_LOWBATTERY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 371
    :cond_4
    :goto_3
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_5

    .line 373
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    :cond_5
    move-object v6, v5

    .line 376
    goto :goto_0

    .line 329
    .restart local v0    # "alertState":Landroid/os/Bundle;
    .restart local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :pswitch_0
    const/4 v1, 0x1

    .line 330
    goto :goto_1

    .line 355
    .end local v0    # "alertState":Landroid/os/Bundle;
    .end local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :cond_6
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_2

    .line 366
    :cond_7
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_3

    .line 325
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
    .line 180
    new-instance v0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;-><init>(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;)V

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    .line 181
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 190
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 191
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 200
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    return-void
.end method

.method private updateStorageMedia()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 261
    iget-object v10, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v10}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v7

    .line 262
    .local v7, "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v10, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v7, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 264
    const-string v10, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v7, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 265
    .local v0, "commonStateMassStorageInfoStateListChanged":Landroid/os/Bundle;
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 266
    sget-object v10, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOSTORAGEMEDIA:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v10, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 268
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 270
    .local v6, "massStorageIdKey":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 271
    .local v1, "infoDict":Landroid/os/Bundle;
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationMassStorageIdKey"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    .line 272
    .local v5, "massStorageId":I
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationPluggedKey"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v11

    if-eqz v11, :cond_1

    move v4, v8

    .line 273
    .local v4, "isPlugged":Z
    :goto_1
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationInternalKey"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v11

    if-eqz v11, :cond_2

    move v3, v8

    .line 274
    .local v3, "isInternalMemory":Z
    :goto_2
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationFullKey"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v11

    if-eqz v11, :cond_3

    move v2, v8

    .line 276
    .local v2, "isFull":Z
    :goto_3
    if-eqz v4, :cond_0

    .line 278
    if-eqz v2, :cond_4

    .line 280
    iget-object v11, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v12, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-eq v11, v12, :cond_0

    .line 285
    sget-object v11, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_STORAGEMEDIAFULL:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v11, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_0

    .end local v2    # "isFull":Z
    .end local v3    # "isInternalMemory":Z
    .end local v4    # "isPlugged":Z
    :cond_1
    move v4, v9

    .line 272
    goto :goto_1

    .restart local v4    # "isPlugged":Z
    :cond_2
    move v3, v9

    .line 273
    goto :goto_2

    .restart local v3    # "isInternalMemory":Z
    :cond_3
    move v2, v9

    .line 274
    goto :goto_3

    .line 291
    .restart local v2    # "isFull":Z
    :cond_4
    iget-object v11, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    if-nez v11, :cond_0

    if-eqz v3, :cond_0

    .line 294
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 295
    sget-object v11, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v11, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_0

    .line 303
    .end local v0    # "commonStateMassStorageInfoStateListChanged":Landroid/os/Bundle;
    .end local v1    # "infoDict":Landroid/os/Bundle;
    .end local v2    # "isFull":Z
    .end local v3    # "isInternalMemory":Z
    .end local v4    # "isPlugged":Z
    .end local v5    # "massStorageId":I
    .end local v6    # "massStorageIdKey":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method public getCurrentMassStorageId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeviceController()Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    return-object v0
.end method

.method public onNotificationDictionaryChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "dictionary"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 149
    if-nez p1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->updateStorageMedia()V

    .line 154
    invoke-direct {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->computeFinalState(Z)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v0, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->updateStorageMedia()V

    .line 161
    invoke-direct {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->computeFinalState(Z)V

    .line 165
    :cond_2
    const-string v0, "ARDrone3DeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->computeFinalState(Z)V

    goto :goto_0
.end method

.method public setDeviceController(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)V
    .locals 2
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "performRefresh":Z
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 53
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->unregisterReceivers()V

    .line 54
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->goToNotReady()V

    .line 62
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .line 63
    if-eqz v0, :cond_1

    .line 65
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->onNotificationDictionaryChanged(Landroid/os/Bundle;)V

    .line 67
    :cond_1
    return-void

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->registerReceivers()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_2

    .line 81
    sget-object v1, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_INPROGRESS:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 85
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 86
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestRecordPicture(B)V

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 93
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 108
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_2
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->goToNotReady()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_2

    .line 118
    sget-object v1, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 123
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 140
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_2
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingPhotoRecordController;->goToNotReady()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
