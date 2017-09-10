.class Lcom/parrot/freeflight3/update/CsrUpdateManager$2;
.super Ljava/lang/Object;
.source "CsrUpdateManager.java"

# interfaces
.implements Lcom/csr/uenergy/ota/model/IOtaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/update/CsrUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationOnChipUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 532
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationOnChipUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1502(Lcom/parrot/freeflight3/update/CsrUpdateManager;I)I

    .line 534
    return-void
.end method

.method public onApplicationVersionUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationVersionUpdate() called with: version = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public onBondStateUpdate(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 309
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBondStateUpdate() called with: state = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public onBootloaderVersionUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBootloaderVersionUpdate() called with: version = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public onBtAddressUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "addres"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$502(Lcom/parrot/freeflight3/update/CsrUpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBtAddressUpdate() called with: addres = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public onConnectionStateUpdate(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 294
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateUpdate() called with: state = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    packed-switch p1, :pswitch_data_0

    .line 305
    :goto_0
    :pswitch_0
    return-void

    .line 297
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->STARTED:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    .line 298
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0, v3}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1002(Lcom/parrot/freeflight3/update/CsrUpdateManager;I)I

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0, v3}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1002(Lcom/parrot/freeflight3/update/CsrUpdateManager;I)I

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCrystalTrimUpdate(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 193
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCrystalTrimUpdate() called with: value = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public onCsBlockData([B)V
    .locals 14
    .param p1, "data"    # [B

    .prologue
    .line 441
    if-eqz p1, :cond_0

    array-length v7, p1

    if-eqz v7, :cond_0

    array-length v7, p1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 442
    :cond_0
    const-string v7, "CsrUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-static {}, Lcom/csr/uenergy/ota/model/State;->getReadCsBlockState()Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    move-result-object v6

    .line 447
    .local v6, "state":Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;
    if-eqz v6, :cond_2

    sget-object v7, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BUILD_ID:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    if-ne v6, v7, :cond_3

    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v7}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1000(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I

    move-result v7

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    aget-byte v9, p1, v9

    or-int/2addr v8, v9

    if-ge v7, v8, :cond_3

    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v7}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1000(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 448
    :cond_2
    const-string v7, "CsrUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCSVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v9}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1000(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :cond_3
    sget-object v7, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$ReadCsBlockState:[I

    invoke-virtual {v6}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 495
    :goto_1
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v7}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$300(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/parrot/freeflight3/update/CsrUpdateManager$2$2;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight3/update/CsrUpdateManager$2$2;-><init>(Lcom/parrot/freeflight3/update/CsrUpdateManager$2;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 454
    :pswitch_0
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    aget-byte v9, p1, v9

    or-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1002(Lcom/parrot/freeflight3/update/CsrUpdateManager;I)I

    .line 455
    const-string v7, "CsrUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CS_BLOCK_BUILD_ID: data = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v7, Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;

    iget-object v8, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;-><init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;Lcom/parrot/freeflight3/update/CsrUpdateManager$1;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v10}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1000(Lcom/parrot/freeflight3/update/CsrUpdateManager;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/parrot/freeflight3/update/CsrUpdateManager$LoadCskeysFromXmlFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 459
    :pswitch_1
    const-string v0, ""

    .line 460
    .local v0, "address":Ljava/lang/String;
    array-length v7, p1

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_4

    .line 461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%02X:"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-byte v11, p1, v4

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 463
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "btAddress":Ljava/lang/String;
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v7, v2}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$502(Lcom/parrot/freeflight3/update/CsrUpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    const-string v7, "CsrUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CS_BLOCK_BT_ADDRESS: data = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    sget-object v8, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v8}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->valueOf()I

    move-result v8

    invoke-static {v7, v8, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1400(Lcom/parrot/freeflight3/update/CsrUpdateManager;I[B)V

    goto/16 :goto_1

    .line 469
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "btAddress":Ljava/lang/String;
    .end local v4    # "i":I
    :pswitch_2
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    aget-byte v9, p1, v9

    or-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$602(Lcom/parrot/freeflight3/update/CsrUpdateManager;I)I

    .line 470
    const-string v7, "CsrUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CS_BLOCK_XLST: data = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    sget-object v8, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_XLST:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v8}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->valueOf()I

    move-result v8

    invoke-static {v7, v8, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1400(Lcom/parrot/freeflight3/update/CsrUpdateManager;I[B)V

    goto/16 :goto_1

    .line 474
    :pswitch_3
    const-string v5, ""

    .line 475
    .local v5, "idRoot":Ljava/lang/String;
    array-length v8, p1

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_5

    aget-byte v1, p1, v7

    .line 476
    .local v1, "bb":B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%02x"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 475
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 478
    .end local v1    # "bb":B
    :cond_5
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v7, v5}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$702(Lcom/parrot/freeflight3/update/CsrUpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    const-string v7, "CsrUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CS_BLOCK_IDENTITY_ROOT: data = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    sget-object v8, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v8}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->valueOf()I

    move-result v8

    invoke-static {v7, v8, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1400(Lcom/parrot/freeflight3/update/CsrUpdateManager;I[B)V

    goto/16 :goto_1

    .line 483
    .end local v5    # "idRoot":Ljava/lang/String;
    :pswitch_4
    const-string v3, ""

    .line 484
    .local v3, "encRoot":Ljava/lang/String;
    array-length v8, p1

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_6

    aget-byte v1, p1, v7

    .line 485
    .restart local v1    # "bb":B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%02x"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 487
    .end local v1    # "bb":B
    :cond_6
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v7, v3}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$802(Lcom/parrot/freeflight3/update/CsrUpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    const-string v7, "CsrUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CS_BLOCK_ENCRYPTION_ROOT: data = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v7, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    sget-object v8, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->READ_CS_BLOCK_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;

    invoke-virtual {v8}, Lcom/csr/uenergy/ota/model/State$ReadCsBlockState;->valueOf()I

    move-result v8

    invoke-static {v7, v8, p1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1400(Lcom/parrot/freeflight3/update/CsrUpdateManager;I[B)V

    goto/16 :goto_1

    .line 452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCsrOtaVersionUpdate(Ljava/lang/String;)V
    .locals 5
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v2, "CsrUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCsrOtaVersionUpdate() called with: version = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    .local v1, "ver":I
    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v2}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$300(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight3/update/CsrUpdateManager$2$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight3/update/CsrUpdateManager$2$1;-><init>(Lcom/parrot/freeflight3/update/CsrUpdateManager$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1    # "ver":I
    :cond_0
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public onEncryptionRootUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEncryptionRootUpdate() called with: value = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public onIdentityRootUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIdentityRootUpdate() called with: value = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public onOtaMessageUpdate(I)V
    .locals 3
    .param p1, "errorMessageId"    # I

    .prologue
    .line 242
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaMessageUpdate() called with: errorMessageId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    packed-switch p1, :pswitch_data_0

    .line 290
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 246
    :pswitch_1
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaMessageUpdate: Read Bluetooth address error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto :goto_0

    .line 250
    :pswitch_2
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaMessageUpdate: Read cyrstal trim value error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto :goto_0

    .line 254
    :pswitch_3
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaMessageUpdate: Read identity root error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto :goto_0

    .line 258
    :pswitch_4
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaMessageUpdate: Read encryption root error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto :goto_0

    .line 262
    :pswitch_5
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaMessageUpdate: Read challenge response failed, please check the configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto/16 :goto_0

    .line 266
    :pswitch_6
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaMessageUpdate: Set OTAU mode error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto/16 :goto_0

    .line 270
    :pswitch_7
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaMessageUpdate: Remote target rejected the package sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto/16 :goto_0

    .line 274
    :pswitch_8
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaMessageUpdate: Request boot loader transfer control notification failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto/16 :goto_0

    .line 280
    :pswitch_9
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaMessageUpdate: Access remote GATT service or characteristic error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto/16 :goto_0

    .line 284
    :pswitch_a
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaMessageUpdate: The target might not have to set application position."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto/16 :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public onOtaProgressUpdate(III)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "size"    # I
    .param p3, "sentNumber"    # I

    .prologue
    .line 314
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaProgressUpdate() called with: progress = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], size = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sentNumber = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onProgress(I)V

    .line 316
    :cond_0
    return-void
.end method

.method public onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V
    .locals 3
    .param p1, "state"    # Lcom/csr/uenergy/ota/model/State$OtaState;

    .prologue
    .line 320
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaStateUpdate() called with: state = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$3;->$SwitchMap$com$csr$uenergy$ota$model$State$OtaState:[I

    invoke-virtual {p1}, Lcom/csr/uenergy/ota/model/State$OtaState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 375
    :goto_0
    :pswitch_0
    return-void

    .line 324
    :pswitch_1
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Read Bluetooth address "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :pswitch_2
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Read crystal trim value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :pswitch_3
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Enter OTAU boot loader mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :pswitch_4
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Read identity root"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :pswitch_5
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Read encryption root"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :pswitch_6
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Set onchip application success, get ready to download image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :pswitch_7
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Downloading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v2}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1100(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". startDownloading..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$1200(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V

    goto :goto_0

    .line 347
    :pswitch_8
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Download completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->FINISH:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    goto :goto_0

    .line 351
    :pswitch_9
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :pswitch_a
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Download Paused!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$900(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    .line 356
    const-string v0, "CsrUpdateManager"

    const-string v1, "Remove bonding when aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 359
    :pswitch_b
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Read challenge key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 362
    :pswitch_c
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Respond to the challenge"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 365
    :pswitch_d
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Read CS Block data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 370
    :pswitch_e
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: Waiting in few seconds to refresh the version and cached attributes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 373
    :pswitch_f
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtaStateUpdate: current app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public onOtaTransferControlStatus(S)V
    .locals 4
    .param p1, "state"    # S

    .prologue
    .line 379
    const-string v1, "CsrUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOtaTransferControlStatus() called with: state = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    packed-switch p1, :pswitch_data_0

    .line 437
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 382
    :pswitch_1
    const-string v1, "CsrUpdateManager"

    const-string v2, "SET_TRANSFER_CONTROL_INIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    .line 384
    .local v0, "manager":Lcom/csr/uenergy/ota/model/OtaUpdateManager;
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getBootloaderSoftwareVersionSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    goto :goto_0

    .line 390
    .end local v0    # "manager":Lcom/csr/uenergy/ota/model/OtaUpdateManager;
    :pswitch_2
    const-string v1, "CsrUpdateManager"

    const-string v2, "SET_TRANSFER_CONTROL_READY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    .line 392
    .restart local v0    # "manager":Lcom/csr/uenergy/ota/model/OtaUpdateManager;
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getBootloaderSoftwareVersionSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const-string v1, "CsrUpdateManager"

    const-string v2, "registerBootloaderTransferControlNotifiocation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->registerBootloaderTransferControlNotifiocation()V

    .line 395
    const-string v1, "CsrUpdateManager"

    const-string v2, "readBootloadVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readBootloadVersion()V

    .line 397
    const-string v1, "CsrUpdateManager"

    const-string v2, "readBootloaderSoftwareVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readBootloaderSoftwareVersion()V

    .line 401
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getReadCskeyFromBootloader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    const-string v1, "CsrUpdateManager"

    const-string v2, "readCSKeysFromBootloaderService REQUEST_READ_CSKEYS_BT_FROM_BL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/16 v1, 0x15

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 406
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 407
    const-string v1, "CsrUpdateManager"

    const-string v2, "readCSKeysFromBootloaderService REQUEST_READ_CSKEYS_XLST_FROM_BL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/16 v1, 0x16

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 410
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 411
    const-string v1, "CsrUpdateManager"

    const-string v2, "readCSKeysFromBootloaderService REQUEST_READ_CSKEYS_IDROOT_FROM_BL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/16 v1, 0x17

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 414
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 415
    const-string v1, "CsrUpdateManager"

    const-string v2, "readCSKeysFromBootloaderService REQUEST_READ_CSKEYS_ENCROOT_FROM_BL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/16 v1, 0x18

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readCSKeysFromBootloaderService(II)V

    .line 418
    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->readDataTransferCharacteristic()V

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->onOtauStarted()V

    goto/16 :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOtauEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 506
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtauEnabled() called with: enabled = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->getInstance()Lcom/csr/uenergy/ota/model/OtaUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csr/uenergy/ota/model/OtaUpdateManager;->enableOTAMode()V

    .line 508
    return-void
.end method

.method public onOtauStarted()V
    .locals 2

    .prologue
    .line 512
    const-string v0, "CsrUpdateManager"

    const-string v1, "onOtauStarted() called with: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$300(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight3/update/CsrUpdateManager$2$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight3/update/CsrUpdateManager$2$3;-><init>(Lcom/parrot/freeflight3/update/CsrUpdateManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    return-void
.end method

.method public onSoftwareVersionUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v0, "CsrUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSoftwareVersionUpdate() called with: version = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method
