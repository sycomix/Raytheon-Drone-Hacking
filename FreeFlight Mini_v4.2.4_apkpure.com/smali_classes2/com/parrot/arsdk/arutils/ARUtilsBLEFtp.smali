.class public Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
.super Ljava/lang/Object;
.source "ARUtilsBLEFtp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp$ARUtilsBLEFtpHolder;
    }
.end annotation


# static fields
.field private static final APP_TAG:Ljava/lang/String; = "BLEFtp "

.field public static final BLE_BLOCK_HEADER_CONTINUE:B = 0x0t

.field public static final BLE_BLOCK_HEADER_SINGLE:B = 0x3t

.field public static final BLE_BLOCK_HEADER_START:B = 0x2t

.field public static final BLE_BLOCK_HEADER_STOP:B = 0x1t

.field public static final BLE_GETTING_KEY:Ljava/lang/String; = "kARUTILS_BLEFtp_Getting"

.field public static final BLE_MTU_SIZE:I = 0x14

.field public static final BLE_PACKET_BLOCK_GETTING_COUNT:I = 0x64

.field public static final BLE_PACKET_BLOCK_PUTTING_COUNT:I = 0x1f4

.field public static final BLE_PACKET_DELETE_SUCCESS:Ljava/lang/String; = "Delete successful"

.field public static final BLE_PACKET_EOF:Ljava/lang/String; = "End of Transfer"

.field public static final BLE_PACKET_MAX_SIZE:I = 0x84

.field public static final BLE_PACKET_NOT_WRITTEN:Ljava/lang/String; = "FILE NOT WRITTEN"

.field public static final BLE_PACKET_RENAME_FROM_SUCCESS:Ljava/lang/String; = "Rename successful"

.field public static final BLE_PACKET_RENAME_SUCCESS:Ljava/lang/String; = "Rename successful"

.field public static final BLE_PACKET_WRITE_SLEEP:J = 0x23L

.field public static final BLE_PACKET_WRITTEN:Ljava/lang/String; = "FILE WRITTEN"


# instance fields
.field private arrayGetting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

.field private connectionCount:I

.field private connectionLock:Ljava/util/concurrent/locks/Lock;

.field private gattDevice:Landroid/bluetooth/BluetoothGatt;

.field private getting:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private handling:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private volatile isListing:Z

.field private port:I

.field private transferring:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 102
    invoke-static {}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->nativeJNIInit()V

    .line 103
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .line 85
    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    .line 88
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    .line 91
    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->transferring:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 92
    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getting:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 93
    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 94
    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->arrayGetting:Ljava/util/ArrayList;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp$1;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;-><init>()V

    return-void
.end method

