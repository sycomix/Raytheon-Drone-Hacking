.class Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;
.super Landroid/os/Handler;
.source "OtaMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/uenergy/ota/model/OtaMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation


# instance fields
.field csblockNotificationValue:[B


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;->csblockNotificationValue:[B

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/csr/uenergy/ota/model/OtaMessageHandler$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Lcom/csr/uenergy/ota/model/OtaMessageHandler$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 79
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 80
    .local v4, "OtaManagerweakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/csr/uenergy/ota/model/OtaUpdateManager;>;"
    const/4 v10, 0x0

    .line 81
    .local v10, "listener":Lcom/csr/uenergy/ota/model/IOtaMessageListener;
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 82
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getListener()Lcom/csr/uenergy/ota/model/IOtaMessageListener;

    move-result-object v10

    .line 84
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CLIENTREQUESTID"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 85
    .local v12, "requestId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 445
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 87
    :pswitch_1
    if-eqz v10, :cond_1

    .line 88
    sparse-switch v12, :sswitch_data_0

    .line 189
    :cond_2
    :goto_1
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 191
    .local v15, "value":[B
    const-string v5, ""

    .line 192
    .local v5, "address":Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    aget-byte v6, v15, v17

    .line 193
    .local v6, "bb":B
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%02X:"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 192
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 90
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "bb":B
    .end local v15    # "value":[B
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 91
    .local v16, "version":[B
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-byte v18, v16, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onCsrOtaVersionUpdate(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v16    # "version":[B
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 95
    .restart local v16    # "version":[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onSoftwareVersionUpdate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    .end local v16    # "version":[B
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 99
    .restart local v16    # "version":[B
    const-string v17, "%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aget-byte v20, v16, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onBootloaderVersionUpdate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 102
    .end local v16    # "version":[B
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 103
    .restart local v16    # "version":[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onApplicationVersionUpdate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 107
    .end local v16    # "version":[B
    :sswitch_4
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRES_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 109
    .restart local v15    # "value":[B
    const-string v5, ""

    .line 110
    .restart local v5    # "address":Ljava/lang/String;
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v9, v17, -0x1

    .local v9, "i":I
    :goto_3
    if-ltz v9, :cond_3

    .line 111
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%02X:"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-byte v21, v15, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 113
    :cond_3
    const/16 v17, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 114
    .local v14, "ret":Ljava/lang/String;
    invoke-interface {v10, v14}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onBtAddressUpdate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 116
    .end local v5    # "address":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "ret":Ljava/lang/String;
    .end local v15    # "value":[B
    :cond_4
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 118
    .restart local v15    # "value":[B
    const/16 v17, 0x0

    aget-byte v17, v15, v17

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onCrystalTrimUpdate(I)V

    goto/16 :goto_1

    .line 120
    .end local v15    # "value":[B
    :cond_5
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 122
    .restart local v15    # "value":[B
    const-string v8, ""

    .line 123
    .local v8, "encRoot":Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    aget-byte v6, v15, v17

    .line 124
    .restart local v6    # "bb":B
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%02x"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 123
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 126
    .end local v6    # "bb":B
    :cond_6
    invoke-interface {v10, v8}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onIdentityRootUpdate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 128
    .end local v8    # "encRoot":Ljava/lang/String;
    .end local v15    # "value":[B
    :cond_7
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRPTION_APP_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 130
    .restart local v15    # "value":[B
    const-string v8, ""

    .line 131
    .restart local v8    # "encRoot":Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    aget-byte v6, v15, v17

    .line 132
    .restart local v6    # "bb":B
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%02x"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 131
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 134
    .end local v6    # "bb":B
    :cond_8
    invoke-interface {v10, v8}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onEncryptionRootUpdate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    .end local v8    # "encRoot":Ljava/lang/String;
    .end local v15    # "value":[B
    :cond_9
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CHALLENGE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 138
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CHALLENGE:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 140
    .local v7, "challenge":[B
    if-eqz v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 142
    array-length v0, v7

    move/from16 v17, v0

    sget-object v18, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->mSharedSecretKeySdk:[B

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 143
    if-eqz v10, :cond_1

    .line 144
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 147
    :cond_a
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->encryptData([B)[B

    move-result-object v13

    .line 148
    .local v13, "response":[B
    if-eqz v13, :cond_2

    .line 149
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->writeDataTransferCharacteristic([B)V

    goto/16 :goto_1

    .line 154
    .end local v7    # "challenge":[B
    .end local v13    # "response":[B
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 155
    .restart local v15    # "value":[B
    const/16 v17, 0x0

    aget-byte v17, v15, v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaTransferControlStatus(S)V

    goto/16 :goto_1

    .line 158
    .end local v15    # "value":[B
    :sswitch_6
    const-string v17, "OtaMessageHandler"

    const-string v18, "REQUEST_GET_APPLCATION_ONCHIP: "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v17, "OtaMessageHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "REQUEST_GET_APPLCATION_ONCHIP: State.getOtaState() "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 162
    .restart local v16    # "version":[B
    const-string v17, "OtaMessageHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleMessage: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-byte v19, v16, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-byte v18, v16, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onApplicationOnChipUpdate(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_REFRESH_ATTRIBUTES:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 167
    const-string v17, "OtaMessageHandler"

    const-string v18, "REQUEST_GET_APPLCATION_ONCHIP2: "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    .line 172
    .local v11, "manager":Lcom/csr/uenergy/ota/model/OtaUpdateManager;
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler$1;-><init>(Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;Lcom/csr/uenergy/ota/model/OtaUpdateManager;)V

    const-wide/16 v20, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 195
    .end local v11    # "manager":Lcom/csr/uenergy/ota/model/OtaUpdateManager;
    .end local v16    # "version":[B
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v15    # "value":[B
    :cond_b
    const/16 v17, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 196
    .restart local v14    # "ret":Ljava/lang/String;
    invoke-interface {v10, v14}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onBtAddressUpdate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    .end local v5    # "address":Ljava/lang/String;
    .end local v14    # "ret":Ljava/lang/String;
    .end local v15    # "value":[B
    :cond_c
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 200
    .restart local v15    # "value":[B
    const/16 v17, 0x0

    aget-byte v17, v15, v17

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onCrystalTrimUpdate(I)V

    goto/16 :goto_0

    .line 202
    .end local v15    # "value":[B
    :cond_d
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 204
    .restart local v15    # "value":[B
    const-string v8, ""

    .line 205
    .restart local v8    # "encRoot":Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    aget-byte v6, v15, v17

    .line 206
    .restart local v6    # "bb":B
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%02x"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 205
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 208
    .end local v6    # "bb":B
    :cond_e
    invoke-interface {v10, v8}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onIdentityRootUpdate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    .end local v8    # "encRoot":Ljava/lang/String;
    .end local v15    # "value":[B
    :cond_f
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 212
    .restart local v15    # "value":[B
    const-string v8, ""

    .line 213
    .restart local v8    # "encRoot":Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    aget-byte v6, v15, v17

    .line 214
    .restart local v6    # "bb":B
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%02x"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 213
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 216
    .end local v6    # "bb":B
    :cond_10
    invoke-interface {v10, v8}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onEncryptionRootUpdate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    .end local v8    # "encRoot":Ljava/lang/String;
    .end local v15    # "value":[B
    :cond_11
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 219
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 220
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;->csblockNotificationValue:[B

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;->csblockNotificationValue:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;->csblockNotificationValue:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    .line 223
    if-nez v12, :cond_1

    .line 226
    const-string v17, "OtaMessagehandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "State.getOtaState() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csr/uenergy/ota/model/OtaMessageHandler$SmHandler;->csblockNotificationValue:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onCsBlockData([B)V

    goto/16 :goto_0

    .line 231
    :cond_13
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v17

    sget-object v18, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 232
    const-string v17, "OtaMessagehandler"

    const-string v18, "Set Boot loader transfer control in progress"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "CVALUE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 235
    .restart local v15    # "value":[B
    array-length v0, v15

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 236
    const-string v17, "OtaMessageHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onNotify was ignored,state :="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getOtaState()Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/csr/uenergy/ota/model/State$OtaState;->valueOf()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",value[0]="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-byte v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",value[1]="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-byte v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    .end local v15    # "value":[B
    :pswitch_2
    packed-switch v12, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    .line 254
    :pswitch_4
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 255
    if-eqz v10, :cond_1

    .line 256
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 259
    :pswitch_5
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRES_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 260
    if-eqz v10, :cond_1

    .line 261
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRES_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 264
    :pswitch_6
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 265
    if-eqz v10, :cond_1

    .line 266
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 269
    :pswitch_7
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 270
    if-eqz v10, :cond_1

    .line 271
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 274
    :pswitch_8
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 275
    if-eqz v10, :cond_1

    .line 276
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 279
    :pswitch_9
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 280
    if-eqz v10, :cond_1

    .line 281
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 284
    :pswitch_a
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 285
    if-eqz v10, :cond_1

    .line 286
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 289
    :pswitch_b
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRPTION_APP_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 290
    if-eqz v10, :cond_1

    .line 291
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRPTION_APP_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 294
    :pswitch_c
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 295
    if-eqz v10, :cond_1

    .line 296
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 299
    :pswitch_d
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_MODE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 300
    if-eqz v10, :cond_1

    .line 301
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_MODE:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 304
    :pswitch_e
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 305
    if-eqz v10, :cond_1

    .line 306
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 310
    :pswitch_f
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 311
    if-eqz v10, :cond_1

    .line 312
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 315
    :pswitch_10
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 316
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 317
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->updateProgressbar()V

    .line 318
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->increment()V

    .line 319
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->sendNextImageChunk()V

    goto/16 :goto_0

    .line 323
    :pswitch_11
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_COMPLETE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 324
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_15

    .line 325
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->updateProgressbar()V

    .line 326
    :cond_15
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_COMPLETE:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 329
    :pswitch_12
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_16

    .line 330
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->resetSentNum()V

    .line 331
    :cond_16
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_PAUSE_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 332
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_PAUSE_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 335
    :pswitch_13
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_17

    .line 336
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->resetSentNum()V

    .line 337
    :cond_17
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_ABORT_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 338
    if-eqz v10, :cond_1

    .line 339
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_ABORT_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 343
    :pswitch_14
    if-eqz v10, :cond_18

    .line 344
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_WRITE_RESPONSE:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 345
    :cond_18
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_WRITE_RESPONSE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 346
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 347
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->registerBootloaderTransferControlNotifiocation()V

    .line 348
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readBootloadVersion()V

    .line 351
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getBootloaderSoftwareVersionSupported()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 352
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readBootloaderSoftwareVersion()V

    .line 356
    :cond_19
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getReadCskeyFromBootloader()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 357
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/16 v18, 0x15

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 358
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 359
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/16 v18, 0x16

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 360
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 361
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/16 v18, 0x17

    const/16 v19, 0x11

    invoke-virtual/range {v17 .. v19}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 362
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 363
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    const/16 v18, 0x18

    const/16 v19, 0x12

    invoke-virtual/range {v17 .. v19}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 364
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    invoke-virtual/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 366
    :cond_1a
    if-eqz v10, :cond_1

    .line 367
    invoke-interface {v10}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtauStarted()V

    goto/16 :goto_0

    .line 380
    :pswitch_15
    packed-switch v12, :pswitch_data_2

    .line 422
    :pswitch_16
    if-eqz v10, :cond_1

    .line 423
    invoke-interface {v10, v12}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 382
    :pswitch_17
    if-eqz v10, :cond_1

    .line 383
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 386
    :pswitch_18
    if-eqz v10, :cond_1

    .line 387
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 390
    :pswitch_19
    if-eqz v10, :cond_1

    .line 391
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 394
    :pswitch_1a
    if-eqz v10, :cond_1

    .line 395
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 398
    :pswitch_1b
    if-eqz v10, :cond_1

    .line 399
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 402
    :pswitch_1c
    if-eqz v10, :cond_1

    .line 403
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 406
    :pswitch_1d
    if-eqz v10, :cond_1

    .line 407
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 410
    :pswitch_1e
    if-eqz v10, :cond_1

    .line 411
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 414
    :pswitch_1f
    if-eqz v10, :cond_1

    .line 415
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 418
    :pswitch_20
    if-eqz v10, :cond_1

    .line 419
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 428
    :pswitch_21
    if-eqz v10, :cond_1

    .line 429
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 432
    :pswitch_22
    if-eqz v10, :cond_1

    .line 433
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaMessageUpdate(I)V

    goto/16 :goto_0

    .line 436
    :pswitch_23
    const/16 v17, 0xf

    move/from16 v0, v17

    if-ne v12, v0, :cond_1

    .line 437
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static/range {v17 .. v17}, Lcom/csr/uenergy/ota/model/State;->setOtaState(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    .line 438
    if-eqz v10, :cond_1

    .line 439
    sget-object v17, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/csr/uenergy/ota/model/IOtaMessageListener;->onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V

    goto/16 :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
    .end packed-switch

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0xb -> :sswitch_2
        0xd -> :sswitch_6
        0x19 -> :sswitch_5
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
        0x1d -> :sswitch_3
    .end sparse-switch

    .line 252
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_d
        :pswitch_3
        :pswitch_3
        :pswitch_14
        :pswitch_3
        :pswitch_e
        :pswitch_3
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_c
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 380
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1e
        :pswitch_1b
        :pswitch_16
        :pswitch_16
        :pswitch_20
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method
