.class public Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
.super Ljava/lang/Object;
.source "ARUtilsRFCommFtp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp$ARUtilsRFCommFtpHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ARUtilsRFCommFTP.java"

.field private static final MY_UUID:Ljava/util/UUID;

.field private static final RFCOMM_CHANNEL:Ljava/lang/Integer;

.field public static final RFCOMM_GETTING_KEY:Ljava/lang/String; = "kARUTILS_BLERFComm_Getting"

.field private static final RFCOMM_UPDATE_KEY:Ljava/lang/String; = "UPD"

.field public static final SOFTWARE_DOWNLOAD_SIZE_SET:Ljava/lang/String; = "/api/software/download_size/set"

.field protected static final ST_CONNECTED:I = 0x2

.field protected static final ST_CONNECTING:I = 0x1

.field protected static final ST_NOT_CONNECTED:I = 0x0

.field private static final TYPE_MES_ACKNOWLEDGT:B = 0x2t

.field public static final TYPE_MES_CLOSE_SESSION:B = 0x1t

.field public static final TYPE_MES_DATA:B = -0x80t

.field public static final TYPE_MES_OPEN_SESSION:B


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

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mInStream:Ljava/io/InputStream;

.field private mIsOpeningSession:Z

.field private mOutStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/bluetooth/BluetoothSocket;

.field private mState:I

.field private port:I

.field private rfCommReadCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private rfCommWriteCharac:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "8b6814d3-6ce7-4498-9700-9312c1711f63"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->MY_UUID:Ljava/util/UUID;

    .line 110
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->RFCOMM_CHANNEL:Ljava/lang/Integer;

    .line 120
    invoke-static {}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->nativeJNIInit()V

    .line 121
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .line 85
    iput-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    .line 87
    iput v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectionCount:I

    .line 88
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    .line 90
    iput-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->arrayGetting:Ljava/util/ArrayList;

    .line 114
    iput-boolean v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mIsOpeningSession:Z

    .line 115
    iput v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mState:I

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp$1;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;-><init>()V

    return-void
.end method

