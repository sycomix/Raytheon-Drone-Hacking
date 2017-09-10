.class Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;
.super Ljava/lang/Object;
.source "McuUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/update/McuUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileUploader"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mBufferedInputStream:Ljava/io/BufferedInputStream;

.field mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mDataSentCount:I

.field mIsReady:Z

.field final synthetic this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight3/update/McuUpdateManager;)V
    .locals 4

    .prologue
    .line 420
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mIsReady:Z

    .line 421
    const/16 v2, 0x14

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mBuffer:[B

    .line 422
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1700(Lcom/parrot/freeflight3/update/McuUpdateManager;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mBufferedInputStream:Ljava/io/BufferedInputStream;

    .line 425
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mIsReady:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    invoke-static {p1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$800(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-static {}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1100()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 436
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->ERROR:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-static {p1, v2}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$502(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/McuUpdateManager$State;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 429
    const-string v2, "McuUpdateManager"

    const-string v3, "File not found "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget-object v2, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-static {p1, v2}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$600(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/UpdateState;)V

    goto :goto_0
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    .prologue
    .line 410
    iget v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mDataSentCount:I

    return v0
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mIsReady:Z

    return v0
.end method

.method public send()Z
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v3, 0x0

    .line 447
    :try_start_0
    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mBufferedInputStream:Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mBuffer:[B

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    .line 449
    .local v2, "length":I
    if-ne v2, v8, :cond_1

    .line 450
    iget v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mDataSentCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mDataSentCount:I

    .line 452
    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1800(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 453
    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$700(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader$1;-><init>(Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v5, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mBuffer:[B

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 462
    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$100(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 487
    .end local v2    # "length":I
    :goto_0
    return v3

    .line 464
    .restart local v2    # "length":I
    :cond_1
    const-string v4, "McuUpdateManager"

    const-string v5, "send: last buffer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1800(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1800(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v4

    const/16 v5, 0x64

    invoke-interface {v4, v5}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onProgress(I)V

    .line 466
    :cond_2
    if-lez v2, :cond_4

    .line 468
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_3

    .line 469
    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mBuffer:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v2

    .line 470
    add-int/lit8 v2, v2, 0x1

    .line 473
    :cond_3
    iget v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mDataSentCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mDataSentCount:I

    .line 475
    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mBuffer:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 477
    .local v1, "lastBuffer":[B
    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 478
    iget-object v4, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v4}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$100(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v1    # "lastBuffer":[B
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 483
    .end local v2    # "length":I
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "McuUpdateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not read file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
