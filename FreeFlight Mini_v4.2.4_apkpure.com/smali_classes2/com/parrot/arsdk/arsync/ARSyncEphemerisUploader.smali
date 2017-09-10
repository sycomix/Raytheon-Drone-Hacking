.class public Lcom/parrot/arsdk/arsync/ARSyncEphemerisUploader;
.super Ljava/lang/Object;
.source "ARSyncEphemerisUploader.java"


# static fields
.field private static final FTP_PORT:I = 0x15

.field private static final TAG:Ljava/lang/String; = "ARSyncEphemerisUploader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeUploadSync(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static uploadEphemerisBLESync(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "md5FileName"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 111
    .local v0, "arsyncError":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    const/4 v4, 0x0

    .line 114
    .local v4, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :try_start_0
    new-instance v5, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .local v5, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    const/16 v6, 0x15

    :try_start_1
    invoke-virtual {v5, p0, p1, v6}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initBLEFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v3

    .line 116
    .local v3, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v3, v6, :cond_1

    .line 118
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "failed to init BLE ftp"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 125
    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :goto_0
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_ARUTILS_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 126
    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {v4, p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeBLEFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 129
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v0

    .line 120
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v6

    invoke-static {v6, v7, p2, p3, p4}, Lcom/parrot/arsdk/arsync/ARSyncEphemerisUploader;->nativeUploadSync(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 121
    .local v2, "error":I
    invoke-static {v2}, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    move-object v4, v5

    .line 131
    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_1

    .line 123
    .end local v2    # "error":I
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static uploadEphemerisRFCOMMSync(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "md5FileName"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 138
    .local v0, "arsyncError":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    const/4 v4, 0x0

    .line 141
    .local v4, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :try_start_0
    new-instance v5, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .local v5, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    const/16 v6, 0x15

    :try_start_1
    invoke-virtual {v5, p0, p1, v6}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initRFCommFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v3

    .line 143
    .local v3, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v3, v6, :cond_1

    .line 145
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "failed to init RFCOMM ftp"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 152
    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :goto_0
    :try_start_2
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_ARUTILS_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {v4, p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeRFCommFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 159
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v0

    .line 147
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v6

    invoke-static {v6, v7, p2, p3, p4}, Lcom/parrot/arsdk/arsync/ARSyncEphemerisUploader;->nativeUploadSync(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 148
    .local v2, "error":I
    invoke-static {v2}, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 156
    if-eqz v5, :cond_3

    .line 158
    invoke-virtual {v5, p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeRFCommFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 159
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    move-object v4, v5

    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_1

    .line 156
    .end local v2    # "error":I
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_2

    .line 158
    invoke-virtual {v4, p0}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeRFCommFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 159
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    :cond_2
    throw v6

    .line 156
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_2

    .line 150
    :catch_1
    move-exception v1

    goto :goto_0

    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v2    # "error":I
    .restart local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_3
    move-object v4, v5

    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_1
.end method

.method public static uploadEphemerisWifiSync(Lcom/parrot/mux/Mux$Ref;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 9
    .param p0, "muxRef"    # Lcom/parrot/mux/Mux$Ref;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "md5FileName"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 54
    .local v0, "arsyncError":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    const/4 v4, 0x0

    .line 57
    .local v4, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :try_start_0
    new-instance v5, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .local v5, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    const/16 v6, 0x15

    :try_start_1
    const-string v7, "anonymous"

    const-string v8, ""

    invoke-virtual {v5, p0, v6, v7, v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initWifiFtp(Lcom/parrot/mux/Mux$Ref;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v3

    .line 59
    .local v3, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    invoke-virtual {p0}, Lcom/parrot/mux/Mux$Ref;->release()V

    .line 60
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v3, v6, :cond_0

    .line 62
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "failed to init wifi ftp"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 71
    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :goto_0
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_ARUTILS_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0

    .line 64
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v6

    invoke-static {v6, v7, p1, p2, p3}, Lcom/parrot/arsdk/arsync/ARSyncEphemerisUploader;->nativeUploadSync(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, "error":I
    invoke-static {v2}, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    move-result-object v0

    .line 66
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeWifiFtp()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 67
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 72
    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_1

    .line 69
    .end local v2    # "error":I
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static uploadEphemerisWifiSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 9
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "md5FileName"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_OK:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 81
    .local v0, "arsyncError":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    const/4 v4, 0x0

    .line 84
    .local v4, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :try_start_0
    new-instance v5, Lcom/parrot/arsdk/arutils/ARUtilsManager;

    invoke-direct {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .local v5, "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    const/16 v6, 0x15

    :try_start_1
    const-string v7, "anonymous"

    const-string v8, ""

    invoke-virtual {v5, p0, v6, v7, v8}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initWifiFtp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v3

    .line 86
    .local v3, "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v3, v6, :cond_1

    .line 88
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "failed to init wifi ftp"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 95
    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :goto_0
    :try_start_2
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_ARUTILS_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeWifiFtp()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 102
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v0

    .line 90
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->getManager()J

    move-result-wide v6

    invoke-static {v6, v7, p1, p2, p3}, Lcom/parrot/arsdk/arsync/ARSyncEphemerisUploader;->nativeUploadSync(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 91
    .local v2, "error":I
    invoke-static {v2}, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 99
    if-eqz v5, :cond_3

    .line 101
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeWifiFtp()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 102
    invoke-virtual {v5}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    move-object v4, v5

    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_1

    .line 99
    .end local v2    # "error":I
    .end local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeWifiFtp()Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 102
    invoke-virtual {v4}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->dispose()V

    :cond_2
    throw v6

    .line 99
    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_2

    .line 93
    :catch_1
    move-exception v1

    goto :goto_0

    .end local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v2    # "error":I
    .restart local v3    # "utilsError":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .restart local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_3
    move-object v4, v5

    .end local v5    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    .restart local v4    # "utilsManager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    goto :goto_1
.end method
