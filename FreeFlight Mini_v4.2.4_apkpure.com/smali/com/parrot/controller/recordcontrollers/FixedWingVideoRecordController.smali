.class public Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;
.super Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;
.source "FixedWingVideoRecordController.java"

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

    .line 30
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;-><init>()V

    .line 31
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 32
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 33
    iput-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .line 34
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 35
    iput-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 36
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->context:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->initBroadcastReceivers()V

    .line 38
    return-void
.end method

.method private computeFinalState(Z)V
    .locals 7
    .param p1, "notifyErrors"    # Z

    .prologue
    .line 242
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v5

    const-string v6, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 244
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v5}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v5

    const-string v6, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 245
    .local v4, "videoStateChanged":Landroid/os/Bundle;
    const-string v5, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedNotificationStateKey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;

    move-result-object v2

    .line 247
    .local v2, "newVideoState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;
    sget-object v5, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 315
    .end local v2    # "newVideoState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;
    .end local v4    # "videoStateChanged":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 250
    .restart local v2    # "newVideoState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;
    .restart local v4    # "videoStateChanged":Landroid/os/Bundle;
    :pswitch_0
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 251
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_RECORDING:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_0

    .line 256
    :pswitch_1
    const/4 v1, 0x0

    .line 257
    .local v1, "failed":Z
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_FAILED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;

    if-ne v2, v5, :cond_1

    .line 259
    const/4 v1, 0x1

    .line 262
    :cond_1
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_3

    .line 264
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 265
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_AVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 279
    :goto_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->guessFailureReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v3

    .line 282
    .local v3, "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->getDelegates()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 284
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_2

    .line 286
    invoke-interface {v0, p0, v3}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_2

    .line 269
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    .end local v3    # "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v5

    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_RECORDING:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    if-ne v5, v6, :cond_4

    .line 272
    const/4 v1, 0x1

    .line 274
    :cond_4
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 275
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_1

    .line 303
    .end local v1    # "failed":Z
    .end local v2    # "newVideoState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;
    .end local v4    # "videoStateChanged":Landroid/os/Bundle;
    :cond_5
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_6

    .line 305
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 306
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_AVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_0

    .line 310
    :cond_6
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 311
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private goToNotReady()V
    .locals 3

    .prologue
    .line 224
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 225
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 226
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 228
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_0

    .line 233
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_1
    return-void
.end method

.method private guessFailureReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    .locals 8

    .prologue
    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "mediaError":Z
    const/4 v1, 0x0

    .line 369
    .local v1, "lowBattery":Z
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 371
    .local v5, "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-nez v6, :cond_0

    .line 373
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 436
    :goto_0
    return-object v6

    .line 376
    :cond_0
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v6}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    .line 379
    .local v4, "notififDict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v6, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 381
    const-string v6, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 382
    .local v0, "alertState":Landroid/os/Bundle;
    const-string v6, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 384
    const-string v6, "ARDrone3DeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v3

    .line 385
    .local v3, "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    sget-object v6, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 401
    .end local v0    # "alertState":Landroid/os/Bundle;
    .end local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v7, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-eq v6, v7, :cond_2

    .line 403
    const/4 v2, 0x1

    .line 407
    :cond_2
    if-eqz v2, :cond_3

    .line 409
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_6

    .line 411
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 418
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 420
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_7

    .line 422
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_LOWBATTERY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 431
    :cond_4
    :goto_3
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_5

    .line 433
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    :cond_5
    move-object v6, v5

    .line 436
    goto :goto_0

    .line 389
    .restart local v0    # "alertState":Landroid/os/Bundle;
    .restart local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :pswitch_0
    const/4 v1, 0x1

    .line 390
    goto :goto_1

    .line 415
    .end local v0    # "alertState":Landroid/os/Bundle;
    .end local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :cond_6
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_2

    .line 426
    :cond_7
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_3

    .line 385
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
    .line 198
    new-instance v0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;-><init>(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;)V

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    .line 199
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 208
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 209
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 217
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 218
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    return-void
.end method

.method private updateStorageMedia()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 322
    iget-object v10, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    invoke-virtual {v10}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v7

    .line 323
    .local v7, "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v10, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v7, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 325
    const-string v10, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v7, v10}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 326
    .local v0, "commonStateMassStorageInfoStateListChanged":Landroid/os/Bundle;
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 327
    sget-object v10, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOSTORAGEMEDIA:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v10, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 329
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

    .line 331
    .local v6, "massStorageIdKey":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 332
    .local v1, "infoDict":Landroid/os/Bundle;
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationMassStorageIdKey"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    .line 333
    .local v5, "massStorageId":I
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationPluggedKey"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v11

    if-eqz v11, :cond_1

    move v4, v8

    .line 334
    .local v4, "isPlugged":Z
    :goto_1
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationInternalKey"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v11

    if-eqz v11, :cond_2

    move v3, v8

    .line 335
    .local v3, "isInternalMemory":Z
    :goto_2
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationFullKey"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v11

    if-eqz v11, :cond_3

    move v2, v8

    .line 337
    .local v2, "isFull":Z
    :goto_3
    if-eqz v4, :cond_0

    .line 339
    if-eqz v2, :cond_4

    .line 341
    iget-object v11, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v12, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-eq v11, v12, :cond_0

    .line 346
    sget-object v11, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_STORAGEMEDIAFULL:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v11, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_0

    .end local v2    # "isFull":Z
    .end local v3    # "isInternalMemory":Z
    .end local v4    # "isPlugged":Z
    :cond_1
    move v4, v9

    .line 333
    goto :goto_1

    .restart local v4    # "isPlugged":Z
    :cond_2
    move v3, v9

    .line 334
    goto :goto_2

    .restart local v3    # "isInternalMemory":Z
    :cond_3
    move v2, v9

    .line 335
    goto :goto_3

    .line 352
    .restart local v2    # "isFull":Z
    :cond_4
    iget-object v11, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    if-nez v11, :cond_0

    if-eqz v3, :cond_0

    .line 355
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 356
    sget-object v11, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v11, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_0

    .line 363
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
    .line 74
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeviceController()Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    return-object v0
.end method

.method public onNotificationDictionaryChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "dictionary"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v0, :cond_0

    .line 167
    if-nez p1, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->updateStorageMedia()V

    .line 172
    invoke-direct {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->computeFinalState(Z)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v0, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->updateStorageMedia()V

    .line 179
    invoke-direct {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->computeFinalState(Z)V

    .line 183
    :cond_2
    const-string v0, "ARDrone3DeviceControllerMediaRecordStateVideoStateChangedNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->computeFinalState(Z)V

    goto :goto_0
.end method

.method public setDeviceController(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)V
    .locals 2
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "performRefresh":Z
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->unregisterReceivers()V

    .line 55
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->goToNotReady()V

    .line 63
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .line 64
    if-eqz v0, :cond_1

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->onNotificationDictionaryChanged(Landroid/os/Bundle;)V

    .line 68
    :cond_1
    return-void

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->registerReceivers()V

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_3

    .line 82
    sget-object v1, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_INPROGRESS:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 87
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 88
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestRecordVideoStart(B)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestRecordVideoStart(B)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->getDelegates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 101
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 116
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_3
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->goToNotReady()V

    goto :goto_0

    .line 82
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
    .line 124
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_3

    .line 126
    sget-object v1, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 131
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 139
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :pswitch_1
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_INPROGRESS:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 140
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 141
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestRecordVideoStop(B)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;->userRequestRecordVideoStop(B)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/FixedWingVideoRecordController;->goToNotReady()V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
