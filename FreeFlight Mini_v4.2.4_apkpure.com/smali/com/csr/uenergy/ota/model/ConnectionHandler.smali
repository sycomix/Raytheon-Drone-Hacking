.class Lcom/csr/uenergy/ota/model/ConnectionHandler;
.super Landroid/os/Handler;
.source "ConnectionHandler.java"


# static fields
.field private static final APPLICATION_SERVICE_MODE:B = 0x1t

.field private static final BOOTLOADER_SERVICE_MODE:B = 0x2t

.field private static final REFRESH_SERVICE_MODE:B = 0x3t

.field private static final UNKNOWN_SERVICE_MODE:B


# instance fields
.field private mHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 63
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, v0}, Lcom/csr/uenergy/ota/model/ConnectionHandler;->initConnectionHandler(Landroid/os/Looper;)Lcom/csr/uenergy/ota/model/ConnectionHandler;

    .line 64
    return-void
.end method

.method private declared-synchronized checkServices(Landroid/os/Message;)B
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 271
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 272
    .local v8, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/csr/uenergy/ota/model/OtaUpdateManager;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 273
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v9, "SERVUUID_ARRAY"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, [Landroid/os/ParcelUuid;

    move-object v0, v9

    check-cast v0, [Landroid/os/ParcelUuid;

    move-object v2, v0

    .line 274
    .local v2, "ServiceUuidArray":[Landroid/os/ParcelUuid;
    const-string v9, "REFRESH_ATTRIBUTE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 275
    .local v5, "isRefresh":Z
    const-string v9, "REFRESH_ATTRIBUTE_DONE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 276
    .local v6, "isRefreshDone":Z
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setCsBlockSupported(Z)V

    .line 277
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setReadCskeyFromBootloader(Z)V

    .line 278
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setReadBootloaderSoftwareVersion(Z)V

    .line 279
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v9, v6}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setRefreshAttributesDone(Z)V

    .line 280
    const-string v9, "ConnectionHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkServices: isRefresh = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-eqz v5, :cond_0

    .line 282
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v9}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->refreshAttribute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    const/4 v9, 0x3

    .line 321
    :goto_0
    monitor-exit p0

    return v9

    .line 286
    :cond_0
    :try_start_1
    array-length v12, v2

    move v9, v11

    :goto_1
    if-ge v9, v12, :cond_9

    aget-object v7, v2, v9

    .line 287
    .local v7, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    sget-object v14, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v14}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v13

    if-nez v13, :cond_4

    .line 288
    const-string v9, "ConnectionHandler"

    const-string v12, "found application UUID"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v9, "CHARAUUID_ARRAY"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, [Landroid/os/ParcelUuid;

    move-object v0, v9

    check-cast v0, [Landroid/os/ParcelUuid;

    move-object v1, v0

    .line 290
    .local v1, "CharaUuidArray":[Landroid/os/ParcelUuid;
    if-eqz v1, :cond_3

    .line 291
    array-length v12, v1

    :goto_2
    if-ge v11, v12, :cond_3

    aget-object v4, v1, v11

    .line 292
    .local v4, "charaUuid":Landroid/os/ParcelUuid;
    const-string v9, "ConnectionHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "charaUuid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    sget-object v13, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_READCSBLOCK:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v13}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v9

    if-nez v9, :cond_1

    .line 294
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setCsBlockSupported(Z)V

    .line 296
    :cond_1
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    sget-object v13, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CSR_OTA_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v13}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v9

    if-nez v9, :cond_2

    .line 297
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setCsrOtaVersion(Z)V

    .line 291
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v4    # "charaUuid":Landroid/os/ParcelUuid;
    :cond_3
    move v9, v10

    .line 301
    goto/16 :goto_0

    .line 303
    .end local v1    # "CharaUuidArray":[Landroid/os/ParcelUuid;
    :cond_4
    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    sget-object v14, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v14}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v13

    if-nez v13, :cond_8

    .line 304
    const-string v9, "ConnectionHandler"

    const-string v10, "found bootloader UUID"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v9, "CHARAUUID_ARRAY"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, [Landroid/os/ParcelUuid;

    move-object v0, v9

    check-cast v0, [Landroid/os/ParcelUuid;

    move-object v1, v0

    .line 306
    .restart local v1    # "CharaUuidArray":[Landroid/os/ParcelUuid;
    if-eqz v1, :cond_7

    .line 307
    array-length v10, v1

    :goto_3
    if-ge v11, v10, :cond_7

    aget-object v4, v1, v11

    .line 308
    .restart local v4    # "charaUuid":Landroid/os/ParcelUuid;
    const-string v9, "ConnectionHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "charaUuid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    sget-object v12, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_READCSKEY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v12}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v9

    if-nez v9, :cond_5

    .line 310
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setReadCskeyFromBootloader(Z)V

    .line 312
    :cond_5
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    sget-object v12, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SOFTWARE_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v12}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v9

    if-nez v9, :cond_6

    .line 313
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setReadBootloaderSoftwareVersion(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 317
    .end local v4    # "charaUuid":Landroid/os/ParcelUuid;
    :cond_7
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 286
    .end local v1    # "CharaUuidArray":[Landroid/os/ParcelUuid;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v7    # "uuid":Landroid/os/ParcelUuid;
    :cond_9
    move v9, v11

    .line 321
    goto/16 :goto_0

    .line 271
    .end local v2    # "ServiceUuidArray":[Landroid/os/ParcelUuid;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "isRefresh":Z
    .end local v6    # "isRefreshDone":Z
    .end local v8    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/csr/uenergy/ota/model/OtaUpdateManager;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private declared-synchronized handleApplicationService()V
    .locals 5

    .prologue
    .line 158
    monitor-enter p0

    const/4 v0, 0x0

    .line 159
    .local v0, "listener":Lcom/csr/uenergy/ota/model/IOtaMessageListener;
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 160
    .local v1, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/csr/uenergy/ota/model/OtaUpdateManager;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getListener()Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    move-result-object v0

    .line 163
    :cond_0
    sget-object v2, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_CONNECTED:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    invoke-static {v2}, Lcom/csr/uenergy/ota/model/State;->setState(Lcom/csr/uenergy/ota/model/State$ConnectionState;)V

    .line 168
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getRefreshAttributesDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->setRefreshAttributesDone(Z)V

    .line 175
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getSoftwareVersion()V

    .line 176
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readAuthenticatedCharacteristicInApp()V

    .line 177
    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_REFRESH_ATTRIBUTES:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static {v2}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 181
    :cond_2
    if-eqz v0, :cond_3

    .line 182
    const/4 v2, 0x2

    :try_start_1
    invoke-interface {v0, v2}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onConnectionStateUpdate(I)V

    .line 184
    :cond_3
    const-string v2, "ConnectionHandler"

    const-string v3, "getSoftwareVersion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getSoftwareVersion()V

    .line 186
    const-string v2, "ConnectionHandler"

    const-string v3, "readAuthenticatedCharacteristicInApp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readAuthenticatedCharacteristicInApp()V

    .line 188
    const-string v2, "ConnectionHandler"

    const-string v3, "registerServiceChangedIndication"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->registerServiceChangedIndication()V

    .line 190
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->registerDataTransferNotification(Ljava/util/UUID;)V

    .line 192
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getCsBlockSupported()Z

    move-result v2

    if-nez v2, :cond_4

    .line 194
    const-string v2, "ConnectionHandler"

    const-string v3, "readCSKeys for Bootloader version 4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeys(II)V

    .line 196
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeys(II)V

    .line 197
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v3, 0x5

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeys(II)V

    .line 198
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/4 v3, 0x6

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeys(II)V

    .line 199
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->enableOTAMode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 158
    .end local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/csr/uenergy/ota/model/OtaUpdateManager;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 201
    .restart local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/csr/uenergy/ota/model/OtaUpdateManager;>;"
    :cond_4
    :try_start_2
    const-string v2, "ConnectionHandler"

    const-string v3, "readNextCsBlock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readNextCsBlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized handleBootloaderService()V
    .locals 5

    .prologue
    .line 212
    monitor-enter p0

    const/4 v0, 0x0

    .line 213
    .local v0, "listener":Lcom/csr/uenergy/ota/model/IOtaMessageListener;
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 214
    .local v1, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/csr/uenergy/ota/model/OtaUpdateManager;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getListener()Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    move-result-object v0

    .line 217
    :cond_0
    if-eqz v0, :cond_1

    .line 218
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onConnectionStateUpdate(I)V

    .line 220
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getBootloaderSoftwareVersionSupported()Z

    move-result v2

    if-nez v2, :cond_5

    .line 224
    const-string v2, "ConnectionHandler"

    const-string v3, "Handle case for V4/V5"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getHostValidation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->registerBootloaderTransferControlNotifiocation()V

    .line 230
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readBootloadVersion()V

    .line 233
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getReadCskeyFromBootloader()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 236
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 237
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/16 v3, 0x16

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 239
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 240
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/16 v3, 0x17

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 242
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 243
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/16 v3, 0x18

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 245
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 248
    :cond_4
    if-eqz v0, :cond_2

    .line 249
    invoke-interface {v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtauStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    .end local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/csr/uenergy/ota/model/OtaUpdateManager;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 253
    .restart local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/csr/uenergy/ota/model/OtaUpdateManager;>;"
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->isBonded()Z

    move-result v2

    if-nez v2, :cond_6

    .line 254
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readAuthenticatedCharacteristic()V

    .line 258
    :cond_6
    const-string v2, "ConnectionHandler"

    const-string v3, "readTransferControlStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readTransferControlStatus()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private initConnectionHandler(Landroid/os/Looper;)Lcom/csr/uenergy/ota/model/ConnectionHandler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 47
    new-instance v0, Lcom/csr/uenergy/ota/model/ConnectionHandler;

    invoke-direct {v0, p1}, Lcom/csr/uenergy/ota/model/ConnectionHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/csr/uenergy/ota/model/ConnectionHandler;->mHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

    .line 48
    iget-object v0, p0, Lcom/csr/uenergy/ota/model/ConnectionHandler;->mHandler:Lcom/csr/uenergy/ota/model/ConnectionHandler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "listener":Lcom/csr/uenergy/ota/model/IOtaMessageListener;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71
    .local v3, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/csr/uenergy/ota/model/OtaUpdateManager;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getListener()Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    move-result-object v1

    .line 74
    :cond_0
    const-string v4, "ConnectionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "State.getOtaState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", State.getState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getState()Lcom/csr/uenergy/ota/model/State$ConnectionState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 80
    :sswitch_0
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->clear()V

    .line 82
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    sget-object v4, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_CONNECTED:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    invoke-static {v4}, Lcom/csr/uenergy/ota/model/State;->setState(Lcom/csr/uenergy/ota/model/State$ConnectionState;)V

    .line 87
    sget-object v4, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_IDLE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static {v4}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/csr/uenergy/ota/model/ConnectionHandler;->checkServices(Landroid/os/Message;)B

    move-result v2

    .line 91
    .local v2, "mode":B
    if-ne v2, v7, :cond_2

    .line 92
    const-string v4, "ConnectionHandler"

    const-string v5, "in application mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/csr/uenergy/ota/model/ConnectionHandler;->handleApplicationService()V

    goto :goto_0

    .line 83
    .end local v2    # "mode":B
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "ConnectionHandler"

    const-string v5, "InterruptedException!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 95
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "mode":B
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 96
    const-string v4, "ConnectionHandler"

    const-string v5, "in bootloader mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/csr/uenergy/ota/model/ConnectionHandler;->handleBootloaderService()V

    goto :goto_0

    .line 98
    :cond_3
    if-ne v2, v8, :cond_4

    .line 99
    const-string v4, "ConnectionHandler"

    const-string v5, "Refresh Service mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_4
    sget-object v4, Lcom/csr/uenergy/ota/model/State$ConnectionState;->STATE_INVALID:Lcom/csr/uenergy/ota/model/State$ConnectionState;

    invoke-static {v4}, Lcom/csr/uenergy/ota/model/State;->setState(Lcom/csr/uenergy/ota/model/State$ConnectionState;)V

    .line 103
    const-string v4, "ConnectionHandler"

    const-string v5, "in unknown mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v1, :cond_1

    .line 105
    const/4 v4, -0x1

    invoke-interface {v1, v4}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onConnectionStateUpdate(I)V

    goto :goto_0

    .line 110
    .end local v2    # "mode":B
    :sswitch_1
    const-string v4, "ConnectionHandler"

    const-string v5, "MESSAGE_DISCONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 112
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->disconnect()V

    .line 113
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v4

    sget-object v5, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_MODE:Lcom/csr/uenergy/ota/model/State$OtaState;

    if-ne v4, v5, :cond_6

    .line 114
    const-string v4, "ConnectionHandler"

    const-string v5, "reconnect for boot mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->connect()V

    .line 125
    :cond_5
    :goto_2
    if-eqz v1, :cond_1

    .line 126
    invoke-interface {v1, v8}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onConnectionStateUpdate(I)V

    goto/16 :goto_0

    .line 117
    :cond_6
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v4

    sget-object v5, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_COMPLETE:Lcom/csr/uenergy/ota/model/State$OtaState;

    if-ne v4, v5, :cond_5

    .line 118
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v4}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getIsMeshDevice()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 119
    const-string v4, "ConnectionHandler"

    const-string v5, "reconnect for refreshing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual {v4, v7}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->connect(Z)V

    goto :goto_2

    .line 131
    :sswitch_2
    const-string v4, "ConnectionHandler"

    const-string v5, "MESSAGE_DEVICE_BONDED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz v1, :cond_1

    .line 133
    const/16 v4, 0x11

    invoke-interface {v1, v4}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onBondStateUpdate(I)V

    goto/16 :goto_0

    .line 137
    :sswitch_3
    const-string v4, "ConnectionHandler"

    const-string v5, "MESSAGE_DEVICE_BONDING"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v1, :cond_1

    .line 139
    const/16 v4, 0x10

    invoke-interface {v1, v4}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onBondStateUpdate(I)V

    goto/16 :goto_0

    .line 143
    :sswitch_4
    const-string v4, "ConnectionHandler"

    const-string v5, "MESSAGE_DEVICE_BONDNONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-eqz v1, :cond_1

    .line 145
    const/16 v4, 0x12

    invoke-interface {v1, v4}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onBondStateUpdate(I)V

    goto/16 :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x10 -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_4
    .end sparse-switch
.end method
