.class public Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;
.super Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;
.source "MiniDronePhotoRecordController.java"

# interfaces
.implements Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;


# instance fields
.field private context:Landroid/content/Context;

.field private currentMassStorageId:Ljava/lang/Integer;

.field private deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

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

    invoke-virtual {p0, v0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 30
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 31
    iput-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .line 32
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 33
    iput-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 34
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->context:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->initBroadcastReceivers()V

    .line 36
    return-void
.end method

.method private computeFinalState(Z)V
    .locals 6
    .param p1, "notifyErrors"    # Z

    .prologue
    .line 224
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v4, v5, :cond_1

    .line 226
    sget-object v4, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 227
    sget-object v4, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_AVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 235
    :goto_0
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    const-string v5, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v4, v5}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 237
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v4}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    const-string v5, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {v4, v5}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 238
    .local v2, "pictureStateChanged":Landroid/os/Bundle;
    const-string v4, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotificationStateKey"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 239
    .local v1, "newPictureState":Z
    :goto_1
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 242
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->guessFailureReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v3

    .line 243
    .local v3, "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 245
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p0, v3}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_2

    .line 231
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    .end local v1    # "newPictureState":Z
    .end local v2    # "pictureStateChanged":Landroid/os/Bundle;
    .end local v3    # "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    :cond_1
    iget-object v4, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 232
    sget-object v4, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v4}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_0

    .line 238
    .restart local v2    # "pictureStateChanged":Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 253
    .end local v2    # "pictureStateChanged":Landroid/os/Bundle;
    :cond_3
    return-void
.end method

.method private goToNotReady()V
    .locals 3

    .prologue
    .line 205
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 206
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 207
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 209
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_0

    .line 214
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_1
    return-void
.end method

.method private guessFailureReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    .locals 8

    .prologue
    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, "mediaError":Z
    const/4 v1, 0x0

    .line 305
    .local v1, "lowBattery":Z
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 307
    .local v5, "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-nez v6, :cond_0

    .line 309
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 372
    :goto_0
    return-object v6

    .line 312
    :cond_0
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v6}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    .line 315
    .local v4, "notififDict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v6, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 317
    const-string v6, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 318
    .local v0, "alertState":Landroid/os/Bundle;
    const-string v6, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    const-string v6, "MiniDroneDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v3

    .line 321
    .local v3, "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    sget-object v6, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 337
    .end local v0    # "alertState":Landroid/os/Bundle;
    .end local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v7, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-eq v6, v7, :cond_2

    .line 339
    const/4 v2, 0x1

    .line 343
    :cond_2
    if-eqz v2, :cond_3

    .line 345
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_6

    .line 347
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 354
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 356
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_7

    .line 358
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_LOWBATTERY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 367
    :cond_4
    :goto_3
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_5

    .line 369
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    :cond_5
    move-object v6, v5

    .line 372
    goto :goto_0

    .line 325
    .restart local v0    # "alertState":Landroid/os/Bundle;
    .restart local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :pswitch_0
    const/4 v1, 0x1

    .line 326
    goto :goto_1

    .line 351
    .end local v0    # "alertState":Landroid/os/Bundle;
    .end local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :cond_6
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_2

    .line 362
    :cond_7
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_3

    .line 321
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
    .line 179
    new-instance v0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;-><init>(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;)V

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    .line 180
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 189
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 190
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 199
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    return-void
.end method

.method private updateStorageMedia()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 258
    iget-object v9, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    invoke-virtual {v9}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v6

    .line 259
    .local v6, "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v9, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v6, v9}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 261
    const-string v9, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v6, v9}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 262
    .local v0, "commonStateMassStorageInfoStateListChanged":Landroid/os/Bundle;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 263
    sget-object v9, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOSTORAGEMEDIA:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v9, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 265
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 267
    .local v5, "massStorageIdKey":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 268
    .local v1, "infoDict":Landroid/os/Bundle;
    const-string v10, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationMassStorageIdKey"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    .line 269
    .local v4, "massStorageId":I
    const-string v10, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationPluggedKey"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v10

    if-eqz v10, :cond_1

    move v3, v7

    .line 270
    .local v3, "isPlugged":Z
    :goto_1
    const-string v10, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationFullKey"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v10

    if-eqz v10, :cond_2

    move v2, v7

    .line 272
    .local v2, "isFull":Z
    :goto_2
    if-eqz v3, :cond_0

    .line 274
    if-eqz v2, :cond_3

    .line 276
    iget-object v10, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v11, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-eq v10, v11, :cond_0

    .line 282
    sget-object v10, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_STORAGEMEDIAFULL:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v10, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_0

    .end local v2    # "isFull":Z
    .end local v3    # "isPlugged":Z
    :cond_1
    move v3, v8

    .line 269
    goto :goto_1

    .restart local v3    # "isPlugged":Z
    :cond_2
    move v2, v8

    .line 270
    goto :goto_2

    .line 288
    .restart local v2    # "isFull":Z
    :cond_3
    iget-object v10, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    if-nez v10, :cond_0

    .line 291
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 292
    sget-object v10, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v10, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_0

    .line 299
    .end local v0    # "commonStateMassStorageInfoStateListChanged":Landroid/os/Bundle;
    .end local v1    # "infoDict":Landroid/os/Bundle;
    .end local v2    # "isFull":Z
    .end local v3    # "isPlugged":Z
    .end local v4    # "massStorageId":I
    .end local v5    # "massStorageIdKey":Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public getCurrentMassStorageId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeviceController()Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    return-object v0
.end method

.method public onNotificationDictionaryChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "dictionary"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v0, :cond_0

    .line 148
    if-nez p1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->updateStorageMedia()V

    .line 153
    invoke-direct {p0, v1}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->computeFinalState(Z)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string v0, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->updateStorageMedia()V

    .line 160
    invoke-direct {p0, v1}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->computeFinalState(Z)V

    .line 164
    :cond_2
    const-string v0, "MiniDroneDeviceControllerMediaRecordStatePictureStateChangedNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->computeFinalState(Z)V

    goto :goto_0
.end method

.method public setDeviceController(Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;)V
    .locals 2
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "performRefresh":Z
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->unregisterReceivers()V

    .line 53
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->goToNotReady()V

    .line 61
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    .line 62
    if-eqz v0, :cond_1

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->onNotificationDictionaryChanged(Landroid/os/Bundle;)V

    .line 66
    :cond_1
    return-void

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->registerReceivers()V

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v1, :cond_2

    .line 80
    sget-object v1, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_INPROGRESS:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 84
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 85
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;->userRequestRecordPicture(B)V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 92
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 107
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_2
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->goToNotReady()V

    goto :goto_0

    .line 80
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
    .line 115
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/MiniDroneDeviceController;

    if-eqz v1, :cond_2

    .line 117
    sget-object v1, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 122
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 139
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_2
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/MiniDronePhotoRecordController;->goToNotReady()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
