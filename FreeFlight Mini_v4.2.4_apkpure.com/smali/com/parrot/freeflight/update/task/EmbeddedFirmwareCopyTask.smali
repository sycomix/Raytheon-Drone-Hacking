.class public Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;
.super Landroid/os/AsyncTask;
.source "EmbeddedFirmwareCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMBEDDED_FIRMWARE_SHARED_PREF_NAME:Ljava/lang/String; = "embedded_firmware"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final TAG:Ljava/lang/String; = "EmbeddedFirmwareCopy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOnCompletionListenerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 48
    const-string v0, "embedded_firmware"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 49
    return-void
.end method

.method private checkAndCopyPlfIfNeeded(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 15
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "sdkPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "firmwareFolder"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "forceCopy"    # Z

    .prologue
    .line 91
    new-instance v2, Ljava/io/File;

    const-string v12, "plfFolder"

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v2, "copiedPlfFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 94
    .local v1, "copiedEmbeddedFirmwares":[Ljava/io/File;
    if-nez p5, :cond_0

    if-eqz v1, :cond_0

    array-length v12, v1

    if-nez v12, :cond_2

    .line 95
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->getAvailablePlf(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 97
    .local v4, "mAvailablePlfs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 99
    .local v7, "plfFullPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v5, "plfFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v8, "plfProductFolder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 102
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v8, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .end local v5    # "plfFile":Ljava/io/File;
    .local v6, "plfFile":Ljava/io/File;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v7, v6}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->writePlfFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V

    .line 104
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 105
    .local v10, "productId":I
    invoke-static {v10}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v9

    .line 106
    .local v9, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->readPlfVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 107
    .local v11, "version":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 108
    invoke-direct {p0, v9, v11}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->saveEmbeddedVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)V

    .line 110
    :cond_1
    move-object/from16 v0, p3

    invoke-direct {p0, v9, v0, v6}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->copyPlfIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 114
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "mAvailablePlfs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "plfFile":Ljava/io/File;
    .end local v7    # "plfFullPath":Ljava/lang/String;
    .end local v8    # "plfProductFolder":Ljava/io/File;
    .end local v9    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v10    # "productId":I
    .end local v11    # "version":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static clearFolderFiles(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 227
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "children":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 230
    .local v0, "child":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "child":Ljava/lang/String;
    .end local v1    # "children":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private copyPlfIfNeeded(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sdkFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "plfFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->readPlfVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "version":Ljava/lang/String;
    invoke-static {p1, p2, v1}, Lcom/parrot/freeflight/update/task/PlfChecker;->compareDownloadedPlfToVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;

    move-result-object v2

    .line 150
    .local v2, "versionInfo":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "plfFolder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 152
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "outFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 154
    invoke-static {v0}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->clearFolderFiles(Ljava/io/File;)V

    .line 155
    invoke-direct {p0, p3, v0}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->writeFile(Ljava/io/File;Ljava/io/File;)V

    .line 157
    .end local v0    # "outFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private getAvailablePlf(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v1, "mAvailablePlfs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "plfFolders":[Ljava/lang/String;
    array-length v10, v3

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v4, v3, v9

    .line 122
    .local v4, "subfolder":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "subfolderPath":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "subfolderFiles":[Ljava/lang/String;
    array-length v7, v5

    if-lez v7, :cond_0

    .line 125
    array-length v11, v5

    move v7, v8

    :goto_1
    if-ge v7, v11, :cond_0

    aget-object v2, v5, v7

    .line 126
    .local v2, "plf":Ljava/lang/String;
    const-string v12, ".plf"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2    # "plf":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 125
    .restart local v2    # "plf":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 133
    .end local v2    # "plf":Ljava/lang/String;
    .end local v3    # "plfFolders":[Ljava/lang/String;
    .end local v4    # "subfolder":Ljava/lang/String;
    .end local v5    # "subfolderFiles":[Ljava/lang/String;
    .end local v6    # "subfolderPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-object v1
.end method

.method private saveEmbeddedVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)V
    .locals 5
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    invoke-static {p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "versionSharedPrefName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 142
    iget-object v2, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    const-string v3, "embedded_firmware"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private writeFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .param p1, "inputFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destDirFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    const/4 v3, 0x0

    .line 191
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 193
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v6, "os":Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 197
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "byteRead":I
    if-lez v1, :cond_2

    .line 198
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 200
    .end local v0    # "buffer":[B
    .end local v1    # "byteRead":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .line 201
    .end local v4    # "is":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    if-eqz v5, :cond_0

    .line 205
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 206
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 210
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 212
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 217
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-void

    .line 203
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteRead":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_2
    if-eqz v6, :cond_3

    .line 205
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 206
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 210
    :cond_3
    :goto_4
    if-eqz v4, :cond_6

    .line 212
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .line 214
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 213
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .line 214
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 203
    .end local v0    # "buffer":[B
    .end local v1    # "byteRead":I
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v5, :cond_4

    .line 205
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 206
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 210
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 212
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 214
    :cond_5
    :goto_7
    throw v7

    .line 213
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_7

    .line 207
    :catch_4
    move-exception v8

    goto :goto_6

    .line 203
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 207
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    goto :goto_2

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    goto :goto_1

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 207
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteRead":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_8
    move-exception v7

    goto :goto_4

    :cond_6
    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private writePlfFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "plfFullPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "plfFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    const/4 v3, 0x0

    .line 161
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 163
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 164
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 167
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "byteRead":I
    if-lez v1, :cond_2

    .line 168
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 170
    .end local v0    # "buffer":[B
    .end local v1    # "byteRead":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 171
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    if-eqz v4, :cond_0

    .line 175
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 176
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 180
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 182
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-void

    .line 173
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteRead":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    :cond_2
    if-eqz v5, :cond_3

    .line 175
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 176
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 180
    :cond_3
    :goto_4
    if-eqz v3, :cond_6

    .line 182
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v4, v5

    .line 184
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 183
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .line 184
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 173
    .end local v0    # "buffer":[B
    .end local v1    # "byteRead":I
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v4, :cond_4

    .line 175
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 176
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 180
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 182
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 184
    :cond_5
    :goto_7
    throw v6

    .line 183
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_7

    .line 177
    :catch_4
    move-exception v7

    goto :goto_6

    .line 173
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_5

    .line 177
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    goto :goto_2

    .line 170
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    goto :goto_1

    .line 177
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteRead":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_7
    move-exception v6

    goto :goto_4

    :cond_6
    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "app_version"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 64
    .local v8, "savedAppVersion":I
    const/4 v6, 0x0

    .line 66
    .local v6, "currentAppVersion":I
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    if-eq v6, v8, :cond_0

    const/4 v5, 0x1

    .line 72
    .local v5, "versionUpdated":Z
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 74
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const-string v2, "embedded_firmware"

    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getEmbeddedFirmwareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    move-object v0, p0

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->checkAndCopyPlfIfNeeded(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 77
    const-string v2, "embedded_trampoline_firmware"

    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkTrampolineFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getEmbeddedTrampolineFirmwareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    move-object v0, p0

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->checkAndCopyPlfIfNeeded(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 81
    if-eqz v5, :cond_1

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "app_version"

    .line 83
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 67
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "versionUpdated":Z
    :catch_0
    move-exception v7

    .line 68
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;->onComplete()V

    .line 224
    :cond_0
    return-void
.end method

.method public removeOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    if-ne v0, p1, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    .line 59
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask;->mOnCompletionListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    .line 53
    return-void
.end method
