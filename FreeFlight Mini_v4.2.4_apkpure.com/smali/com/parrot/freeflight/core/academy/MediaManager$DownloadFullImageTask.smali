.class public Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;
.super Landroid/os/AsyncTask;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadFullImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/parrot/freeflight/core/academy/MediaInfos;",
        "Ljava/lang/Void;",
        "Lcom/parrot/freeflight/core/academy/MediaInfos;",
        ">;"
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

.field private final mWidth:I

.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/MediaManager;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/MediaManager;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/MediaManager;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 610
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 611
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 612
    invoke-static {p1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$300(Lcom/parrot/freeflight/core/academy/MediaManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mInternalFiles:Ljava/io/File;

    .line 613
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mExternalFiles:Ljava/io/File;

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mListeners:Ljava/util/List;

    .line 615
    iput p2, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mWidth:I

    .line 616
    iput p3, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mHeight:I

    .line 617
    return-void
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
    .line 621
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Lcom/parrot/freeflight/core/academy/MediaInfos;)Lcom/parrot/freeflight/core/academy/MediaInfos;
    .locals 9
    .param p1, "mediaInfoses"    # [Lcom/parrot/freeflight/core/academy/MediaInfos;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, "downloadedImage":Landroid/graphics/Bitmap;
    aget-object v2, p1, v8

    .line 639
    .local v2, "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    if-eqz v5, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-object v2

    .line 643
    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 645
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iget-boolean v5, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isLocal:Z

    if-eqz v5, :cond_3

    .line 646
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 647
    iget-object v5, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 648
    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget v6, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mWidth:I

    iget v7, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mHeight:I

    invoke-static {v5, v3, v6, v7}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$400(Lcom/parrot/freeflight/core/academy/MediaManager;Landroid/graphics/BitmapFactory$Options;II)V

    .line 649
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 650
    iget-object v5, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 651
    iget-object v5, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/parrot/arsdk/armedia/Exif2Interface;->handleOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 669
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    .line 670
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$300(Lcom/parrot/freeflight/core/academy/MediaManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->image:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 654
    :cond_3
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 656
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 657
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 658
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 659
    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget v6, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mWidth:I

    iget v7, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mHeight:I

    invoke-static {v5, v3, v6, v7}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$400(Lcom/parrot/freeflight/core/academy/MediaManager;Landroid/graphics/BitmapFactory$Options;II)V

    .line 660
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 662
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 664
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 600
    check-cast p1, [Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->doInBackground([Lcom/parrot/freeflight/core/academy/MediaInfos;)Lcom/parrot/freeflight/core/academy/MediaInfos;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 696
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 697
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    .line 698
    .local v0, "listener":Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    sget-object v2, Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;->ARMEDIA_ERROR:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;->onError(Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;)V

    goto :goto_0

    .line 700
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$800(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 702
    return-void
.end method

.method protected onPostExecute(Lcom/parrot/freeflight/core/academy/MediaInfos;)V
    .locals 4
    .param p1, "mediaInfos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 679
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 681
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$700(Lcom/parrot/freeflight/core/academy/MediaManager;)Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->image:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$700(Lcom/parrot/freeflight/core/academy/MediaManager;)Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;

    .line 686
    .local v0, "listener":Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 689
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$800(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 691
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 600
    check-cast p1, Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->onPostExecute(Lcom/parrot/freeflight/core/academy/MediaInfos;)V

    return-void
.end method

.method public removeListener(Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 631
    :cond_0
    return-void
.end method
