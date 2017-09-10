.class synthetic Lcom/parrot/freeflight3/update/CsrUpdateManager$3;
.super Ljava/lang/Object;
.source "CsrUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/update/CsrUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

.field static final synthetic $SwitchMap$com$csr$uenergy$ota$model$State$ReadCsBlockState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 452
    invoke-static {}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->values()[Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$ReadCsBlockState:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$ReadCsBlockState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BUILD_ID:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$ReadCsBlockState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$ReadCsBlockState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_XLST:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$ReadCsBlockState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$ReadCsBlockState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    .line 321
    :goto_4
    invoke-static {}, Lcom/csr/uenergy/ota/model/State$OtaState;->values()[Lcom/csr/uenergy/ota/model/State$OtaState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    :try_start_5
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_MODE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_9
    :try_start_a
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_b
    :try_start_c
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_COMPLETE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_PAUSE_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_ABORT_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_e
    :try_start_f
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CHALLENGE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_WRITE_RESPONSE:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_11
    :try_start_12
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_REFRESH_ATTRIBUTES:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_RECONNECT_GATT:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_GET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    return-void

    :catch_0
    move-exception v0

    goto :goto_14

    :catch_1
    move-exception v0

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    goto :goto_11

    :catch_4
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    goto :goto_f

    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_c

    :catch_9
    move-exception v0

    goto :goto_b

    :catch_a
    move-exception v0

    goto/16 :goto_a

    :catch_b
    move-exception v0

    goto/16 :goto_9

    :catch_c
    move-exception v0

    goto/16 :goto_8

    :catch_d
    move-exception v0

    goto/16 :goto_7

    :catch_e
    move-exception v0

    goto/16 :goto_6

    :catch_f
    move-exception v0

    goto/16 :goto_5

    .line 452
    :catch_10
    move-exception v0

    goto/16 :goto_4

    :catch_11
    move-exception v0

    goto/16 :goto_3

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_1

    :catch_14
    move-exception v0

    goto/16 :goto_0
.end method
