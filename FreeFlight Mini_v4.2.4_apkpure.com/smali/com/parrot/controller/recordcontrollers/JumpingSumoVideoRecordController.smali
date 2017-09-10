.class public Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;
.super Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;
.source "JumpingSumoVideoRecordController.java"

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

    .line 29
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;-><init>()V

    .line 30
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 31
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 32
    iput-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    .line 33
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 34
    iput-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 35
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->context:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->initBroadcastReceivers()V

    .line 37
    return-void
.end method

.method private computeFinalState(Z)V
    .locals 7
    .param p1, "notifyErrors"    # Z

    .prologue
    .line 243
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-virtual {v5}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v5

    const-string v6, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 245
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-virtual {v5}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v5

    const-string v6, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 246
    .local v4, "videoStateChanged":Landroid/os/Bundle;
    const-string v5, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotificationStateKey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;

    move-result-object v2

    .line 247
    .local v2, "newVideoState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;
    sget-object v5, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 312
    .end local v2    # "newVideoState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;
    .end local v4    # "videoStateChanged":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 250
    .restart local v2    # "newVideoState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;
    .restart local v4    # "videoStateChanged":Landroid/os/Bundle;
    :pswitch_0
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 251
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_RECORDING:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_0

    .line 256
    :pswitch_1
    const/4 v1, 0x0

    .line 257
    .local v1, "failed":Z
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_FAILED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;

    if-ne v2, v5, :cond_1

    .line 259
    const/4 v1, 0x1

    .line 262
    :cond_1
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_3

    .line 264
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 265
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_AVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 276
    :goto_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->guessFailureReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v3

    .line 279
    .local v3, "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 281
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_2

    .line 283
    invoke-interface {v0, p0, v3}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_2

    .line 270
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    .end local v3    # "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    :cond_3
    const/4 v1, 0x1

    .line 271
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 272
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_1

    .line 300
    .end local v1    # "failed":Z
    .end local v2    # "newVideoState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;
    .end local v4    # "videoStateChanged":Landroid/os/Bundle;
    :cond_4
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_5

    .line 302
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 303
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_AVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_0

    .line 307
    :cond_5
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 308
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v5}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

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
    .line 225
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 226
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 227
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 229
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_0

    .line 234
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_1
    return-void
.end method

