.class Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;
.super Ljava/lang/Object;
.source "DownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/DownloaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetUpdateInfoSyncTask"
.end annotation


# instance fields
.field downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

.field finished:Z

.field manager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

.field md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/update/task/DownloaderTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/update/task/DownloaderTask$1;

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->cancel()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 645
    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    .locals 18
    .param p1, "directory"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/DeviceVersion;",
            ">;)[",
            "Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;"
        }
    .end annotation

    .prologue
    .line 650
    .local p3, "currentDeviceVersionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/DeviceVersion;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v17, v0

    .line 651
    .local v17, "products":[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v14, v2, :cond_0

    .line 652
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/update/task/DeviceVersion;

    iget-object v2, v2, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v2, v17, v14

    .line 651
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 655
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->finished:Z

    if-nez v2, :cond_9

    .line 657
    :try_start_0
    new-instance v16, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-direct/range {v16 .. v16}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;-><init>()V

    .line 658
    .local v16, "manager":Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    invoke-virtual/range {v16 .. v16}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->getARUpdaterDownloader()Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    move-result-object v1

    .line 659
    .local v1, "downloader":Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;
    new-instance v3, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-direct {v3}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;-><init>()V

    .line 660
    .local v3, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v12}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->createUpdaterDownloader(Ljava/lang/String;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Ljava/lang/String;Lcom/parrot/arsdk/arupdater/ARUpdaterShouldDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterWillDownloadPlfListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/arupdater/ARUpdaterPlfDownloadCompletionListener;Ljava/lang/Object;)V

    .line 661
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->setUpdatesProductList([Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 662
    invoke-virtual {v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->getUpdatesInfoSync()[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    :try_end_0
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 666
    .local v15, "info":[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-eqz v2, :cond_1

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 668
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    .line 670
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v2, :cond_2

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 673
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 675
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->manager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v2, :cond_3

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->manager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->dispose()V

    .line 677
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->manager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    .line 683
    .end local v1    # "downloader":Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;
    .end local v3    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .end local v16    # "manager":Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    :cond_3
    :goto_1
    return-object v15

    .line 663
    .end local v15    # "info":[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    :catch_0
    move-exception v2

    move-object v13, v2

    .line 664
    .local v13, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v2, 0x0

    :try_start_1
    new-array v15, v2, [Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    .restart local v15    # "info":[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-eqz v2, :cond_4

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 668
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    .line 670
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v2, :cond_5

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 673
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 675
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->manager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v2, :cond_3

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->manager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v2}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->dispose()V

    .line 677
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->manager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    goto :goto_1

    .line 666
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "info":[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    if-eqz v4, :cond_6

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;->dispose()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 668
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->downloader:Lcom/parrot/arsdk/arupdater/ARUpdaterDownloader;

    .line 670
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    if-eqz v4, :cond_7

    .line 671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->close()Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 673
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->md5Manager:Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    .line 675
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->manager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    if-eqz v4, :cond_8

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->manager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-virtual {v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->dispose()V

    .line 677
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/parrot/freeflight/update/task/DownloaderTask$GetUpdateInfoSyncTask;->manager:Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    :cond_8
    throw v2

    .line 681
    :cond_9
    const/4 v2, 0x0

    new-array v15, v2, [Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;

    .restart local v15    # "info":[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    goto/16 :goto_1

    .line 663
    .end local v15    # "info":[Lcom/parrot/arsdk/arupdater/ARUpdaterDownloadInfo;
    :catch_1
    move-exception v2

    move-object v13, v2

    goto/16 :goto_2
.end method