.method private abortPutFile(Ljava/lang/String;)Z
    .locals 13
    .param p1, "remoteFile"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 585
    new-array v11, v5, [I

    .line 586
    .local v11, "resumeIndex":[I
    aput v1, v11, v1

    .line 587
    new-array v9, v5, [I

    .line 588
    .local v9, "remoteSize":[I
    aput v1, v9, v1

    .line 589
    const/4 v10, 0x0

    .line 590
    .local v10, "resume":Z
    const/4 v12, 0x1

    .line 592
    .local v12, "ret":Z
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->normalizePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 594
    invoke-direct {p0, p1, v11, v9}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readPutResumeIndex(Ljava/lang/String;[I[I)Z

    move-result v12

    .line 595
    if-ne v12, v5, :cond_1

    aget v0, v11, v1

    if-lez v0, :cond_1

    .line 597
    const/4 v10, 0x1

    .line 604
    :goto_0
    if-ne v10, v5, :cond_0

    .line 606
    const-string v0, "PUT"

    iget-object v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0, p1, v3}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v12

    .line 608
    if-ne v12, v5, :cond_0

    .line 610
    aget v3, v11, v1

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v4, v1

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendPutData(ILjava/io/FileInputStream;IZZJLjava/util/concurrent/Semaphore;)Z

    move-result v12

    .line 614
    :cond_0
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->deleteFile(Ljava/lang/String;)Z

    .line 616
    return v12

    .line 601
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private cancelFile(Ljava/util/concurrent/Semaphore;)Z
    .locals 3
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 371
    iget-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->isListing:Z

    if-eqz v1, :cond_0

    .line 372
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    .line 375
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 377
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    const-string v2, "kARUTILS_BLEFtp_Getting"

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->cancelReadNotification(Ljava/lang/String;)Z

    move-result v0

    .line 379
    .local v0, "retVal":Z
    goto :goto_0
.end method

.method private compareToString([BILjava/lang/String;)Z
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "len"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 1870
    const/4 v2, 0x0

    .line 1871
    .local v2, "ret":Z
    const/4 v3, 0x0

    .line 1875
    .local v3, "strBytes":[B
    :try_start_0
    const-string v4, "UTF8"

    invoke-virtual {p3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1876
    array-length v4, v3

    if-lt p2, v4, :cond_2

    .line 1878
    const/4 v2, 0x1

    .line 1879
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 1881
    aget-byte v4, p1, v1

    aget-byte v5, v3, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_1

    .line 1883
    const/4 v2, 0x0

    .line 1899
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 1879
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1890
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1893
    :catch_0
    move-exception v0

    .line 1895
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "DBG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BLEFtp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private compareToStringIgnoreCase([BILjava/lang/String;)Z
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "len"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1847
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1848
    .local v3, "strBytes":[B
    array-length v5, v3

    if-lt p2, v5, :cond_0

    .line 1850
    const/16 v0, -0x20

    .line 1851
    .local v0, "delta":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 1853
    aget-byte v5, p1, v2

    aget-byte v6, v3, v2

    if-eq v5, v6, :cond_1

    aget-byte v5, p1, v2

    aget-byte v6, v3, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v6, v0

    if-eq v5, v6, :cond_1

    .line 1865
    .end local v0    # "delta":I
    .end local v2    # "i":I
    .end local v3    # "strBytes":[B
    :cond_0
    :goto_1
    return v4

    .line 1851
    .restart local v0    # "delta":I
    .restart local v2    # "i":I
    .restart local v3    # "strBytes":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1858
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 1861
    .end local v0    # "delta":I
    .end local v2    # "i":I
    .end local v3    # "strBytes":[B
    :catch_0
    move-exception v1

    .line 1863
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "remoteFile"    # Ljava/lang/String;

    .prologue
    .line 711
    const/4 v0, 0x1

    .line 713
    .local v0, "ret":Z
    const-string v1, "DEL"

    iget-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v1, p1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 715
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 717
    invoke-direct {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readDeleteData()Z

    move-result v0

    .line 720
    :cond_0
    return v0
.end method

.method private getFile(Ljava/lang/String;Ljava/lang/String;JZLjava/util/concurrent/Semaphore;)Z
    .locals 9
    .param p1, "remoteFile"    # Ljava/lang/String;
    .param p2, "localFile"    # Ljava/lang/String;
    .param p3, "nativeCallbackObject"    # J
    .param p5, "wantProgress"    # Z
    .param p6, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 520
    const/4 v8, 0x1

    .line 522
    .local v8, "ret":Z
    const/4 v3, 0x0

    check-cast v3, [[B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getFileInternal(Ljava/lang/String;Ljava/lang/String;[[BJZLjava/util/concurrent/Semaphore;)Z

    move-result v8

    .line 524
    return v8
.end method

.method private getFileInternal(Ljava/lang/String;Ljava/lang/String;[[BJZLjava/util/concurrent/Semaphore;)Z
    .locals 12
    .param p1, "remoteFile"    # Ljava/lang/String;
    .param p2, "localFile"    # Ljava/lang/String;
    .param p3, "data"    # [[B
    .param p4, "nativeCallbackObject"    # J
    .param p6, "wantProgress"    # Z
    .param p7, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 538
    const/4 v2, 0x0

    .line 539
    .local v2, "dst":Ljava/io/FileOutputStream;
    const/4 v9, 0x1

    .line 540
    .local v9, "ret":Z
    const/4 v0, 0x1

    new-array v10, v0, [D

    .line 541
    .local v10, "totalSize":[D
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v10, v0

    .line 543
    const-string v0, "DBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLEFtp getFile "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->normalizePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 547
    if-eqz p6, :cond_0

    .line 549
    invoke-direct {p0, p1, v10}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sizeFile(Ljava/lang/String;[D)Z

    move-result v9

    .line 552
    :cond_0
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    if-eqz p2, :cond_1

    .line 556
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "dst":Ljava/io/FileOutputStream;
    .local v7, "dst":Ljava/io/FileOutputStream;
    move-object v2, v7

    .line 565
    .end local v7    # "dst":Ljava/io/FileOutputStream;
    .restart local v2    # "dst":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2

    .line 567
    const-string v0, "GET"

    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v9

    .line 570
    :cond_2
    const/4 v0, 0x1

    if-ne v9, v0, :cond_3

    .line 572
    const/4 v0, 0x0

    aget-wide v0, v10, v0

    double-to-int v1, v0

    move-object v0, p0

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readGetData(ILjava/io/FileOutputStream;[[BJLjava/util/concurrent/Semaphore;)Z

    move-result v9

    .line 575
    :cond_3
    if-eqz v2, :cond_4

    .line 577
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 580
    :cond_4
    :goto_1
    return v9

    .line 558
    :catch_0
    move-exception v8

    .line 560
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string v0, "DBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLEFtp "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const/4 v9, 0x0

    goto :goto_0

    .line 577
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getFileWithBuffer(Ljava/lang/String;[[BJZLjava/util/concurrent/Semaphore;)Z
    .locals 9
    .param p1, "remoteFile"    # Ljava/lang/String;
    .param p2, "data"    # [[B
    .param p3, "nativeCallbackObject"    # J
    .param p5, "wantProgress"    # Z
    .param p6, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 529
    const/4 v8, 0x1

    .line 531
    .local v8, "ret":Z
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getFileInternal(Ljava/lang/String;Ljava/lang/String;[[BJZLjava/util/concurrent/Semaphore;)Z

    move-result v8

    .line 533
    return v8
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp$ARUtilsBLEFtpHolder;->access$100()Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;

    move-result-object v0

    .line 117
    .local v0, "instance":Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;
    if-nez p0, :cond_0

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_0
    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->setBLEManager(Landroid/content/Context;)V

    .line 122
    return-object v0
.end method

.method public static getListItemSize(Ljava/lang/String;II[D)Ljava/lang/String;
    .locals 12
    .param p0, "list"    # Ljava/lang/String;
    .param p1, "lineIndex"    # I
    .param p2, "lineSize"    # I
    .param p3, "size"    # [D

    .prologue
    .line 1793
    const/4 v3, 0x0

    .line 1794
    .local v3, "item":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1796
    .local v8, "varSpace":I
    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    .line 1798
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, p3, v9

    .line 1799
    add-int v1, p1, p2

    .line 1800
    .local v1, "endLine":I
    const/4 v6, -0x1

    .line 1801
    .local v6, "sizeIdx":I
    move v2, p1

    .line 1803
    .local v2, "fileIdx":I
    :goto_0
    const/16 v9, 0x20

    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .local v4, "ptr":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_1

    if-ge v4, v1, :cond_1

    const/4 v9, 0x3

    if-ge v8, v9, :cond_1

    .line 1805
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_0

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_0

    .line 1807
    add-int/lit8 v8, v8, 0x1

    .line 1808
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_0

    .line 1810
    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    .line 1812
    add-int/lit8 v6, v4, 0x1

    .line 1813
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1814
    .local v7, "subLine":Ljava/lang/String;
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v7}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 1817
    .local v5, "scanner":Ljava/util/Scanner;
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5}, Ljava/util/Scanner;->nextDouble()D

    move-result-wide v10

    aput-wide v10, p3, v9
    :try_end_0
    .catch Ljava/util/InputMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1831
    :goto_1
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    .line 1832
    move-object v3, v7

    .line 1836
    .end local v5    # "scanner":Ljava/util/Scanner;
    .end local v7    # "subLine":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    goto :goto_0

    .line 1819
    .restart local v5    # "scanner":Ljava/util/Scanner;
    .restart local v7    # "subLine":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1821
    .local v0, "e":Ljava/util/InputMismatchException;
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, p3, v9

    goto :goto_1

    .line 1823
    .end local v0    # "e":Ljava/util/InputMismatchException;
    :catch_1
    move-exception v0

    .line 1825
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, p3, v9

    goto :goto_1

    .line 1827
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 1829
    .local v0, "e":Ljava/util/NoSuchElementException;
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, p3, v9

    goto :goto_1

    .line 1840
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .end local v1    # "endLine":I
    .end local v2    # "fileIdx":I
    .end local v4    # "ptr":I
    .end local v5    # "scanner":Ljava/util/Scanner;
    .end local v6    # "sizeIdx":I
    .end local v7    # "subLine":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static getListNextItem(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z[I[I)Ljava/lang/String;
    .locals 11
    .param p0, "list"    # Ljava/lang/String;
    .param p1, "nextItem"    # [Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "isDirectory"    # Z
    .param p4, "indexItem"    # [I
    .param p5, "itemLen"    # [I

    .prologue
    .line 1698
    const/4 v5, 0x0

    .line 1699
    .local v5, "lineData":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1700
    .local v2, "item":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1701
    .local v4, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1702
    .local v1, "fileIdx":I
    const/4 v0, 0x0

    .line 1705
    .local v0, "endLine":I
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    .line 1707
    const/4 v8, 0x0

    aget-object v8, p1, v8

    if-nez v8, :cond_5

    .line 1709
    const/4 v8, 0x0

    aput-object p0, p1, v8

    .line 1710
    if-eqz p4, :cond_0

    .line 1712
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, p4, v8

    .line 1723
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 1724
    .local v6, "ptr":I
    :cond_1
    :goto_1
    if-nez v2, :cond_9

    const/4 v8, -0x1

    if-eq v6, v8, :cond_9

    .line 1726
    const/4 v8, 0x0

    aget-object v4, p1, v8

    .line 1727
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 1728
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1729
    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    .line 1731
    const/16 v8, 0xd

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1734
    :cond_2
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 1736
    move v0, v6

    .line 1737
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_3

    .line 1739
    add-int/lit8 v0, v0, -0x1

    .line 1742
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 1743
    const/4 v8, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, p1, v8

    .line 1744
    const/4 v1, 0x0

    .line 1745
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v8, 0x1

    if-ne p3, v8, :cond_6

    const/16 v8, 0x64

    :goto_2
    if-ne v9, v8, :cond_1

    .line 1747
    const/4 v7, 0x0

    .line 1748
    .local v7, "varSpace":I
    :goto_3
    const/16 v8, 0x20

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_7

    if-ge v6, v0, :cond_7

    const/16 v8, 0x8

    if-ge v7, v8, :cond_7

    .line 1750
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_4

    .line 1752
    add-int/lit8 v7, v7, 0x1

    .line 1755
    :cond_4
    add-int/lit8 v6, v6, 0x1

    move v1, v6

    goto :goto_3

    .line 1717
    .end local v6    # "ptr":I
    .end local v7    # "varSpace":I
    :cond_5
    if-eqz p4, :cond_0

    .line 1719
    const/4 v8, 0x0

    aget v9, p4, v8

    const/4 v10, 0x0

    aget v10, p5, v10

    add-int/2addr v9, v10

    aput v9, p4, v8

    goto :goto_0

    .line 1745
    .restart local v6    # "ptr":I
    :cond_6
    const/16 v8, 0x2d

    goto :goto_2

    .line 1758
    .restart local v7    # "varSpace":I
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8

    .line 1760
    invoke-virtual {v4, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 1762
    const/4 v1, -0x1

    .line 1766
    :cond_8
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 1768
    sub-int v3, v0, v1

    .line 1769
    .local v3, "len":I
    add-int v8, v1, v3

    invoke-virtual {v4, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1770
    move-object v2, v5

    goto/16 :goto_1

    .line 1776
    .end local v3    # "len":I
    .end local v7    # "varSpace":I
    :cond_9
    if-eqz p5, :cond_a

    .line 1778
    const/4 v8, 0x0

    aput v0, p5, v8

    .line 1783
    .end local v6    # "ptr":I
    :cond_a
    return-object v2
.end method

.method private isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z
    .locals 2
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    .line 389
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 391
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 395
    :cond_0
    return v0
.end method

.method private listFiles(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "resultList"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 486
    iput-boolean v8, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->isListing:Z

    .line 488
    const/4 v7, 0x1

    .line 490
    .local v7, "ret":Z
    const-string v0, "DBG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BLEFtp listFiles "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->normalizePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 494
    const-string v0, "LIS"

    iget-object v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0, p1, v4}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v7

    .line 496
    if-ne v7, v8, :cond_1

    .line 498
    new-array v3, v8, [[B

    .line 500
    .local v3, "data":[[B
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readGetData(ILjava/io/FileOutputStream;[[BJLjava/util/concurrent/Semaphore;)Z

    move-result v7

    .line 502
    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    .line 504
    const-string v0, "DBG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BLEFtp listFiles=="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    aget-object v5, v3, v1

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    if-ne v7, v8, :cond_1

    aget-object v0, v3, v1

    if-eqz v0, :cond_1

    .line 509
    new-instance v0, Ljava/lang/String;

    aget-object v2, v3, v1

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v0, p2, v1

    .line 513
    .end local v3    # "data":[[B
    :cond_1
    iput-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->isListing:Z

    .line 515
    return v7
.end method

.method private static native nativeJNIInit()V
.end method

.method private native nativeProgressCallback(JF)V
.end method

.method private normalizePathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1904
    move-object v0, p1

    .line 1905
    .local v0, "newName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    .line 1907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1910
    :cond_0
    return-object v0
.end method

.method private putFile(Ljava/lang/String;Ljava/lang/String;JZLjava/util/concurrent/Semaphore;)Z
    .locals 19
    .param p1, "remoteFile"    # Ljava/lang/String;
    .param p2, "localFile"    # Ljava/lang/String;
    .param p3, "nativeCallbackObject"    # J
    .param p5, "resume"    # Z
    .param p6, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 621
    const/4 v6, 0x0

    .line 622
    .local v6, "src":Ljava/io/FileInputStream;
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 623
    .local v16, "resumeIndex":[I
    const/4 v4, 0x0

    const/4 v7, 0x0

    aput v7, v16, v4

    .line 624
    const/4 v4, 0x1

    new-array v15, v4, [I

    .line 625
    .local v15, "remoteSize":[I
    const/4 v4, 0x0

    const/4 v7, 0x0

    aput v7, v15, v4

    .line 626
    const/16 v17, 0x1

    .line 627
    .local v17, "ret":Z
    const/4 v5, 0x0

    .line 629
    .local v5, "totalSize":I
    const-string v4, "DBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLEFtp putFile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-direct/range {p0 .. p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->normalizePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 633
    if-nez p5, :cond_2

    .line 635
    invoke-direct/range {p0 .. p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->abortPutFile(Ljava/lang/String;)Z

    .line 656
    :cond_0
    :goto_0
    new-instance v14, Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;

    invoke-direct {v14}, Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;-><init>()V

    .line 659
    .local v14, "fileSys":Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;->getFileSize(Ljava/lang/String;)J
    :try_end_0
    .catch Lcom/parrot/arsdk/arutils/ARUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    long-to-int v5, v8

    .line 667
    :goto_1
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_4

    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_4

    const/4 v4, 0x0

    aget v4, v15, v4

    if-ne v4, v5, :cond_4

    .line 669
    const-string v4, "DBG"

    const-string v7, "BLEFtp full resume"

    invoke-static {v4, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-eqz v4, :cond_1

    .line 672
    const/high16 v4, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->nativeProgressCallback(JF)V

    .line 706
    :cond_1
    :goto_2
    return v17

    .line 639
    .end local v14    # "fileSys":Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_3

    .line 641
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readPutResumeIndex(Ljava/lang/String;[I[I)Z

    move-result v17

    .line 642
    if-nez v17, :cond_3

    .line 644
    const/16 v17, 0x1

    .line 645
    const/4 v4, 0x0

    const/4 v7, 0x0

    aput v7, v16, v4

    .line 646
    const/16 p5, 0x0

    .line 650
    :cond_3
    const/4 v4, 0x0

    aget v4, v16, v4

    if-lez v4, :cond_0

    .line 652
    const/16 p5, 0x1

    goto :goto_0

    .line 661
    .restart local v14    # "fileSys":Lcom/parrot/arsdk/arutils/ARUtilsFileSystem;
    :catch_0
    move-exception v13

    .line 663
    .local v13, "e":Lcom/parrot/arsdk/arutils/ARUtilsException;
    const-string v4, "DBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLEFtp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Lcom/parrot/arsdk/arutils/ARUtilsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/16 v17, 0x0

    goto :goto_1

    .line 677
    .end local v13    # "e":Lcom/parrot/arsdk/arutils/ARUtilsException;
    :cond_4
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    .line 679
    const-string v4, "PUT"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v7}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v17

    .line 682
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    .line 686
    :try_start_1
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v6    # "src":Ljava/io/FileInputStream;
    .local v18, "src":Ljava/io/FileInputStream;
    move-object/from16 v6, v18

    .line 695
    .end local v18    # "src":Ljava/io/FileInputStream;
    .restart local v6    # "src":Ljava/io/FileInputStream;
    :cond_6
    :goto_3
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_7

    .line 697
    const/4 v4, 0x0

    aget v7, v16, v4

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v8, p5

    move-wide/from16 v10, p3

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v12}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendPutData(ILjava/io/FileInputStream;IZZJLjava/util/concurrent/Semaphore;)Z

    move-result v17

    .line 700
    :cond_7
    if-eqz v6, :cond_1

    .line 702
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    goto/16 :goto_2

    .line 688
    :catch_2
    move-exception v13

    .line 690
    .local v13, "e":Ljava/io/FileNotFoundException;
    const-string v4, "DBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLEFtp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/16 v17, 0x0

    goto :goto_3
.end method

.method private readBufferBlocks([[B)Z
    .locals 20
    .param p1, "notificationArray"    # [[B

    .prologue
    .line 976
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v15, "receivedNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;>;"
    const/16 v16, 0x1

    .line 978
    .local v16, "ret":Z
    const/4 v9, 0x0

    .line 979
    .local v9, "end":Z
    const/4 v8, 0x0

    .line 980
    .local v8, "bufferIndex":I
    const/16 v17, 0x84

    move/from16 v0, v17

    new-array v7, v0, [B

    .line 981
    .local v7, "buffer":[B
    const/4 v4, 0x0

    .line 985
    .local v4, "blockCount":I
    :cond_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "kARUTILS_BLEFtp_Getting"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->readDataNotificationData(Ljava/util/List;ILjava/lang/String;)Z

    move-result v16

    .line 993
    if-nez v16, :cond_1

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isDeviceConnected()Z

    move-result v16

    .line 999
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_5

    .line 1001
    const/4 v13, 0x0

    .line 1002
    .local v13, "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    check-cast v13, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;

    .line 1003
    .restart local v13    # "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    iget-object v0, v13, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->value:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v6, v0

    .line 1004
    .local v6, "blockLen":I
    iget-object v3, v13, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->value:[B

    .line 1005
    .local v3, "block":[B
    const/4 v5, 0x0

    .line 1007
    .local v5, "blockIndex":I
    const-string v17, "DBG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BLEFtp block length "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    if-lez v6, :cond_8

    .line 1010
    const/16 v17, 0x0

    aget-byte v17, v3, v17

    packed-switch v17, :pswitch_data_0

    .line 1026
    const-string v17, "DBG"

    const-string v18, "BLEFtp Block state error"

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const/16 v16, 0x0

    .line 1031
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 1036
    add-int v17, v8, v6

    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 1038
    add-int v11, v8, v6

    .line 1039
    .local v11, "minSize":I
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v12, v0, 0x84

    .line 1042
    .local v12, "newSize":I
    if-ge v12, v11, :cond_2

    .line 1044
    move v12, v11

    .line 1046
    :cond_2
    const-string v17, "DBG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BLEFtp buffer alloc size "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v7

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " -> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    move-object v14, v7

    .line 1048
    .local v14, "oldBuffer":[B
    new-array v7, v12, [B

    .line 1049
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v14, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1053
    .end local v11    # "minSize":I
    .end local v12    # "newSize":I
    .end local v14    # "oldBuffer":[B
    :cond_3
    invoke-static {v3, v5, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1054
    add-int/2addr v8, v6

    .line 1055
    add-int/lit8 v4, v4, 0x1

    .line 1057
    const-string v17, "DBG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BLEFtp block "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :cond_4
    :goto_1
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1069
    .end local v3    # "block":[B
    .end local v5    # "blockIndex":I
    .end local v6    # "blockLen":I
    .end local v13    # "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    if-eqz v9, :cond_0

    .line 1071
    :cond_6
    if-lez v8, :cond_7

    .line 1074
    new-array v10, v8, [B

    .line 1075
    .local v10, "finalBuffer":[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v7, v0, v10, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1077
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_9

    .line 1079
    const/16 v17, 0x0

    aput-object v10, p1, v17

    .line 1087
    .end local v10    # "finalBuffer":[B
    :cond_7
    :goto_2
    return v16

    .line 1014
    .restart local v3    # "block":[B
    .restart local v5    # "blockIndex":I
    .restart local v6    # "blockLen":I
    .restart local v13    # "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    :pswitch_0
    const-string v17, "DBG"

    const-string v18, "BLEFtp this is the last block."

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const/4 v9, 0x1

    .line 1016
    add-int/lit8 v6, v6, -0x1

    .line 1017
    const/4 v5, 0x1

    .line 1018
    goto/16 :goto_0

    .line 1022
    :pswitch_1
    add-int/lit8 v6, v6, -0x1

    .line 1023
    const/4 v5, 0x1

    .line 1024
    goto/16 :goto_0

    .line 1063
    :cond_8
    const-string v17, "DBG"

    const-string v18, "BLEFtp Empty block "

    invoke-static/range {v17 .. v18}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1083
    .end local v3    # "block":[B
    .end local v5    # "blockIndex":I
    .end local v6    # "blockLen":I
    .end local v13    # "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    .restart local v10    # "finalBuffer":[B
    :cond_9
    const/16 v16, 0x0

    goto :goto_2

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readDeleteData()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1656
    new-array v0, v4, [[B

    .line 1657
    .local v0, "notificationArray":[[B
    const/4 v3, 0x0

    .line 1659
    .local v3, "ret":Z
    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readBufferBlocks([[B)Z

    move-result v3

    .line 1660
    if-ne v3, v4, :cond_0

    .line 1662
    aget-object v4, v0, v5

    if-eqz v4, :cond_3

    .line 1664
    aget-object v4, v0, v5

    array-length v2, v4

    .line 1665
    .local v2, "packetLen":I
    aget-object v1, v0, v5

    .line 1667
    .local v1, "packet":[B
    if-lez v2, :cond_2

    .line 1670
    const-string v4, "Delete successful"

    invoke-direct {p0, v1, v2, v4}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->compareToString([BILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1672
    const-string v4, "DBG"

    const-string v5, "BLEFtp Delete Success"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const/4 v3, 0x1

    .line 1693
    .end local v1    # "packet":[B
    .end local v2    # "packetLen":I
    :cond_0
    :goto_0
    return v3

    .line 1677
    .restart local v1    # "packet":[B
    .restart local v2    # "packetLen":I
    :cond_1
    const-string v4, "DBG"

    const-string v5, "BLEFtp Delete Failed"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const/4 v3, 0x0

    goto :goto_0

    .line 1683
    :cond_2
    const-string v4, "DBG"

    const-string v5, "BLEFtp Delete Failed"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    const/4 v3, 0x0

    goto :goto_0

    .line 1689
    .end local v1    # "packet":[B
    .end local v2    # "packetLen":I
    :cond_3
    const-string v4, "DBG"

    const-string v5, "BLEFtp Delete Failed"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private readGetData(ILjava/io/FileOutputStream;[[BJLjava/util/concurrent/Semaphore;)Z
    .locals 24
    .param p1, "fileSize"    # I
    .param p2, "dst"    # Ljava/io/FileOutputStream;
    .param p3, "data"    # [[B
    .param p4, "nativeCallbackObject"    # J
    .param p6, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 1306
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v13, v0, [[B

    .line 1307
    .local v13, "notificationArray":[[B
    const/16 v17, 0x1

    .line 1308
    .local v17, "ret":Z
    const/4 v15, 0x0

    .line 1309
    .local v15, "packetCount":I
    const/16 v19, 0x0

    .line 1310
    .local v19, "totalSize":I
    const/16 v18, 0x0

    .line 1311
    .local v18, "totalPacket":I
    const/4 v6, 0x0

    .line 1312
    .local v6, "endFile":Z
    const/4 v7, 0x0

    .line 1313
    .local v7, "endMD5":Z
    const/4 v10, 0x0

    .line 1314
    .local v10, "md5Msg":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1315
    .local v11, "md5Txt":Ljava/lang/String;
    new-instance v8, Lcom/parrot/arsdk/arutils/ARUtilsMD5;

    invoke-direct {v8}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;-><init>()V

    .line 1316
    .local v8, "md5":Lcom/parrot/arsdk/arutils/ARUtilsMD5;
    new-instance v9, Lcom/parrot/arsdk/arutils/ARUtilsMD5;

    invoke-direct {v9}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;-><init>()V

    .line 1318
    .local v9, "md5End":Lcom/parrot/arsdk/arutils/ARUtilsMD5;
    :cond_0
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    if-nez v7, :cond_12

    .line 1320
    const/4 v4, 0x0

    .line 1321
    .local v4, "blockMD5":Z
    invoke-virtual {v8}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->initialize()Z

    .line 1325
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readBufferBlocks([[B)Z

    move-result v17

    .line 1326
    if-nez v17, :cond_5

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->isDeviceConnected()Z

    move-result v17

    .line 1446
    :cond_2
    :goto_1
    const/16 v20, 0x0

    const/16 v21, 0x0

    aput-object v21, v13, v20

    .line 1448
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    if-nez v4, :cond_3

    if-eqz v7, :cond_1

    .line 1450
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_0

    .line 1452
    const/4 v4, 0x0

    .line 1453
    const/4 v15, 0x0

    .line 1454
    invoke-virtual {v8}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->digest()Ljava/lang/String;

    move-result-object v11

    .line 1456
    invoke-virtual {v10, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 1458
    const-string v20, "DBG"

    const-string v21, "BLEFtp md5 block failed"

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1470
    const-string v20, "DBG"

    const-string v21, "BLEFtp Canceled received"

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const/16 v17, 0x0

    .line 1474
    :cond_4
    if-nez v17, :cond_11

    .line 1476
    const-string v20, "CANCEL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getting:Landroid/bluetooth/BluetoothGattCharacteristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendResponse(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v17

    goto :goto_0

    .line 1330
    :cond_5
    if-eqz v17, :cond_2

    .line 1333
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v20, 0x0

    aget-object v20, v13, v20

    if-eqz v20, :cond_2

    if-nez v4, :cond_2

    if-nez v7, :cond_2

    .line 1335
    const/16 v20, 0x0

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v16, v0

    .line 1336
    .local v16, "packetLen":I
    const/16 v20, 0x0

    aget-object v14, v13, v20

    .line 1338
    .local v14, "packet":[B
    add-int/lit8 v15, v15, 0x1

    .line 1339
    add-int/lit8 v18, v18, 0x1

    .line 1340
    const-string v20, "DBG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BLEFtp == packet "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    if-lez v16, :cond_2

    .line 1346
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_7

    .line 1348
    const/4 v7, 0x1

    .line 1350
    const/16 v20, 0x20

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1352
    new-instance v10, Ljava/lang/String;

    .end local v10    # "md5Msg":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-direct {v10, v14, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 1353
    .restart local v10    # "md5Msg":Ljava/lang/String;
    const-string v20, "DBG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BLEFtp md5 end received "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1357
    :cond_6
    const/16 v17, 0x0

    .line 1358
    const-string v20, "DBG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BLEFtp md5 end failed size "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1361
    :cond_7
    const-string v20, "End of Transfer"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v14, v1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->compareToString([BILjava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1363
    const/4 v6, 0x1

    .line 1365
    const-string v20, "End of Transfer"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 1367
    const-string v20, "DBG"

    const-string v21, "BLEFtp End of file received "

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1371
    :cond_8
    const-string v20, "DBG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BLEFtp End of file failed size "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1375
    :cond_9
    const-string v20, "MD5"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v14, v1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->compareToString([BILjava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1377
    const/16 v20, 0x65

    move/from16 v0, v20

    if-le v15, v0, :cond_a

    .line 1379
    const-string v20, "DBG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BLEFtp md5 failed packet count "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :cond_a
    const/16 v20, 0x23

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1384
    const/4 v4, 0x1

    .line 1385
    new-instance v10, Ljava/lang/String;

    .end local v10    # "md5Msg":Ljava/lang/String;
    const/16 v20, 0x3

    add-int/lit8 v21, v16, -0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v10, v14, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 1386
    .restart local v10    # "md5Msg":Ljava/lang/String;
    const-string v20, "DBG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BLEFtp md5 received "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1390
    :cond_b
    const/16 v17, 0x0

    .line 1391
    const-string v20, "DBG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BLEFtp md5 failed size "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1398
    :cond_c
    const-string v20, "error"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v14, v1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->compareToStringIgnoreCase([BILjava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1400
    const-string v20, "DBG"

    const-string v21, "BLEFtp Error received"

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1405
    :cond_d
    add-int v19, v19, v16

    .line 1406
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v8, v14, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->update([BII)V

    .line 1407
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v9, v14, v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->update([BII)V

    .line 1409
    if-eqz p2, :cond_e

    .line 1413
    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v14, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :goto_3
    const-wide/16 v20, 0x0

    cmp-long v20, p4, v20

    if-eqz v20, :cond_2

    if-eqz p1, :cond_2

    .line 1434
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->nativeProgressCallback(JF)V

    goto/16 :goto_1

    .line 1415
    :catch_0
    move-exception v5

    .line 1417
    .local v5, "e":Ljava/io/IOException;
    const-string v20, "DBG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BLEFtp failed writting file "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const/16 v17, 0x0

    .line 1419
    goto :goto_3

    .line 1423
    .end local v5    # "e":Ljava/io/IOException;
    :cond_e
    move/from16 v0, v19

    new-array v12, v0, [B

    .line 1424
    .local v12, "newData":[B
    const/16 v20, 0x0

    aget-object v20, p3, v20

    if-eqz v20, :cond_f

    .line 1426
    const/16 v20, 0x0

    aget-object v20, p3, v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    sub-int v23, v19, v16

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1428
    :cond_f
    const/16 v20, 0x0

    sub-int v21, v19, v16

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-static {v14, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1429
    const/16 v20, 0x0

    aput-object v12, p3, v20

    goto :goto_3

    .line 1464
    .end local v12    # "newData":[B
    .end local v14    # "packet":[B
    .end local v16    # "packetLen":I
    :cond_10
    const-string v20, "DBG"

    const-string v21, "BLEFtp md5 block ok"

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1480
    :cond_11
    const-string v20, "MD5 OK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getting:Landroid/bluetooth/BluetoothGattCharacteristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendResponse(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v17

    goto/16 :goto_0

    .line 1485
    .end local v4    # "blockMD5":Z
    :cond_12
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_15

    .line 1487
    invoke-virtual {v9}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->digest()Ljava/lang/String;

    move-result-object v11

    .line 1488
    const-string v20, "DBG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BLEFtp md5 end computed "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v10, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_14

    .line 1492
    const-string v20, "DBG"

    const-string v21, "BLEFtp md5 end Failed"

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    const/16 v17, 0x0

    .line 1505
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1507
    const-string v20, "DBG"

    const-string v21, "BLEFtp Canceled received"

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const/16 v17, 0x0

    .line 1511
    :cond_13
    return v17

    .line 1497
    :cond_14
    const-string v20, "DBG"

    const-string v21, "BLEFtp md5 end OK"

    invoke-static/range {v20 .. v21}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1502
    :cond_15
    const/16 v17, 0x0

    goto :goto_4
.end method

.method private readPudDataWritten()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1516
    const/4 v4, 0x1

    new-array v0, v4, [[B

    .line 1517
    .local v0, "notificationArray":[[B
    const/4 v3, 0x0

    .line 1519
    .local v3, "ret":Z
    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readBufferBlocks([[B)Z

    move-result v3

    .line 1520
    const/4 v3, 0x1

    if-eqz v3, :cond_0

    .line 1522
    aget-object v4, v0, v5

    if-eqz v4, :cond_3

    .line 1524
    aget-object v4, v0, v5

    array-length v2, v4

    .line 1525
    .local v2, "packetLen":I
    aget-object v1, v0, v5

    .line 1527
    .local v1, "packet":[B
    if-lez v2, :cond_0

    .line 1531
    const-string v4, "FILE WRITTEN"

    invoke-direct {p0, v1, v2, v4}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->compareToString([BILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1533
    const-string v4, "DBG"

    const-string v5, "BLEFtp Written OK"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const/4 v3, 0x1

    .line 1555
    .end local v1    # "packet":[B
    .end local v2    # "packetLen":I
    :cond_0
    :goto_0
    return v3

    .line 1536
    .restart local v1    # "packet":[B
    .restart local v2    # "packetLen":I
    :cond_1
    const-string v4, "FILE NOT WRITTEN"

    invoke-direct {p0, v1, v2, v4}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->compareToString([BILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1538
    const-string v4, "DBG"

    const-string v5, "BLEFtp NOT Written"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const/4 v3, 0x0

    goto :goto_0

    .line 1543
    :cond_2
    const-string v4, "DBG"

    const-string v5, "BLEFtp UNKNOWN Written"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const/4 v3, 0x0

    goto :goto_0

    .line 1550
    .end local v1    # "packet":[B
    .end local v2    # "packetLen":I
    :cond_3
    const-string v4, "DBG"

    const-string v5, "BLEFtp UNKNOWN Written"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private readPutMd5([Ljava/lang/String;)Z
    .locals 9
    .param p1, "md5Txt"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1560
    new-array v1, v8, [[B

    .line 1561
    .local v1, "notificationArray":[[B
    const/4 v5, 0x0

    .line 1563
    .local v5, "ret":Z
    const-string v6, ""

    aput-object v6, p1, v7

    .line 1567
    :try_start_0
    invoke-direct {p0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readBufferBlocks([[B)Z

    move-result v5

    .line 1568
    if-ne v5, v8, :cond_0

    .line 1570
    const/4 v6, 0x0

    aget-object v6, v1, v6

    if-eqz v6, :cond_3

    .line 1572
    const/4 v6, 0x0

    aget-object v6, v1, v6

    array-length v3, v6

    .line 1573
    .local v3, "packetLen":I
    const/4 v6, 0x0

    aget-object v2, v1, v6

    .line 1575
    .local v2, "packet":[B
    if-lez v3, :cond_2

    .line 1577
    const/16 v6, 0x20

    if-ne v3, v6, :cond_1

    .line 1579
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF8"

    invoke-direct {v4, v2, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1580
    .local v4, "packetTxt":Ljava/lang/String;
    const/4 v6, 0x0

    aput-object v4, p1, v6

    .line 1582
    const-string v6, "DBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLEFtp md5 end received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    .end local v2    # "packet":[B
    .end local v3    # "packetLen":I
    .end local v4    # "packetTxt":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 1586
    .restart local v2    # "packet":[B
    .restart local v3    # "packetLen":I
    :cond_1
    const-string v6, "DBG"

    const-string v7, "BLEFtp md5 size failed"

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    const/4 v5, 0x0

    goto :goto_0

    .line 1592
    :cond_2
    const-string v6, "DBG"

    const-string v7, "BLEFtp md5 end failed"

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const/4 v5, 0x0

    goto :goto_0

    .line 1598
    .end local v2    # "packet":[B
    .end local v3    # "packetLen":I
    :cond_3
    const-string v6, "DBG"

    const-string v7, "BLEFtp md5 end size failed"

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    const/4 v5, 0x0

    goto :goto_0

    .line 1603
    :catch_0
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "DBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLEFtp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private readPutResumeIndex(Ljava/lang/String;[I[I)Z
    .locals 6
    .param p1, "remoteFile"    # Ljava/lang/String;
    .param p2, "resumeIndex"    # [I
    .param p3, "totalSize"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1289
    new-array v0, v5, [D

    .line 1290
    .local v0, "fileSize":[D
    const-wide/16 v2, 0x0

    aput-wide v2, v0, v4

    .line 1291
    const/4 v1, 0x1

    .line 1293
    .local v1, "ret":Z
    aput v4, p2, v4

    .line 1294
    invoke-direct {p0, p1, v0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sizeFile(Ljava/lang/String;[D)Z

    move-result v1

    .line 1295
    if-ne v1, v5, :cond_0

    .line 1297
    aget-wide v2, v0, v4

    double-to-int v2, v2

    div-int/lit16 v2, v2, 0x84

    aput v2, p2, v4

    .line 1298
    aget-wide v2, v0, v4

    double-to-int v2, v2

    aput v2, p3, v4

    .line 1301
    :cond_0
    return v1
.end method

.method private readRenameData()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1614
    new-array v0, v4, [[B

    .line 1615
    .local v0, "notificationArray":[[B
    const/4 v3, 0x0

    .line 1617
    .local v3, "ret":Z
    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readBufferBlocks([[B)Z

    move-result v3

    .line 1618
    if-ne v3, v4, :cond_0

    .line 1620
    aget-object v4, v0, v5

    if-eqz v4, :cond_3

    .line 1622
    aget-object v4, v0, v5

    array-length v2, v4

    .line 1623
    .local v2, "packetLen":I
    aget-object v1, v0, v5

    .line 1625
    .local v1, "packet":[B
    if-lez v2, :cond_2

    .line 1628
    const-string v4, "Rename successful"

    invoke-direct {p0, v1, v2, v4}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->compareToString([BILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1630
    const-string v4, "DBG"

    const-string v5, "BLEFtp Rename Success"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    const/4 v3, 0x1

    .line 1651
    .end local v1    # "packet":[B
    .end local v2    # "packetLen":I
    :cond_0
    :goto_0
    return v3

    .line 1635
    .restart local v1    # "packet":[B
    .restart local v2    # "packetLen":I
    :cond_1
    const-string v4, "DBG"

    const-string v5, "BLEFtp Rename Failed"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    const/4 v3, 0x0

    goto :goto_0

    .line 1641
    :cond_2
    const-string v4, "DBG"

    const-string v5, "BLEFtp Rename Failed"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const/4 v3, 0x0

    goto :goto_0

    .line 1647
    .end local v1    # "packet":[B
    .end local v2    # "packetLen":I
    :cond_3
    const-string v4, "DBG"

    const-string v5, "BLEFtp Rename Failed"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "oldNamePath"    # Ljava/lang/String;
    .param p2, "newNamePath"    # Ljava/lang/String;

    .prologue
    .line 725
    const/4 v2, 0x1

    .line 726
    .local v2, "ret":Z
    const-string v0, "REN"

    .line 727
    .local v0, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "param":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x84

    if-le v3, v4, :cond_0

    .line 731
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->renameLongFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 738
    :goto_0
    return v2

    .line 735
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->renameShortFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private renameLongFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "oldNamePath"    # Ljava/lang/String;
    .param p2, "newNamePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 758
    const/4 v0, 0x1

    .line 760
    .local v0, "ret":Z
    const-string v1, "RNFR"

    iget-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v1, p1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 762
    if-ne v0, v3, :cond_0

    .line 764
    invoke-direct {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readRenameData()Z

    move-result v0

    .line 767
    :cond_0
    if-ne v0, v3, :cond_1

    .line 769
    const-string v1, "RNTO"

    iget-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v1, p2, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 772
    :cond_1
    if-ne v0, v3, :cond_2

    .line 774
    invoke-direct {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readRenameData()Z

    move-result v0

    .line 777
    :cond_2
    return v0
.end method

.method private renameShortFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "oldNamePath"    # Ljava/lang/String;
    .param p2, "newNamePath"    # Ljava/lang/String;

    .prologue
    .line 743
    const/4 v1, 0x1

    .line 744
    .local v1, "ret":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "param":Ljava/lang/String;
    const-string v2, "REN"

    iget-object v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v2, v0, v3}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    .line 748
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readRenameData()Z

    move-result v1

    .line 753
    :cond_0
    return v1
.end method

.method private resetConnection(Ljava/util/concurrent/Semaphore;)Z
    .locals 2
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 400
    const/4 v0, 0x1

    .line 402
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    .line 404
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    :cond_1
    return v0
.end method

.method private sendBufferBlocks([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v8, 0x1

    .line 912
    const/4 v4, 0x1

    .line 916
    .local v4, "ret":Z
    const/4 v2, 0x0

    .line 917
    .local v2, "bufferIndex":I
    :try_start_0
    array-length v5, p1

    if-nez v5, :cond_1

    .line 919
    const/4 v5, 0x1

    new-array v0, v5, [B

    .line 920
    .local v0, "block":[B
    const/4 v5, 0x0

    const/4 v6, 0x3

    aput-byte v6, v0, v5

    .line 921
    const-wide/16 v6, 0x23

    const/4 v5, 0x0

    invoke-static {v6, v7, v5}, Ljava/lang/Thread;->sleep(JI)V

    .line 922
    iget-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-virtual {v5, v0, p2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->writeData([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v4

    .line 924
    const-string v5, "DBG"

    const-string v6, "BLEFtp block 1, 0"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    .end local v0    # "block":[B
    :cond_0
    :goto_0
    return v4

    .line 928
    :cond_1
    :goto_1
    if-ne v4, v8, :cond_0

    array-length v5, p1

    if-ge v2, v5, :cond_0

    .line 930
    const/16 v1, 0x14

    .line 931
    .local v1, "blockSize":I
    array-length v5, p1

    sub-int/2addr v5, v2

    const/16 v6, 0x13

    if-gt v5, v6, :cond_2

    .line 933
    array-length v5, p1

    sub-int/2addr v5, v2

    add-int/lit8 v1, v5, 0x1

    .line 935
    :cond_2
    new-array v0, v1, [B

    .line 937
    .restart local v0    # "block":[B
    array-length v5, p1

    const/16 v6, 0x14

    if-ge v5, v6, :cond_3

    .line 939
    const/4 v5, 0x0

    const/4 v6, 0x3

    aput-byte v6, v0, v5

    .line 957
    :goto_2
    const/4 v5, 0x1

    add-int/lit8 v6, v1, -0x1

    invoke-static {p1, v2, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 958
    add-int/lit8 v5, v1, -0x1

    add-int/2addr v2, v5

    .line 959
    const-wide/16 v6, 0x23

    const/4 v5, 0x0

    invoke-static {v6, v7, v5}, Ljava/lang/Thread;->sleep(JI)V

    .line 960
    iget-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-virtual {v5, v0, p2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->writeData([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v4

    .line 962
    const-string v5, "DBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BLEFtp block "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 966
    .end local v0    # "block":[B
    .end local v1    # "blockSize":I
    :catch_0
    move-exception v3

    .line 968
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v5, "DBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BLEFtp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 943
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "block":[B
    .restart local v1    # "blockSize":I
    :cond_3
    if-nez v2, :cond_4

    .line 945
    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_1
    aput-byte v6, v0, v5

    goto :goto_2

    .line 947
    :cond_4
    add-int/lit8 v5, v2, 0x13

    array-length v6, p1

    if-lt v5, v6, :cond_5

    .line 949
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v0, v5

    goto :goto_2

    .line 953
    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v0, v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 11
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 782
    const/4 v5, 0x1

    .line 783
    .local v5, "ret":Z
    const/4 v2, 0x0

    .line 784
    .local v2, "bufferParam":[B
    const/4 v1, 0x0

    .line 785
    .local v1, "bufferCmd":[B
    const/4 v0, 0x0

    .line 786
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 790
    .local v4, "indexBuffer":I
    :try_start_0
    const-string v6, "UTF8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 798
    :goto_0
    if-ne v5, v10, :cond_0

    if-eqz p2, :cond_0

    .line 802
    :try_start_1
    const-string v6, "UTF8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 811
    :cond_0
    :goto_1
    if-ne v5, v10, :cond_1

    .line 813
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    array-length v7, v2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x84

    if-le v6, v7, :cond_1

    .line 815
    const-string v6, "DBG"

    const-string v7, "BLEFtp Block size error"

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const/4 v5, 0x0

    .line 820
    :cond_1
    if-ne v5, v10, :cond_3

    .line 822
    if-nez v2, :cond_4

    .line 824
    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    new-array v0, v6, [B

    .line 831
    :goto_2
    array-length v6, v1

    invoke-static {v1, v9, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    array-length v4, v1

    .line 834
    if-eqz v2, :cond_2

    .line 836
    array-length v6, v2

    invoke-static {v2, v9, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    array-length v6, v2

    add-int/2addr v4, v6

    .line 839
    :cond_2
    aput-byte v9, v0, v4

    .line 840
    invoke-direct {p0, v0, p3}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendBufferBlocks([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v5

    .line 843
    :cond_3
    return v5

    .line 792
    :catch_0
    move-exception v3

    .line 794
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "DBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLEFtp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/4 v5, 0x0

    goto :goto_0

    .line 804
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 806
    .restart local v3    # "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "DBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLEFtp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const/4 v5, 0x0

    goto :goto_1

    .line 828
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    array-length v6, v1

    array-length v7, v2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    new-array v0, v6, [B

    goto :goto_2
.end method

.method private sendPutData(ILjava/io/FileInputStream;IZZJLjava/util/concurrent/Semaphore;)Z
    .locals 24
    .param p1, "fileSize"    # I
    .param p2, "src"    # Ljava/io/FileInputStream;
    .param p3, "resumeIndex"    # I
    .param p4, "resume"    # Z
    .param p5, "abort"    # Z
    .param p6, "nativeCallbackObject"    # J
    .param p8, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 1092
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1093
    .local v8, "in":Ljava/io/BufferedInputStream;
    const/16 v21, 0x84

    move/from16 v0, v21

    new-array v4, v0, [B

    .line 1094
    .local v4, "buffer":[B
    const/16 v17, 0x1

    .line 1095
    .local v17, "ret":Z
    const/4 v15, 0x0

    .line 1096
    .local v15, "packetLen":I
    const/4 v14, 0x0

    .line 1097
    .local v14, "packetCount":I
    const/16 v19, 0x0

    .line 1098
    .local v19, "totalPacket":I
    const/16 v20, 0x0

    .line 1099
    .local v20, "totalSize":I
    const/4 v6, 0x0

    .line 1100
    .local v6, "endFile":Z
    new-instance v10, Lcom/parrot/arsdk/arutils/ARUtilsMD5;

    invoke-direct {v10}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;-><init>()V

    .line 1101
    .local v10, "md5":Lcom/parrot/arsdk/arutils/ARUtilsMD5;
    new-instance v11, Lcom/parrot/arsdk/arutils/ARUtilsMD5;

    invoke-direct {v11}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;-><init>()V

    .line 1102
    .local v11, "md5End":Lcom/parrot/arsdk/arutils/ARUtilsMD5;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/String;

    .line 1103
    .local v12, "md5Msg":[Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v12, v21

    .line 1104
    const/4 v13, 0x0

    .line 1105
    .local v13, "md5Txt":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1106
    .local v18, "send":[B
    const/16 v16, 0x0

    .line 1107
    .local v16, "percent":F
    const/4 v9, 0x0

    .line 1111
    .local v9, "lastPercent":F
    const/16 v21, 0x1

    move/from16 v0, p5

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1113
    const/4 v6, 0x1

    .line 1114
    const/16 p3, 0x0

    .line 1115
    const/16 p4, 0x0

    .line 1120
    :cond_0
    if-nez p5, :cond_1

    .line 1122
    const/16 v21, 0x0

    const/16 v22, 0x84

    :try_start_0
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v4, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v15

    .line 1125
    :cond_1
    if-lez v15, :cond_e

    .line 1127
    add-int/lit8 v14, v14, 0x1

    .line 1128
    add-int/lit8 v19, v19, 0x1

    .line 1129
    add-int v20, v20, v15

    .line 1131
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v4, v0, v15}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->update([BII)V

    .line 1133
    if-eqz p4, :cond_2

    const/16 v21, 0x1

    move/from16 v0, p4

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    move/from16 v0, v19

    move/from16 v1, p3

    if-le v0, v1, :cond_c

    .line 1135
    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v4, v0, v15}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->update([BII)V

    .line 1137
    move-object/from16 v18, v4

    .line 1138
    const/16 v21, 0x84

    move/from16 v0, v21

    if-eq v15, v0, :cond_3

    .line 1140
    new-array v0, v15, [B

    move-object/from16 v18, v0

    .line 1141
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-static {v4, v0, v1, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->transferring:Landroid/bluetooth/BluetoothGattCharacteristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendBufferBlocks([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v17

    .line 1146
    const-string v21, "DBG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "BLEFtp packet "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :goto_0
    const-wide/16 v22, 0x0

    cmp-long v21, p6, v22

    if-eqz v21, :cond_4

    .line 1155
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x42c80000    # 100.0f

    mul-float v16, v21, v22

    .line 1156
    const/16 v21, 0x1

    move/from16 v0, p4

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_d

    .line 1158
    sub-float v21, v16, v9

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-lez v21, :cond_4

    .line 1160
    move/from16 v9, v16

    .line 1161
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->nativeProgressCallback(JF)V

    .line 1170
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1172
    const-string v21, "DBG"

    const-string v22, "BLEFtp Canceled received"

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 1174
    const/4 v7, 0x0

    .line 1176
    .local v7, "err":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->transferring:Landroid/bluetooth/BluetoothGattCharacteristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendResponse([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v7

    .line 1177
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readPutMd5([Ljava/lang/String;)Z

    move-result v7

    .line 1179
    const/16 v17, 0x0

    .line 1190
    .end local v7    # "err":Z
    :cond_5
    :goto_2
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v21, 0x1f4

    move/from16 v0, v21

    if-ge v14, v0, :cond_6

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_8

    if-lez v14, :cond_8

    .line 1192
    :cond_6
    const/4 v14, 0x0

    .line 1194
    if-eqz p4, :cond_7

    const/16 v21, 0x1

    move/from16 v0, p4

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    move/from16 v0, v19

    move/from16 v1, p3

    if-le v0, v1, :cond_8

    .line 1196
    :cond_7
    invoke-virtual {v10}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->digest()Ljava/lang/String;

    move-result-object v13

    .line 1197
    invoke-virtual {v10}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->initialize()Z

    .line 1199
    const-string v21, "DBG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "BLEFtp sending md5 "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MD5"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1202
    const-string v21, "UTF8"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->transferring:Landroid/bluetooth/BluetoothGattCharacteristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendBufferBlocks([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v17

    .line 1205
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1207
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readPudDataWritten()Z

    move-result v17

    .line 1212
    :cond_8
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    if-eqz v6, :cond_0

    .line 1214
    :cond_9
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_b

    .line 1216
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->transferring:Landroid/bluetooth/BluetoothGattCharacteristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sendResponse([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v17

    .line 1219
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 1221
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->readPutMd5([Ljava/lang/String;)Z

    move-result v17

    .line 1224
    :cond_a
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1226
    invoke-virtual {v11}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->digest()Ljava/lang/String;

    move-result-object v13

    .line 1228
    const-string v21, "DBG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "BLEFtp md5 end"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const/16 v21, 0x0

    aget-object v21, v12, v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_f

    .line 1232
    const-string v21, "DBG"

    const-string v22, "BLEFtp md5 end Failed"

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const/16 v17, 0x0

    .line 1248
    :cond_b
    :goto_3
    return v17

    .line 1150
    :cond_c
    const-string v21, "DBG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "BLEFtp resume "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1242
    :catch_0
    move-exception v5

    .line 1244
    .local v5, "e":Ljava/io/IOException;
    const-string v21, "DBG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "BLEFtp "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const/16 v17, 0x0

    goto :goto_3

    .line 1166
    .end local v5    # "e":Ljava/io/IOException;
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->nativeProgressCallback(JF)V

    goto/16 :goto_1

    .line 1184
    :cond_e
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_5

    .line 1186
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1237
    :cond_f
    const-string v21, "DBG"

    const-string v22, "BLEFtp md5 end ok"

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private sendResponse(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v8, 0x1

    .line 848
    const/4 v4, 0x1

    .line 849
    .local v4, "ret":Z
    const/4 v1, 0x0

    .line 850
    .local v1, "bufferCmd":[B
    const/4 v0, 0x0

    .line 851
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 857
    .local v3, "indexBuffer":I
    :try_start_0
    const-string v5, "UTF8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 865
    :goto_0
    if-ne v4, v8, :cond_0

    .line 867
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x84

    if-le v5, v6, :cond_0

    .line 869
    const-string v5, "DBG"

    const-string v6, "BLEFtp Block size error"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const/4 v4, 0x0

    .line 874
    :cond_0
    if-ne v4, v8, :cond_1

    .line 876
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [B

    .line 878
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v1, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    array-length v3, v1

    .line 881
    const/4 v5, 0x0

    aput-byte v5, v0, v3

    .line 883
    const-wide/16 v6, 0x23

    const/4 v5, 0x0

    invoke-static {v6, v7, v5}, Ljava/lang/Thread;->sleep(JI)V

    .line 884
    iget-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-virtual {v5, v0, p2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->writeData([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v4

    .line 891
    :cond_1
    :goto_1
    return v4

    .line 859
    :catch_0
    move-exception v2

    .line 861
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "DBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BLEFtp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 862
    const/4 v4, 0x0

    goto :goto_0

    .line 887
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private sendResponse([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 896
    const/4 v0, 0x1

    .line 900
    .local v0, "ret":Z
    const-wide/16 v2, 0x23

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2, v3, v1}, Ljava/lang/Thread;->sleep(JI)V

    .line 901
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->writeData([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 907
    :goto_0
    return v0

    .line 903
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized setBLEManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    if-nez v0, :cond_1

    .line 129
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private sizeFile(Ljava/lang/String;[D)Z
    .locals 16
    .param p1, "remoteFile"    # Ljava/lang/String;
    .param p2, "fileSize"    # [D

    .prologue
    .line 415
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    .line 416
    .local v14, "resultList":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-object v4, v14, v2

    .line 417
    const/4 v13, 0x0

    .line 418
    .local v13, "remotePath":Ljava/lang/String;
    const/4 v12, 0x0

    .line 419
    .local v12, "remoteFileName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 420
    .local v11, "idx":I
    const/4 v8, -0x1

    .line 421
    .local v8, "endIdx":I
    const/4 v10, 0x0

    .line 422
    .local v10, "found":Z
    const/4 v15, 0x1

    .line 424
    .local v15, "ret":Z
    const-string v2, "DBG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BLEFtp sizeFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-direct/range {p0 .. p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->normalizePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 428
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, p2, v2

    .line 430
    :goto_0
    const/16 v2, 0x2f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const/4 v2, -0x1

    if-eq v11, v2, :cond_0

    .line 432
    add-int/lit8 v11, v11, 0x1

    .line 433
    move v8, v11

    goto :goto_0

    .line 436
    :cond_0
    const/4 v2, -0x1

    if-eq v8, v2, :cond_1

    .line 438
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 439
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 442
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->listFiles(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v15

    .line 444
    const/4 v2, 0x1

    if-ne v15, v2, :cond_4

    const/4 v2, 0x0

    aget-object v2, v14, v2

    if-eqz v2, :cond_4

    .line 446
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 447
    .local v3, "nextItem":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 448
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 449
    .local v6, "indexItem":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v6, v2

    .line 450
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 451
    .local v7, "itemLen":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v7, v2

    .line 452
    const/4 v9, 0x0

    .line 454
    .local v9, "fileName":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v10, :cond_4

    const/4 v2, 0x0

    aget-object v2, v14, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getListNextItem(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z[I[I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 456
    const-string v2, "DBG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BLEFtp file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v12, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    const/4 v2, 0x0

    aget-object v2, v14, v2

    const/4 v4, 0x0

    aget v4, v6, v4

    const/4 v5, 0x0

    aget v5, v7, v5

    move-object/from16 v0, p2

    invoke-static {v2, v4, v5, v0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getListItemSize(Ljava/lang/String;II[D)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 462
    const/4 v15, 0x0

    goto :goto_1

    .line 466
    :cond_3
    const/4 v10, 0x1

    goto :goto_1

    .line 472
    .end local v3    # "nextItem":[Ljava/lang/String;
    .end local v6    # "indexItem":[I
    .end local v7    # "itemLen":[I
    .end local v9    # "fileName":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    if-ne v10, v2, :cond_5

    .line 474
    const/4 v15, 0x1

    .line 481
    :goto_2
    return v15

    .line 478
    :cond_5
    const/4 v15, 0x0

    goto :goto_2
.end method


# virtual methods
.method public cancelFileAL(Ljava/util/concurrent/Semaphore;)Z
    .locals 1
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->cancelFile(Ljava/util/concurrent/Semaphore;)Z

    move-result v0

    return v0
.end method

.method public deleteFileAL(Ljava/lang/String;)Z
    .locals 2
    .param p1, "remoteFile"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v0, 0x1

    .line 347
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 348
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    return v0
.end method

.method public getFileAL(Ljava/lang/String;Ljava/lang/String;JZLjava/util/concurrent/Semaphore;)Z
    .locals 3
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "localFile"    # Ljava/lang/String;
    .param p3, "nativeCallbackObject"    # J
    .param p5, "wantProgress"    # Z
    .param p6, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 315
    invoke-direct/range {p0 .. p6}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getFile(Ljava/lang/String;Ljava/lang/String;JZLjava/util/concurrent/Semaphore;)Z

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 318
    return v0
.end method

.method public getFileWithBufferAL(Ljava/lang/String;[[BJZLjava/util/concurrent/Semaphore;)Z
    .locals 3
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "data"    # [[B
    .param p3, "nativeCallbackObject"    # J
    .param p5, "wantProgress"    # Z
    .param p6, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 326
    invoke-direct/range {p0 .. p6}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getFileWithBuffer(Ljava/lang/String;[[BJZLjava/util/concurrent/Semaphore;)Z

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 329
    return v0
.end method

.method public isConnectionCanceledAL(Ljava/util/concurrent/Semaphore;)Z
    .locals 1
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z

    move-result v0

    return v0
.end method

.method public listFilesAL(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "resultList"    # [Ljava/lang/String;

    .prologue
    .line 290
    const/4 v0, 0x1

    .line 292
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->listFiles(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 296
    return v0
.end method

.method public putFileAL(Ljava/lang/String;Ljava/lang/String;JZLjava/util/concurrent/Semaphore;)Z
    .locals 3
    .param p1, "remotePath"    # Ljava/lang/String;
    .param p2, "localFile"    # Ljava/lang/String;
    .param p3, "nativeCallbackObject"    # J
    .param p5, "resume"    # Z
    .param p6, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 337
    invoke-direct/range {p0 .. p6}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->putFile(Ljava/lang/String;Ljava/lang/String;JZLjava/util/concurrent/Semaphore;)Z

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 340
    return v0
.end method

.method public registerCharacteristics()Z
    .locals 15

    .prologue
    .line 195
    iget-object v11, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v9

    .line 196
    .local v9, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    sget-object v4, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 197
    .local v4, "error":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    const/4 v6, 0x1

    .line 199
    .local v6, "ret":Z
    const-string v11, "DBG"

    const-string v12, "BLEFtp registerCharacteristics"

    invoke-static {v11, v12}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 202
    .local v10, "servicesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 204
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothGattService;

    .line 205
    .local v7, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v11}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "serviceUuid":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v11}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "name":Ljava/lang/String;
    const-string v11, "DBG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BLEFtp service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v11, "fd%02d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->port:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 211
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 212
    .local v2, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 214
    .local v3, "characteristicsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 216
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 217
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v11}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "characteristicUuid":Ljava/lang/String;
    const-string v11, "DBG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BLEFtp characteristic "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v11, "fd%02d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->port:I

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 222
    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->transferring:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_0

    .line 224
    :cond_2
    const-string v11, "fd%02d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->port:I

    add-int/lit8 v14, v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 226
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->arrayGetting:Ljava/util/ArrayList;

    .line 227
    iget-object v11, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->arrayGetting:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getting:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 230
    const-string v11, "DBG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BLEFtp set "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :cond_3
    const-string v11, "fd%02d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->port:I

    add-int/lit8 v14, v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 235
    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto/16 :goto_0

    .line 241
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "characteristicUuid":Ljava/lang/String;
    .end local v2    # "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v3    # "characteristicsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v8    # "serviceUuid":Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->transferring:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getting:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v11, :cond_5

    .line 250
    const/4 v11, 0x1

    if-ne v6, v11, :cond_5

    .line 252
    iget-object v11, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    iget-object v12, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->arrayGetting:Ljava/util/ArrayList;

    const-string v13, "kARUTILS_BLEFtp_Getting"

    invoke-virtual {v11, v12, v13}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registerNotificationCharacteristics(Ljava/util/List;Ljava/lang/String;)V

    .line 256
    :cond_5
    return v6
.end method

.method public registerDevice(Landroid/bluetooth/BluetoothGatt;I)Z
    .locals 4
    .param p1, "gattDevice"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "port"    # I

    .prologue
    .line 140
    const/4 v0, 0x1

    .line 142
    .local v0, "ret":Z
    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    if-nez v1, :cond_0

    .line 144
    iput-object p1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    .line 145
    iput p2, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->port:I

    .line 146
    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    .line 148
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->registerCharacteristics()Z

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    if-ne v1, p1, :cond_1

    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->port:I

    if-ne v1, p2, :cond_1

    .line 152
    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    goto :goto_0

    .line 156
    :cond_1
    const-string v1, "BLEFtp "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDevice Bad parameters : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nthis.gattDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ngattDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nthis.port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public renameFileAL(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "oldNamePath"    # Ljava/lang/String;
    .param p2, "newNamePath"    # Ljava/lang/String;

    .prologue
    .line 356
    const/4 v0, 0x1

    .line 358
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 360
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 362
    return v0
.end method

.method public resetConnectionAL(Ljava/util/concurrent/Semaphore;)Z
    .locals 1
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->resetConnection(Ljava/util/concurrent/Semaphore;)Z

    move-result v0

    return v0
.end method

.method public sizeFileAL(Ljava/lang/String;[D)Z
    .locals 2
    .param p1, "remoteFile"    # Ljava/lang/String;
    .param p2, "fileSize"    # [D

    .prologue
    .line 301
    const/4 v0, 0x1

    .line 303
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->sizeFile(Ljava/lang/String;[D)Z

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 307
    return v0
.end method

.method public unregisterCharacteristics()Z
    .locals 3

    .prologue
    .line 261
    const/4 v0, 0x1

    .line 263
    .local v0, "ret":Z
    const-string v1, "DBG"

    const-string v2, "BLEFtp unregisterCharacteristics"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    const-string v2, "kARUTILS_BLEFtp_Getting"

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->unregisterNotificationCharacteristics(Ljava/lang/String;)Z

    move-result v0

    .line 267
    return v0
.end method

.method public unregisterDevice()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    const/4 v0, 0x1

    .line 167
    .local v0, "ret":Z
    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    if-lez v1, :cond_1

    .line 169
    const-string v1, "DBG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterDevice : connection count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 172
    iput-object v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->port:I

    .line 175
    iput-object v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->transferring:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 176
    iput-object v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->getting:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 177
    iput-object v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->handling:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 179
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->unregisterCharacteristics()Z

    .line 182
    :cond_0
    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsBLEFtp;->connectionCount:I

    .line 190
    :goto_0
    return v0

    .line 186
    :cond_1
    const-string v1, "DBG"

    const-string v2, "BLEFtp Bad parameters"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    goto :goto_0
.end method