.method private guessFailureReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    .locals 8

    .prologue
    .line 375
    const/4 v2, 0x0

    .line 376
    .local v2, "mediaError":Z
    const/4 v1, 0x0

    .line 377
    .local v1, "lowBattery":Z
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 379
    .local v5, "reason":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-nez v6, :cond_0

    .line 381
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 444
    :goto_0
    return-object v6

    .line 384
    :cond_0
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-virtual {v6}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v4

    .line 387
    .local v4, "notififDict":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v6, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 389
    const-string v6, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotification"

    invoke-virtual {v4, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 390
    .local v0, "alertState":Landroid/os/Bundle;
    const-string v6, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 392
    const-string v6, "JumpingSumoDeviceControllerPilotingStateAlertStateChangedNotificationStateKey"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v3

    .line 393
    .local v3, "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    sget-object v6, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 409
    .end local v0    # "alertState":Landroid/os/Bundle;
    .end local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v7, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-eq v6, v7, :cond_2

    .line 411
    const/4 v2, 0x1

    .line 415
    :cond_2
    if-eqz v2, :cond_3

    .line 417
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_6

    .line 419
    iget-object v5, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 426
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 428
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_7

    .line 430
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_LOWBATTERY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 439
    :cond_4
    :goto_3
    sget-object v6, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-ne v5, v6, :cond_5

    .line 441
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    :cond_5
    move-object v6, v5

    .line 444
    goto :goto_0

    .line 397
    .restart local v0    # "alertState":Landroid/os/Bundle;
    .restart local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :pswitch_0
    const/4 v1, 0x1

    .line 398
    goto :goto_1

    .line 423
    .end local v0    # "alertState":Landroid/os/Bundle;
    .end local v3    # "newAlertState":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_JUMPINGSUMO_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;
    :cond_6
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_2

    .line 434
    :cond_7
    sget-object v5, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_3

    .line 393
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
    .line 199
    new-instance v0, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    invoke-direct {v0, p0}, Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;-><init>(Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiverDelegate;)V

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    .line 200
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 208
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 209
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "DeviceControllerNotificationDictionaryChanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 210
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 219
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->notificationDictionaryReceiver:Lcom/parrot/controller/devicecontrollers/NotificationDictionaryReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    return-void
.end method

.method private updateStorageMedia()V
    .locals 14

    .prologue
    .line 319
    iget-object v11, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    invoke-virtual {v11}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v9

    .line 320
    .local v9, "notificationDictionary":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v9, v11}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 322
    const-string v11, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {v9, v11}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 323
    .local v1, "commonStateMassStorageInfoStateListChanged":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 324
    .local v6, "lastVideoStorageId":Ljava/lang/Integer;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 325
    sget-object v11, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOSTORAGEMEDIA:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v11, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "bestScore":I
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 330
    .local v8, "massStorageIdKey":Ljava/lang/String;
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 331
    .local v2, "infoDict":Landroid/os/Bundle;
    const-string v12, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationMassStorageIdKey"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    .line 332
    .local v7, "massStorageId":I
    const-string v12, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationPluggedKey"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v12

    if-eqz v12, :cond_1

    const/4 v5, 0x1

    .line 333
    .local v5, "isPlugged":Z
    :goto_1
    const-string v12, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationInternalKey"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v12

    if-eqz v12, :cond_2

    const/4 v4, 0x1

    .line 334
    .local v4, "isInternalMemory":Z
    :goto_2
    const-string v12, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotificationFullKey"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v12

    if-eqz v12, :cond_3

    const/4 v3, 0x1

    .line 336
    .local v3, "isFull":Z
    :goto_3
    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    .line 338
    if-eqz v3, :cond_4

    .line 340
    iget-object v12, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    sget-object v13, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    if-eq v12, v13, :cond_0

    .line 345
    sget-object v12, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_STORAGEMEDIAFULL:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v12, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    goto :goto_0

    .line 332
    .end local v3    # "isFull":Z
    .end local v4    # "isInternalMemory":Z
    .end local v5    # "isPlugged":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 333
    .restart local v5    # "isPlugged":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 334
    .restart local v4    # "isInternalMemory":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 351
    .restart local v3    # "isFull":Z
    :cond_4
    const/16 v10, 0xa

    .line 353
    .local v10, "score":I
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v7, v12, :cond_5

    .line 356
    add-int/lit8 v10, v10, 0xa

    .line 359
    :cond_5
    if-le v10, v0, :cond_0

    .line 361
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    .line 362
    sget-object v12, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    iput-object v12, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->massStorageError:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 363
    move v0, v10

    goto :goto_0

    .line 371
    .end local v0    # "bestScore":I
    .end local v1    # "commonStateMassStorageInfoStateListChanged":Landroid/os/Bundle;
    .end local v2    # "infoDict":Landroid/os/Bundle;
    .end local v3    # "isFull":Z
    .end local v4    # "isInternalMemory":Z
    .end local v5    # "isPlugged":Z
    .end local v6    # "lastVideoStorageId":Ljava/lang/Integer;
    .end local v7    # "massStorageId":I
    .end local v8    # "massStorageIdKey":Ljava/lang/String;
    .end local v10    # "score":I
    :cond_6
    return-void
.end method


# virtual methods
.method public getCurrentMassStorageId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeviceController()Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    return-object v0
.end method

.method public onNotificationDictionaryChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "dictionary"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-eqz v0, :cond_0

    .line 168
    if-nez p1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->updateStorageMedia()V

    .line 173
    invoke-direct {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->computeFinalState(Z)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v0, "DeviceControllerCommonStateMassStorageInfoStateListChangedNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->updateStorageMedia()V

    .line 180
    invoke-direct {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->computeFinalState(Z)V

    .line 184
    :cond_2
    const-string v0, "JumpingSumoDeviceControllerMediaRecordStateVideoStateChangedNotification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->computeFinalState(Z)V

    goto :goto_0
.end method

.method public setDeviceController(Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;)V
    .locals 2
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "performRefresh":Z
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 53
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->unregisterReceivers()V

    .line 54
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->goToNotReady()V

    .line 62
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    .line 63
    if-eqz v0, :cond_1

    .line 65
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->onNotificationDictionaryChanged(Landroid/os/Bundle;)V

    .line 67
    :cond_1
    return-void

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->registerReceivers()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-eqz v1, :cond_3

    .line 81
    sget-object v1, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_INPROGRESS:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 86
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    .line 87
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->userRequestRecordVideoStart(B)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->userRequestRecordVideoStart(B)V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 100
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 115
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :cond_3
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->goToNotReady()V

    goto :goto_0

    .line 81
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
    .line 123
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    if-eqz v1, :cond_3

    .line 125
    sget-object v1, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->getDelegates()Ljava/util/ArrayList;

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

    .line 130
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    goto :goto_1

    .line 140
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->currentMassStorageId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->userRequestRecordVideoStop(B)V

    .line 148
    :goto_2
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_INPROGRESS:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V

    .line 149
    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {p0, v1}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->deviceController:Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/controller/devicecontrollers/JumpingSumoDeviceController;->userRequestRecordVideoStop(B)V

    goto :goto_2

    .line 159
    :cond_3
    invoke-direct {p0}, Lcom/parrot/controller/recordcontrollers/JumpingSumoVideoRecordController;->goToNotReady()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
