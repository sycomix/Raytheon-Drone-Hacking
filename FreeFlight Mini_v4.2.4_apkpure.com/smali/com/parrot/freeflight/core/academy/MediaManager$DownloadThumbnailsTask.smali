.class Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;
.super Landroid/os/AsyncTask;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadThumbnailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/parrot/freeflight/core/academy/MediaInfos;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/parrot/freeflight/core/academy/MediaInfos;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mExternalFiles:Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHeight:I

.field private final mInternalFiles:Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunUuid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWidth:I

.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/MediaManager;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/MediaManager;IILjava/lang/String;Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;)V
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "runUuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "listener"    # Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 453
    invoke-static {p1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$300(Lcom/parrot/freeflight/core/academy/MediaManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mInternalFiles:Ljava/io/File;

    .line 454
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mExternalFiles:Ljava/io/File;

    .line 455
    iput p2, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mWidth:I

    .line 456
    iput p3, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mHeight:I

    .line 457
    iput-object p4, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mRunUuid:Ljava/lang/String;

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mListeners:Ljava/util/List;

    .line 459
    invoke-virtual {p0, p5}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->addListener(Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;)V

    .line 460
    return-void
.end method

.method private loadVideoThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 556
    const/4 v4, 0x0

    .line 557
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 560
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 565
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 581
    :goto_0
    if-eqz v4, :cond_1

    .line 582
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 583
    .local v1, "originWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 585
    .local v0, "originHeight":I
    if-gt v1, p2, :cond_0

    if-le v0, p3, :cond_1

    .line 587
    :cond_0
    if-le v1, v0, :cond_2

    .line 588
    int-to-float v5, p3

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 592
    .local v3, "scale":F
    :goto_1
    int-to-float v5, v1

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v6, v0

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 596
    .end local v0    # "originHeight":I
    .end local v1    # "originWidth":I
    .end local v3    # "scale":F
    :cond_1
    return-object v4

    .line 562
    :catch_0
    move-exception v5

    .line 565
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 566
    :catch_1
    move-exception v5

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v5

    .line 565
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 567
    :goto_2
    throw v5

    .line 590
    .restart local v0    # "originHeight":I
    .restart local v1    # "originWidth":I
    :cond_2
    int-to-float v5, p2

    int-to-float v6, v1

    div-float v3, v5, v6

    .restart local v3    # "scale":F
    goto :goto_1

    .line 566
    .end local v0    # "originHeight":I
    .end local v1    # "originWidth":I
    .end local v3    # "scale":F
    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 439
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .local p1, "mediaList":[Ljava/util/List;, "[Ljava/util/List<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "downloadedThumbnail":Landroid/graphics/Bitmap;
    aget-object v5, p1, v9

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 474
    .local v2, "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 527
    .end local v2    # "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    :cond_1
    aget-object v5, p1, v9

    return-object v5

    .line 478
    .restart local v2    # "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    :cond_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 480
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v6, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 484
    iget-boolean v6, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isLocal:Z

    if-eqz v6, :cond_4

    .line 485
    iget-boolean v6, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    if-eqz v6, :cond_3

    .line 486
    iget-object v6, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnailUrl:Ljava/lang/String;

    iget v7, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mWidth:I

    iget v8, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mHeight:I

    invoke-direct {p0, v6, v7, v8}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->loadVideoThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 518
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 522
    if-eqz v0, :cond_0

    .line 523
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$300(Lcom/parrot/freeflight/core/academy/MediaManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 488
    :cond_3
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 489
    iget-object v6, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 490
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget v7, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mWidth:I

    iget v8, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mHeight:I

    invoke-static {v6, v3, v7, v8}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$400(Lcom/parrot/freeflight/core/academy/MediaManager;Landroid/graphics/BitmapFactory$Options;II)V

    .line 491
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 492
    iget-object v6, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 493
    iget-object v6, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/parrot/arsdk/armedia/Exif2Interface;->handleOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 497
    :cond_4
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v6, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnailUrl:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 499
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 503
    iget v6, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 504
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 506
    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 507
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 508
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget v7, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mWidth:I

    iget v8, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mHeight:I

    invoke-static {v6, v3, v7, v8}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$400(Lcom/parrot/freeflight/core/academy/MediaManager;Landroid/graphics/BitmapFactory$Options;II)V

    .line 509
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 511
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 513
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 545
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 546
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    .line 547
    .local v0, "listener":Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    sget-object v2, Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;->ARMEDIA_ERROR:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;->onError(Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;)V

    goto :goto_0

    .line 550
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 551
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$600(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mRunUuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 439
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "mediaInfoses":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$500(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mRunUuid:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    .line 535
    .local v0, "listener":Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 539
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$600(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->mRunUuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-void
.end method
