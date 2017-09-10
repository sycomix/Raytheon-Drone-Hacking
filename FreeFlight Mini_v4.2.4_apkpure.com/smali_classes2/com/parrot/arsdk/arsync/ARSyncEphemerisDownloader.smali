.class public Lcom/parrot/arsdk/arsync/ARSyncEphemerisDownloader;
.super Ljava/lang/Object;
.source "ARSyncEphemerisDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadEphemerisSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;
    .param p2, "dstMd5FileName"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v3, 0x0

    .line 48
    .local v3, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :try_start_0
    new-instance v4, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-direct {v4}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v3    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .local v4, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :try_start_1
    invoke-virtual {v4}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->init()V

    .line 50
    invoke-virtual {v4}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->getNativeManager()J

    move-result-wide v6

    invoke-static {p0, p1, p2, v6, v7}, Lcom/parrot/arsdk/arsync/ARSyncEphemerisDownloader;->nativeDownloadSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v2

    .line 51
    .local v2, "error":I
    invoke-static {v2}, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 59
    .local v0, "arsyncError":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    if-eqz v4, :cond_2

    .line 61
    invoke-virtual {v4}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 62
    invoke-virtual {v4}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    move-object v3, v4

    .line 65
    .end local v2    # "error":I
    .end local v4    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v3    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :cond_0
    :goto_0
    return-object v0

    .line 53
    .end local v0    # "arsyncError":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;->ARSYNC_ERROR_EPHEMERIS_ARSAL_ERROR:Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .restart local v0    # "arsyncError":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v3}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 62
    invoke-virtual {v3}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    goto :goto_0

    .line 59
    .end local v0    # "arsyncError":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {v3}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 62
    invoke-virtual {v3}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    :cond_1
    throw v5

    .line 59
    .end local v3    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v4    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v3    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    goto :goto_2

    .line 53
    .end local v3    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v4    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v3    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    goto :goto_1

    .end local v3    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v0    # "arsyncError":Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;
    .restart local v2    # "error":I
    .restart local v4    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :cond_2
    move-object v3, v4

    .end local v4    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v3    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    goto :goto_0
.end method

.method private static native nativeDownloadSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
.end method