.method private askRFCommMacAdress(JLjava/util/concurrent/Semaphore;)Ljava/lang/String;
    .locals 7
    .param p1, "fileSize"    # J
    .param p3, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, "macAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->rfCommWriteCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v3, :cond_0

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 457
    .local v1, "keyAsByteArr":[B
    const-string v3, "ARUtilsRFCommFTP.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write in charac "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    iget-object v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->rfCommWriteCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v1, v4}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->writeData([BLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 459
    invoke-direct {p0, p3}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 462
    invoke-direct {p0, p3}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->readRFCommMacAdress(Ljava/util/concurrent/Semaphore;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keyAsByteArr":[B
    :cond_0
    :goto_0
    return-object v2

    .line 466
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "keyAsByteArr":[B
    :cond_1
    const-string v3, "ARUtilsRFCommFTP.java"

    const-string v4, "Canceled received after having written in the BLE characteristic to get rfcomm mac address"

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cancelFile(Ljava/util/concurrent/Semaphore;)Z
    .locals 1
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 328
    const/4 v0, 0x1

    .line 330
    .local v0, "ret":Z
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 332
    return v0
.end method

.method private closeSession()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 608
    const-string v2, "ARUtilsRFCommFTP.java"

    const-string v3, "close RFComm session"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iput-boolean v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mIsOpeningSession:Z

    .line 610
    invoke-static {v4, v5}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->getHeaderFirst(IB)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->write([B)Z

    .line 611
    const/16 v2, 0x1000

    new-array v1, v2, [B

    .line 614
    .local v1, "readArray":[B
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    iput v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mState:I

    .line 621
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->closeConnection()V

    goto :goto_0
.end method

.method private connectToBluetoothDevice(Ljava/lang/String;)V
    .locals 11
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 519
    iput-object v10, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 520
    const-string v5, "ARUtilsRFCommFTP.java"

    const-string v6, "Try to connect to bluetooth device"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 522
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 524
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 528
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 530
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "createInsecureRfcommSocketToServiceRecord"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/util/UUID;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 532
    .local v2, "createInsecureRfcommSocketToServiceRecord":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->MY_UUID:Ljava/util/UUID;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothSocket;

    iput-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 555
    .end local v2    # "createInsecureRfcommSocketToServiceRecord":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 563
    :goto_1
    iget-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v5, :cond_0

    .line 565
    iput-object v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 568
    :try_start_2
    iget-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mInStream:Ljava/io/InputStream;

    .line 569
    iget-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mOutStream:Ljava/io/OutputStream;

    .line 570
    const/4 v5, 0x1

    iput v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mState:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 581
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_2
    return-void

    .line 536
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "createInsecureRfcommSocket"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 537
    .local v1, "createInsecureRfcommSocket":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->RFCOMM_CHANNEL:Ljava/lang/Integer;

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothSocket;

    iput-object v5, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 540
    .end local v1    # "createInsecureRfcommSocket":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 542
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 544
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .line 546
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 548
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v4

    .line 550
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 557
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 559
    .local v4, "e":Ljava/io/IOException;
    iput-object v10, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 560
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 571
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 572
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->closeConnection()V

    goto :goto_2

    .line 578
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    const-string v5, "ARUtilsRFCommFTP.java"

    const-string v6, "Bluetooth adapter is not enabled"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private connectToRFCommDevice(JLjava/util/concurrent/Semaphore;)V
    .locals 5
    .param p1, "fileSize"    # J
    .param p3, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 439
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->askRFCommMacAdress(JLjava/util/concurrent/Semaphore;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "rfCommMacAddress":Ljava/lang/String;
    const-string v1, "ARUtilsRFCommFTP.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rfCommMacAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0, v0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectToBluetoothDevice(Ljava/lang/String;)V

    .line 446
    :cond_0
    return-void
.end method

.method private static getHeaderFirst(IB)[B
    .locals 6
    .param p0, "length"    # I
    .param p1, "type"    # B

    .prologue
    const/4 v5, 0x0

    .line 794
    add-int/lit8 v3, p0, 0x3

    invoke-static {v3}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->sizeIntToByte(I)[B

    move-result-object v2

    .line 795
    .local v2, "zz":[B
    const/4 v3, 0x1

    new-array v1, v3, [B

    .line 796
    .local v1, "t":[B
    aput-byte p1, v1, v5

    .line 798
    array-length v3, v2

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v0, v3, [B

    .line 799
    .local v0, "header":[B
    array-length v3, v2

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    array-length v3, v2

    array-length v4, v1

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-static {}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp$ARUtilsRFCommFtpHolder;->access$100()Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;

    move-result-object v0

    .line 135
    .local v0, "instance":Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;
    if-nez p0, :cond_0

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->setBLEManager(Landroid/content/Context;)V

    .line 140
    return-object v0
.end method

.method private static getUploadPacket([BI)[B
    .locals 20
    .param p0, "data"    # [B
    .param p1, "id"    # I

    .prologue
    .line 896
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v13, v17, 0x9

    .line 898
    .local v13, "sizePack2":I
    const/16 v17, -0x80

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->getHeaderFirst(IB)[B

    move-result-object v6

    .line 899
    .local v6, "header":[B
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [B

    fill-array-data v14, :array_0

    .line 901
    .local v14, "xy":[B
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    .line 902
    .local v16, "zzDesordered":[B
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v15, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x1

    aget-byte v18, v16, v18

    aput-byte v18, v15, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aget-byte v18, v16, v18

    aput-byte v18, v15, v17

    .line 905
    .local v15, "zz":[B
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v10, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-byte v18, v10, v17

    .line 906
    .local v10, "pktType":[B
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    move/from16 v0, p1

    int-to-short v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    .line 907
    .local v9, "pktIdDesordered":[B
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [B

    const/16 v17, 0x0

    const/16 v18, 0x1

    aget-byte v18, v9, v18

    aput-byte v18, v8, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aget-byte v18, v9, v18

    aput-byte v18, v8, v17

    .line 909
    .local v8, "pktId":[B
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0xc

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 911
    .local v11, "request":[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v6, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    const/16 v17, 0x0

    array-length v0, v6

    move/from16 v18, v0

    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v14, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    const/16 v17, 0x0

    array-length v0, v6

    move/from16 v18, v0

    array-length v0, v14

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v15, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 914
    const/16 v17, 0x0

    array-length v0, v6

    move/from16 v18, v0

    array-length v0, v14

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v15

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v10, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    const/16 v17, 0x0

    array-length v0, v6

    move/from16 v18, v0

    array-length v0, v14

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v15

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v10

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    const/16 v17, 0x0

    array-length v0, v6

    move/from16 v18, v0

    array-length v0, v14

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v15

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v10

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v8

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    const/4 v4, 0x0

    .line 920
    .local v4, "a":B
    const/4 v5, 0x0

    .line 922
    .local v5, "b":B
    array-length v7, v6

    .local v7, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 924
    aget-byte v17, v11, v7

    or-int v17, v17, v4

    move/from16 v0, v17

    int-to-byte v4, v0

    .line 925
    aget-byte v17, v11, v7

    xor-int v17, v17, v5

    move/from16 v0, v17

    int-to-byte v5, v0

    .line 922
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 927
    :cond_0
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [B

    const/16 v17, 0x0

    aput-byte v4, v12, v17

    const/16 v17, 0x1

    aput-byte v5, v12, v17

    .line 929
    .local v12, "sign":[B
    const/16 v17, 0x0

    array-length v0, v6

    move/from16 v18, v0

    array-length v0, v14

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v15

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v10

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v8

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 931
    return-object v11

    .line 899
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z
    .locals 2
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 339
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    .line 342
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 348
    :cond_0
    return v0
.end method

.method private static native nativeJNIInit()V
.end method

.method private native nativeProgressCallback(JF)V
.end method

.method private openSession()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 587
    const-string v2, "ARUtilsRFCommFTP.java"

    const-string v3, "open RFComm session"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mIsOpeningSession:Z

    .line 589
    invoke-static {v4, v4}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->getHeaderFirst(IB)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->write([B)Z

    .line 590
    const/16 v2, 0x1000

    new-array v1, v2, [B

    .line 593
    .local v1, "readArray":[B
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    iput-boolean v4, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mIsOpeningSession:Z

    .line 601
    const/4 v2, 0x2

    iput v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mState:I

    .line 602
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->closeConnection()V

    goto :goto_0
.end method

.method private putFile(Ljava/lang/String;Ljava/lang/String;JZLjava/util/concurrent/Semaphore;)Z
    .locals 9
    .param p1, "remoteFile"    # Ljava/lang/String;
    .param p2, "localFile"    # Ljava/lang/String;
    .param p3, "nativeCallbackObject"    # J
    .param p5, "resume"    # Z
    .param p6, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 368
    const/4 v2, 0x1

    .line 369
    .local v2, "processIsOK":Z
    const-string v3, "ARUtilsRFCommFTP.java"

    const-string v4, "putFile Begin"

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, "fileToUpload":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 373
    :cond_0
    const/4 v2, 0x0

    .line 377
    :cond_1
    if-eqz v2, :cond_2

    .line 379
    const-string v3, "ARUtilsRFCommFTP.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will send file with size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, p6}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectToRFCommDevice(JLjava/util/concurrent/Semaphore;)V

    .line 381
    iget v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 383
    const/4 v2, 0x0

    .line 388
    :cond_2
    if-eqz v2, :cond_3

    .line 390
    invoke-direct {p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->openSession()V

    .line 391
    iget v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 393
    const/4 v2, 0x0

    .line 398
    :cond_3
    if-eqz v2, :cond_4

    .line 400
    invoke-direct {p0, v1, p3, p4, p6}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->sendFile(Ljava/io/File;JLjava/util/concurrent/Semaphore;)Z

    move-result v2

    .line 404
    :cond_4
    if-eqz v2, :cond_5

    invoke-direct {p0, p6}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 409
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 419
    invoke-direct {p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->closeSession()V

    .line 420
    iget v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mState:I

    if-eqz v3, :cond_6

    .line 422
    const/4 v2, 0x0

    .line 427
    :cond_6
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->closeConnection()V

    .line 433
    return v2

    .line 411
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private readRFCommMacAdress(Ljava/util/concurrent/Semaphore;)Ljava/lang/String;
    .locals 12
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 475
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v4, "receivedNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;>;"
    const/4 v3, 0x0

    .line 478
    .local v3, "readDataSucceed":Z
    const/4 v5, 0x0

    .line 481
    .local v5, "rfcommMacAddress":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 483
    iget-object v7, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    const-string v8, "kARUTILS_BLERFComm_Getting"

    invoke-virtual {v7, v4, v10, v8}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->readDataNotificationData(Ljava/util/List;ILjava/lang/String;)Z

    move-result v3

    .line 484
    const-string v7, "ARUtilsRFCommFTP.java"

    const-string v8, "Data has been read"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_0
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 489
    const-string v7, "ARUtilsRFCommFTP.java"

    const-string v8, "Canceled received after having read the rfcomm mac address"

    invoke-static {v7, v8}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v3, 0x0

    .line 493
    :cond_1
    if-ne v3, v10, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 495
    const/4 v2, 0x0

    .line 496
    .local v2, "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    check-cast v2, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;

    .line 497
    .restart local v2    # "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    iget-object v0, v2, Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;->value:[B

    .line 498
    .local v0, "block":[B
    if-eqz v0, :cond_4

    .line 500
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .local v6, "strBld":Ljava/lang/StringBuilder;
    array-length v7, v0

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_3

    .line 504
    const-string v7, "%02X"

    new-array v8, v10, [Ljava/lang/Object;

    aget-byte v9, v0, v1

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    if-le v1, v10, :cond_2

    .line 507
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 510
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 514
    .end local v0    # "block":[B
    .end local v1    # "i":I
    .end local v2    # "notificationData":Lcom/parrot/arsdk/arsal/ARSALBLEManager$ARSALManagerNotificationData;
    .end local v6    # "strBld":Ljava/lang/StringBuilder;
    :cond_4
    return-object v5
.end method

.method private resetConnection(Ljava/util/concurrent/Semaphore;)Z
    .locals 2
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 353
    const/4 v0, 0x1

    .line 355
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    .line 357
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    :cond_1
    return v0
.end method

.method private sendFile(Ljava/io/File;JLjava/util/concurrent/Semaphore;)Z
    .locals 24
    .param p1, "file"    # Ljava/io/File;
    .param p2, "nativeCallbackObject"    # J
    .param p4, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 638
    const/4 v15, 0x0

    .line 639
    .local v15, "nbSstoredBytes":I
    const/16 v18, 0x1

    .line 640
    .local v18, "ret":Z
    const/4 v7, 0x0

    .line 642
    .local v7, "f":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v7    # "f":Ljava/io/FileInputStream;
    .local v8, "f":Ljava/io/FileInputStream;
    const/16 v19, 0x3d2

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 649
    .local v4, "buffer":[B
    const/4 v13, 0x0

    .line 650
    .local v13, "len":I
    const-wide/16 v20, 0x0

    .line 651
    .local v20, "total":J
    const/4 v9, 0x0

    .line 652
    .local v9, "id":I
    const/16 v16, 0x0

    .line 653
    .local v16, "percent":F
    const/4 v12, 0x0

    .line 657
    .local v12, "lastPercent":F
    if-lez v15, :cond_0

    .line 658
    :goto_0
    if-lez v15, :cond_0

    .line 659
    int-to-long v0, v15

    move-wide/from16 v22, v0

    :try_start_1
    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v14, v0

    .line 660
    .local v14, "nbSkipped":I
    sub-int/2addr v15, v14

    .line 661
    goto :goto_0

    .line 643
    .end local v4    # "buffer":[B
    .end local v8    # "f":Ljava/io/FileInputStream;
    .end local v9    # "id":I
    .end local v12    # "lastPercent":F
    .end local v13    # "len":I
    .end local v14    # "nbSkipped":I
    .end local v16    # "percent":F
    .end local v20    # "total":J
    .restart local v7    # "f":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 644
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 645
    const/16 v19, 0x0

    .line 732
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return v19

    .line 664
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "f":Ljava/io/FileInputStream;
    .restart local v9    # "id":I
    .restart local v12    # "lastPercent":F
    .restart local v13    # "len":I
    .restart local v16    # "percent":F
    .restart local v20    # "total":J
    :cond_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 667
    .local v10, "fileSize":J
    :goto_2
    if-eqz v18, :cond_4

    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_4

    .line 669
    int-to-long v0, v13

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    .line 670
    new-array v0, v13, [B

    move-object/from16 v17, v0

    .line 671
    .local v17, "request":[B
    const/16 v19, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-static {v4, v0, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->sendFirmwareOnDevice([BI)Z

    move-result v19

    if-nez v19, :cond_1

    .line 674
    const-string v19, "ARUtilsRFCommFTP.java"

    const-string v22, "upload firmware, task was canceled"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 676
    const/16 v19, 0x0

    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_1

    .line 686
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :cond_1
    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    long-to-float v0, v10

    move/from16 v22, v0

    div-float v19, v19, v22

    const/high16 v22, 0x42c80000    # 100.0f

    mul-float v16, v19, v22

    .line 687
    const-wide/16 v22, 0x0

    cmp-long v19, p2, v22

    if-eqz v19, :cond_2

    .line 701
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->nativeProgressCallback(JF)V

    .line 705
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 707
    const-string v19, "ARUtilsRFCommFTP.java"

    const-string v22, "Canceled received during file upload"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 709
    const/16 v18, 0x0

    .line 712
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 713
    goto :goto_2

    .line 714
    .end local v10    # "fileSize":J
    .end local v17    # "request":[B
    :catch_1
    move-exception v5

    .line 715
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 717
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 721
    :goto_3
    const/16 v19, 0x0

    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_1

    .line 718
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    .line 719
    .local v6, "e1":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 725
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e1":Ljava/io/IOException;
    .restart local v10    # "fileSize":J
    :cond_4
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 730
    :goto_4
    const-string v19, "ARUtilsRFCommFTP.java"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Sending done. Sent "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " bytes"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    move/from16 v19, v18

    .line 732
    goto/16 :goto_1

    .line 726
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .line 727
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private declared-synchronized setBLEManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    if-nez v0, :cond_1

    .line 147
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private static sizeIntToByte(I)[B
    .locals 3
    .param p0, "length"    # I

    .prologue
    const/4 v1, 0x2

    .line 811
    new-array v0, v1, [B

    .line 812
    .local v0, "zz":[B
    new-array v0, v1, [B

    .end local v0    # "zz":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 815
    .restart local v0    # "zz":[B
    return-object v0
.end method

.method private static sizeIntToByte2(I)[B
    .locals 3
    .param p0, "length"    # I

    .prologue
    const/4 v1, 0x2

    .line 824
    new-array v0, v1, [B

    .line 825
    .local v0, "zz":[B
    new-array v0, v1, [B

    .end local v0    # "zz":[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 827
    .restart local v0    # "zz":[B
    return-object v0
.end method

.method private unpairDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 626
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "removeBond"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    .line 627
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 628
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ARUtilsRFCommFTP.java"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized write([B)Z
    .locals 5
    .param p1, "buffer"    # [B

    .prologue
    .line 764
    monitor-enter p0

    const/4 v1, 0x0

    .line 767
    .local v1, "success":Z
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 768
    const-wide/16 v2, 0x28

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    const/4 v1, 0x1

    .line 779
    :goto_0
    monitor-exit p0

    return v1

    .line 771
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ARUtilsRFCommFTP.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during write"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 764
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 775
    :catch_1
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "ARUtilsRFCommFTP.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during sleep"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public cancelFileAL(Ljava/util/concurrent/Semaphore;)Z
    .locals 1
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->cancelFile(Ljava/util/concurrent/Semaphore;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized closeConnection()V
    .locals 3

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    const-string v1, "ARUtilsRFCommFTP.java"

    const-string v2, "closeConnection"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :try_start_1
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mInStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 837
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mInStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mOutStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 849
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mOutStream:Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 858
    :cond_1
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_2

    .line 860
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 861
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 868
    :cond_2
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_3

    .line 870
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->unpairDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 871
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 873
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 874
    monitor-exit p0

    return-void

    .line 840
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string v1, "ARUtilsRFCommFTP.java"

    const-string v2, "Closing of mInStream failed"

    invoke-static {v1, v2, v0}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 831
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 852
    :catch_1
    move-exception v0

    .line 854
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v1, "ARUtilsRFCommFTP.java"

    const-string v2, "Closing of mOutStream failed"

    invoke-static {v1, v2, v0}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 864
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 866
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "ARUtilsRFCommFTP.java"

    const-string v2, "Closing of mSocket failed"

    invoke-static {v1, v2, v0}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public isConnectionCanceledAL(Ljava/util/concurrent/Semaphore;)Z
    .locals 1
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->isConnectionCanceled(Ljava/util/concurrent/Semaphore;)Z

    move-result v0

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
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "ret":Z
    const-string v1, "ARUtilsRFCommFTP.java"

    const-string v2, "putFileAL"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 302
    invoke-direct/range {p0 .. p6}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->putFile(Ljava/lang/String;Ljava/lang/String;JZLjava/util/concurrent/Semaphore;)Z

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    return v0
.end method

.method public registerCharacteristics()Z
    .locals 4

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "ret":Z
    const-string v1, "ARUtilsRFCommFTP.java"

    const-string v2, "registerCharacteristics"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->arrayGetting:Ljava/util/ArrayList;

    .line 272
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->rfCommReadCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_0

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->arrayGetting:Ljava/util/ArrayList;

    .line 275
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->arrayGetting:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->rfCommReadCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    iget-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->arrayGetting:Ljava/util/ArrayList;

    const-string v3, "kARUTILS_BLERFComm_Getting"

    invoke-virtual {v1, v2, v3}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->registerNotificationCharacteristics(Ljava/util/List;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x1

    .line 280
    :cond_0
    return v0
.end method

.method public registerDevice(Landroid/bluetooth/BluetoothGatt;I)Z
    .locals 4
    .param p1, "gattDevice"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "port"    # I

    .prologue
    .line 158
    const-string v1, "ARUtilsRFCommFTP.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    .line 163
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->port:I

    if-eq v1, p2, :cond_1

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    .line 166
    iput p2, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->port:I

    .line 167
    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectionCount:I

    .line 169
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->searchForInterestingCharacs()V

    .line 171
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->registerCharacteristics()Z

    move-result v0

    .line 193
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_2

    .line 175
    const-string v1, "ARUtilsRFCommFTP.java"

    const-string v2, "registerDevice : Bad parameters"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_2
    const-string v1, "ARUtilsRFCommFTP.java"

    const-string v2, "already on good device"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetConnectionAL(Ljava/util/concurrent/Semaphore;)Z
    .locals 1
    .param p1, "cancelSem"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->resetConnection(Ljava/util/concurrent/Semaphore;)Z

    move-result v0

    return v0
.end method

.method public searchForInterestingCharacs()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v11, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v9

    .line 225
    .local v9, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    sget-object v4, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 226
    .local v4, "error":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    const/4 v6, 0x1

    .line 228
    .local v6, "ret":Z
    const-string v11, "ARUtilsRFCommFTP.java"

    const-string v12, "registerCharacteristics"

    invoke-static {v11, v12}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 232
    .local v10, "servicesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 234
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothGattService;

    .line 235
    .local v7, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v11}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, "serviceUuid":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v11}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "name":Ljava/lang/String;
    const-string v11, "ARUtilsRFCommFTP.java"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v11, "fe00"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 241
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 242
    .local v2, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 244
    .local v3, "characteristicsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 246
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 247
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v11}, Lcom/parrot/arsdk/arsal/ARUUID;->getShortUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "characteristicUuid":Ljava/lang/String;
    const-string v11, "ARUtilsRFCommFTP.java"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "characteristic "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v11, "fe02"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 252
    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->rfCommReadCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_0

    .line 254
    :cond_2
    const-string v11, "fe01"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 256
    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->rfCommWriteCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 257
    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->rfCommReadCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_0

    .line 262
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "characteristicUuid":Ljava/lang/String;
    .end local v2    # "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v3    # "characteristicsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v8    # "serviceUuid":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public sendFirmwareOnDevice([BI)Z
    .locals 5
    .param p1, "data"    # [B
    .param p2, "id"    # I

    .prologue
    .line 737
    iget v3, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 739
    .local v2, "success":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 741
    invoke-static {p1, p2}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->getUploadPacket([BI)[B

    move-result-object v1

    .line 745
    .local v1, "request":[B
    :try_start_0
    invoke-direct {p0, v1}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->write([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 758
    .end local v1    # "request":[B
    :cond_0
    :goto_1
    return v2

    .line 737
    .end local v2    # "success":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 747
    .restart local v1    # "request":[B
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public unregisterCharacteristics()Z
    .locals 3

    .prologue
    .line 285
    const/4 v0, 0x1

    .line 287
    .local v0, "ret":Z
    const-string v1, "ARUtilsRFCommFTP.java"

    const-string v2, "unregisterCharacteristics"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->bleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    const-string v2, "kARUTILS_BLERFComm_Getting"

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->unregisterNotificationCharacteristics(Ljava/lang/String;)Z

    move-result v0

    .line 291
    return v0
.end method

.method public unregisterDevice()Z
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x1

    .line 200
    .local v0, "ret":Z
    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectionCount:I

    if-lez v1, :cond_1

    .line 202
    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectionCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->gattDevice:Landroid/bluetooth/BluetoothGatt;

    .line 205
    const/4 v1, 0x0

    iput v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->port:I

    .line 207
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->unregisterCharacteristics()Z

    .line 210
    :cond_0
    iget v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsRFCommFtp;->connectionCount:I

    .line 218
    :goto_0
    return v0

    .line 214
    :cond_1
    const-string v1, "ARUtilsRFCommFTP.java"

    const-string v2, "Bad parameters"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    goto :goto_0
.end method
