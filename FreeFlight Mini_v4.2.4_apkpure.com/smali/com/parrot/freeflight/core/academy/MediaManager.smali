.class public Lcom/parrot/freeflight/core/academy/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/academy/MediaManager$IListener;,
        Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;,
        Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;,
        Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;,
        Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;,
        Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;
    }
.end annotation


# static fields
.field private static final FULL_IMAGES_CACHE_SIZE:I = 0x1400

.field private static final MEDIA_NAME_FORMAT:Ljava/lang/String; = "{0}_{1}_{2}{3}"

.field private static final REQUEST_THUMBNAILS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaManager"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDownloadThumbnailsTasks:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;",
            ">;"
        }
    .end annotation
.end field

.field private mFullImageDownloadTasks:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private mFullImagesCache:Landroid/support/v4/util/LruCache;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

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
            "Lcom/parrot/freeflight/core/academy/MediaManager$IListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalMedias:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaInfos:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMediaManager:Lcom/parrot/arsdk/armedia/ARMediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNeedUpdate:Z

.field private mUpdateMediaManagerTask:Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mListeners:Ljava/util/List;

    .line 84
    new-instance v3, Lcom/parrot/freeflight/core/academy/MediaManager$1;

    .line 86
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/parrot/freeflight/core/academy/MediaManager$1;-><init>(Lcom/parrot/freeflight/core/academy/MediaManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lcom/parrot/arsdk/armedia/ARMediaManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/armedia/ARMediaManager;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaManager:Lcom/parrot/arsdk/armedia/ARMediaManager;

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "productList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 104
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaManager:Lcom/parrot/arsdk/armedia/ARMediaManager;

    invoke-virtual {v3, v2}, Lcom/parrot/arsdk/armedia/ARMediaManager;->initWithProjectIDs(Ljava/util/ArrayList;)Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    .line 108
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaInfos:Ljava/util/Map;

    .line 109
    new-instance v3, Lcom/parrot/freeflight/core/academy/MediaManager$2;

    const/16 v4, 0x1400

    invoke-direct {v3, p0, v4}, Lcom/parrot/freeflight/core/academy/MediaManager$2;-><init>(Lcom/parrot/freeflight/core/academy/MediaManager;I)V

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mFullImagesCache:Landroid/support/v4/util/LruCache;

    .line 115
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mDownloadThumbnailsTasks:Ljava/util/Map;

    .line 116
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mFullImageDownloadTasks:Ljava/util/Map;

    .line 118
    new-instance v0, Lcom/parrot/freeflight/core/academy/MediaManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/MediaManager$3;-><init>(Lcom/parrot/freeflight/core/academy/MediaManager;)V

    .line 129
    .local v0, "mediaManagerUpdateReceiver":Landroid/content/BroadcastReceiver;
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "ARMediaManagerNotificationDictionary"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 130
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/core/academy/MediaManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mNeedUpdate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/academy/MediaManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/MediaManager;->executeLocalUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/academy/MediaManager;Ljava/util/Map;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager;->setLocalMedias(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/academy/MediaManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/academy/MediaManager;Landroid/graphics/BitmapFactory$Options;II)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;
    .param p1, "x1"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/MediaManager;->setBitmapSize(Landroid/graphics/BitmapFactory$Options;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mDownloadThumbnailsTasks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/academy/MediaManager;)Landroid/support/v4/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mFullImagesCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mFullImageDownloadTasks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/academy/MediaManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/MediaManager;->populateLocalMedias()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private addFileToLocalMediasIfExist(Ljava/io/File;Lcom/parrot/arsdk/armedia/ARMediaObject;Ljava/util/Map;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "media"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p3, "localMedias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "absolutePath":Ljava/lang/String;
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/4 v1, 0x1

    .line 216
    .end local v0    # "absolutePath":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addNameToLocalMedia(Lcom/parrot/arsdk/armedia/ARMediaObject;)V
    .locals 7
    .param p1, "mediaObject"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 199
    invoke-virtual {p1}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v3, p1, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "productName":Ljava/lang/String;
    iget-object v3, p1, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "shortUuid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getMediaType()Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-result-object v3

    sget-object v4, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    if-ne v3, v4, :cond_2

    const-string v0, ".mp4"

    .line 207
    .local v0, "extention":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "{0}_{1}_{2}{3}"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    goto :goto_0

    .line 205
    .end local v0    # "extention":Ljava/lang/String;
    :cond_2
    const-string v0, ".jpg"

    goto :goto_1
.end method

.method private executeLocalUpdate()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mUpdateMediaManagerTask:Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mNeedUpdate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mUpdateMediaManagerTask:Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;-><init>(Lcom/parrot/freeflight/core/academy/MediaManager;Lcom/parrot/freeflight/core/academy/MediaManager$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mUpdateMediaManagerTask:Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mUpdateMediaManagerTask:Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getMediaExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/MediaManager$UpdateMediaManagerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    :cond_1
    return-void
.end method

.method private getLocalMedias()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mLocalMedias:Ljava/util/Map;

    return-object v0
.end method

.method private getNumberOfMedia(Ljava/lang/String;Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;Ljava/util/List;)I
    .locals 5
    .param p1, "runUuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mediaType"    # Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 265
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/MediaManager;->executeLocalUpdate()V

    .line 267
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/MediaManager;->getLocalMedias()Ljava/util/Map;

    move-result-object v0

    .line 269
    .local v0, "localMedias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    if-nez v0, :cond_1

    .line 270
    const/4 v2, -0x1

    .line 278
    :cond_0
    return v2

    .line 272
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 273
    .local v2, "size":I
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 274
    .local v1, "media":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getMediaType()Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-result-object v4

    if-ne p2, v4, :cond_2

    invoke-virtual {v1}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private populateLocalMedias()Ljava/util/Map;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaManager:Lcom/parrot/arsdk/armedia/ARMediaManager;

    invoke-virtual {v6}, Lcom/parrot/arsdk/armedia/ARMediaManager;->update()Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    .line 175
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v2, "localMedias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaManager:Lcom/parrot/arsdk/armedia/ARMediaManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/parrot/arsdk/armedia/ARMediaManager;->retrieveProjectsDictionary(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 179
    .local v0, "allProductsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "value":Ljava/lang/Object;
    move-object v4, v5

    .line 180
    check-cast v4, Ljava/util/Map;

    .line 181
    .local v4, "mediaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 182
    .local v3, "media":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/core/academy/MediaManager;->addNameToLocalMedia(Lcom/parrot/arsdk/armedia/ARMediaObject;)V

    .line 183
    iget-object v8, v3, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 185
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    iget-object v9, v3, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, v1, v3, v2}, Lcom/parrot/freeflight/core/academy/MediaManager;->addFileToLocalMediasIfExist(Ljava/io/File;Lcom/parrot/arsdk/armedia/ARMediaObject;Ljava/util/Map;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 188
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    iget-object v9, v3, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    .restart local v1    # "file":Ljava/io/File;
    invoke-direct {p0, v1, v3, v2}, Lcom/parrot/freeflight/core/academy/MediaManager;->addFileToLocalMediasIfExist(Ljava/io/File;Lcom/parrot/arsdk/armedia/ARMediaObject;Ljava/util/Map;)Z

    goto :goto_0

    .line 195
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "media":Lcom/parrot/arsdk/armedia/ARMediaObject;
    .end local v4    # "mediaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method private setBitmapSize(Landroid/graphics/BitmapFactory$Options;II)V
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 385
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 386
    .local v4, "originWidth":I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 387
    .local v3, "originHeight":I
    const/4 v2, 0x1

    .line 390
    .local v2, "inSampleSize":I
    if-gt v4, p2, :cond_0

    if-le v3, p3, :cond_1

    .line 391
    :cond_0
    div-int/lit8 v1, v4, 0x2

    .line 392
    .local v1, "halfWidth":I
    div-int/lit8 v0, v3, 0x2

    .line 396
    .local v0, "halfHeight":I
    :goto_0
    div-int v5, v0, v2

    if-le v5, p3, :cond_1

    div-int v5, v1, v2

    if-le v5, p2, :cond_1

    .line 398
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 401
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 402
    return-void
.end method

.method private setLocalMedias(Ljava/util/Map;)Z
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "localMedias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mLocalMedias:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 162
    .local v0, "changed":Z
    :goto_0
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mLocalMedias:Ljava/util/Map;

    .line 163
    return v0

    .line 161
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disconnect()V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mDownloadThumbnailsTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;

    .line 142
    .local v0, "task":Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->cancel(Z)Z

    goto :goto_0

    .line 144
    .end local v0    # "task":Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 145
    return-void
.end method

.method public getImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mFullImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getNumberOfCaptures(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .param p1, "runUuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "captures":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 224
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;

    .line 225
    .local v0, "capture":Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;->getFilename()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    .end local v0    # "capture":Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    const/4 v3, 0x0

    .line 238
    :goto_1
    return v3

    .line 236
    :cond_2
    const-string v3, "MediaManager"

    const-string v4, "permission READ_EXTERNAL_STORAGE was not granted. It should be checked by an Activity before calling getNumberOfCaptures()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v3, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_PHOTO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    invoke-direct {p0, p1, v3, v2}, Lcom/parrot/freeflight/core/academy/MediaManager;->getNumberOfMedia(Ljava/lang/String;Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;Ljava/util/List;)I

    move-result v3

    goto :goto_1
.end method

.method public getNumberOfVideos(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .param p1, "runUuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 246
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    .line 247
    .local v2, "video":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "name":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 250
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "video":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    const/4 v3, 0x0

    .line 260
    :goto_1
    return v3

    .line 258
    :cond_2
    const-string v3, "MediaManager"

    const-string v4, "permission READ_EXTERNAL_STORAGE was not granted. It should be checked by an Activity before calling getNumberOfVideos()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v3, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    invoke-direct {p0, p1, v3, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->getNumberOfMedia(Ljava/lang/String;Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;Ljava/util/List;)I

    move-result v3

    goto :goto_1
.end method

.method public getTaskFor(Ljava/lang/String;II)Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mDownloadThumbnailsTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mFullImageDownloadTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    .line 409
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;

    invoke-direct {v0, p0, p2, p3}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadFullImageTask;-><init>(Lcom/parrot/freeflight/core/academy/MediaManager;II)V

    goto :goto_0
.end method

.method public mediaUploaded(Lcom/parrot/freeflight/core/academy/MediaInfos;)V
    .locals 6
    .param p1, "infos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 284
    iput-boolean v5, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    .line 285
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaInfos:Ljava/util/Map;

    iget-object v3, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->runId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaInfos:Ljava/util/Map;

    iget-object v3, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->runId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 288
    .local v1, "runMediaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 289
    .local v0, "mediaInfos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    iget-object v3, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    iput-boolean v5, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    .line 295
    .end local v0    # "mediaInfos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    .end local v1    # "runMediaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    :cond_1
    return-void
.end method

.method public registerListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/MediaManager$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/MediaManager;->getLocalMedias()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {p1}, Lcom/parrot/freeflight/core/academy/MediaManager$IListener;->localMediaUpdated()V

    .line 154
    :cond_0
    return-void
.end method

.method public requestMediasInfos(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;II)V
    .locals 29
    .param p1, "run"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v23, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;-><init>(Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;)V

    .line 302
    .local v23, "holder":Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "runUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaInfos:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/core/academy/MediaManager;->mMediaInfos:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v23

    iput-object v8, v0, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;->result:Ljava/lang/Object;

    .line 307
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/core/academy/MediaManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/core/academy/MediaManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v9, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 377
    :goto_0
    return-void

    .line 313
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/core/academy/MediaManager;->mDownloadThumbnailsTasks:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 314
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/core/academy/MediaManager;->mDownloadThumbnailsTasks:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->addListener(Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;)V

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v28

    .line 319
    .local v28, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v22

    .line 320
    .local v22, "captures":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;>;"
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v26, "medias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v8

    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    .line 322
    .local v7, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v14

    .line 325
    .local v14, "date":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/core/academy/MediaManager;->executeLocalUpdate()V

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/core/academy/MediaManager;->getLocalMedias()Ljava/util/Map;

    move-result-object v24

    .line 328
    .local v24, "localMedias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    if-nez v24, :cond_2

    .line 329
    sget-object v8, Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;->ARMEDIA_ERROR_MANAGER:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    move-object/from16 v0, v23

    iput-object v8, v0, Lcom/parrot/freeflight/core/academy/MediaManager$HandlerHolder;->error:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    .line 330
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/core/academy/MediaManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/core/academy/MediaManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v9, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 333
    :cond_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 334
    .local v4, "mediaAbsolutePath":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 335
    .local v25, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-virtual/range {v25 .. v25}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getUUID()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "mediaUuid":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getName()Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "mediaName":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 339
    new-instance v2, Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-virtual/range {v25 .. v25}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getMediaType()Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-result-object v9

    sget-object v11, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    if-ne v9, v11, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-direct/range {v2 .. v9}, Lcom/parrot/freeflight/core/academy/MediaInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Z)V

    .line 340
    .local v2, "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isLocal:Z

    .line 341
    move-object/from16 v0, v26

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 339
    .end local v2    # "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 347
    .end local v3    # "mediaUuid":Ljava/lang/String;
    .end local v4    # "mediaAbsolutePath":Ljava/lang/String;
    .end local v6    # "mediaName":Ljava/lang/String;
    .end local v25    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_5
    if-eqz v28, :cond_7

    .line 348
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    .line 349
    .local v27, "video":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    invoke-virtual/range {v27 .. v27}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getFilename()Ljava/lang/String;

    move-result-object v12

    .line 350
    .local v12, "filename":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 351
    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/core/academy/MediaInfos;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    goto :goto_3

    .line 353
    :cond_6
    new-instance v2, Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-virtual/range {v27 .. v27}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v27 .. v27}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x1

    move-object v8, v2

    move-object v11, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/parrot/freeflight/core/academy/MediaInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Z)V

    .line 354
    .restart local v2    # "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    .line 355
    move-object/from16 v0, v26

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 361
    .end local v2    # "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v27    # "video":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    :cond_7
    if-eqz v22, :cond_9

    .line 362
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;

    .line 363
    .local v21, "capture":Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;
    invoke-virtual/range {v21 .. v21}, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;->getFilename()Ljava/lang/String;

    move-result-object v12

    .line 364
    .restart local v12    # "filename":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 365
    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/core/academy/MediaInfos;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    goto :goto_4

    .line 367
    :cond_8
    new-instance v2, Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;->getUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    move-object v8, v2

    move-object v11, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/parrot/freeflight/core/academy/MediaInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Z)V

    .line 368
    .restart local v2    # "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    .line 369
    move-object/from16 v0, v26

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 374
    .end local v2    # "media":Lcom/parrot/freeflight/core/academy/MediaInfos;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v21    # "capture":Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;
    :cond_9
    new-instance v15, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;

    move-object/from16 v16, p0

    move/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, v5

    move-object/from16 v20, p2

    invoke-direct/range {v15 .. v20}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;-><init>(Lcom/parrot/freeflight/core/academy/MediaManager;IILjava/lang/String;Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;)V

    .line 375
    .local v15, "task":Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/core/academy/MediaManager;->mDownloadThumbnailsTasks:Ljava/util/Map;

    invoke-interface {v8, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/util/List;

    const/4 v10, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v11, v9, v10

    invoke-virtual {v15, v8, v9}, Lcom/parrot/freeflight/core/academy/MediaManager$DownloadThumbnailsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public unregisterListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/MediaManager$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method
