.class public Lcom/parrot/arsdk/armedia/ARMediaManager;
.super Ljava/lang/Object;
.source "ARMediaManager.java"


# static fields
.field private static final ARMEDIA_MANAGER_DATABASE_FILENAME:Ljava/lang/String; = "ARMediaDB"

.field public static final ARMEDIA_MANAGER_JPG:Ljava/lang/String; = ".jpg"

.field public static final ARMEDIA_MANAGER_MOV:Ljava/lang/String; = ".mov"

.field public static final ARMEDIA_MANAGER_MP4:Ljava/lang/String; = ".mp4"

.field public static final ARMediaManagerNotificationDictionary:Ljava/lang/String; = "ARMediaManagerNotificationDictionary"

.field public static final ARMediaManagerNotificationDictionaryIsInitKey:Ljava/lang/String; = "ARMediaManagerNotificationDictionaryIsInitKey"

.field public static final ARMediaManagerNotificationDictionaryMediaAddedKey:Ljava/lang/String; = "ARMediaManagerNotificationDictionaryMediaAddedKey"

.field public static final ARMediaManagerNotificationDictionaryUpdatedKey:Ljava/lang/String; = "ARMediaManagerNotificationDictionaryUpdatedKey"

.field public static final ARMediaManagerNotificationDictionaryUpdatingKey:Ljava/lang/String; = "ARMediaManagerNotificationDictionaryUpdatingKey"

.field private static final ARMediaManagerObjectDate:Ljava/lang/String; = "ARMediaManagerObjectDate"

.field private static final ARMediaManagerObjectFilePath:Ljava/lang/String; = "ARMediaManagerObjectFilePath"

.field private static final ARMediaManagerObjectMediaType:Ljava/lang/String; = "ARMediaManagerObjectMediaType"

.field private static final ARMediaManagerObjectName:Ljava/lang/String; = "ARMediaManagerObjectName"

.field private static final ARMediaManagerObjectProduct:Ljava/lang/String; = "ARMediaManagerObjectProduct"

.field private static final ARMediaManagerObjectProductId:Ljava/lang/String; = "ARMediaManagerObjectProductId"

.field private static final ARMediaManagerObjectRunDate:Ljava/lang/String; = "ARMediaManagerObjectRunDate"

.field private static final ARMediaManagerObjectSize:Ljava/lang/String; = "ARMediaManagerObjectSize"

.field public static final ARMediaManagerPVATMediaDateKey:Ljava/lang/String; = "media_date"

.field public static final ARMediaManagerPVATProductIdKey:Ljava/lang/String; = "product_id"

.field public static final ARMediaManagerPVATRunDateKey:Ljava/lang/String; = "run_date"

.field public static final ARMediaManagerPVATuuidKey:Ljava/lang/String; = "uuid"

.field private static final ARMediaManagerProjectAssetURLKey:Ljava/lang/String; = "ARMediaManagerProjectAssetURLKey"

.field private static final ARMediaManagerProjectProductName:Ljava/lang/String; = "ARMediaManagerProjectProductName"

.field public static final DOWNLOADING_PREFIX:Ljava/lang/String; = "downloading_"

.field public static final LOCAL_MEDIA_MASS_STORAGE_PATH:Ljava/lang/String;

.field private static instance:Lcom/parrot/arsdk/armedia/ARMediaManager; = null

.field private static final kARMediaManagerKey:Ljava/lang/String; = "kARMediaManagerKey"

.field private static final kARMediaManagerProjectDicCount:Ljava/lang/String; = "kARMediaManagerProjectDicCount"


# instance fields
.field private TAG:Ljava/lang/String;

.field private contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;

.field private currentActivity:Landroid/app/Activity;

.field private isInit:Z

.field private isUpdate:Z

.field private projectsDictionary:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private valueKARMediaManagerKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->instance:Lcom/parrot/arsdk/armedia/ARMediaManager;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 116
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->LOCAL_MEDIA_MASS_STORAGE_PATH:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-class v0, Lcom/parrot/arsdk/armedia/ARMediaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    .line 144
    iput-boolean v1, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isInit:Z

    .line 145
    iput-boolean v1, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isUpdate:Z

    .line 153
    iput-object p1, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->context:Landroid/content/Context;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->contentResolver:Landroid/content/ContentResolver;

    .line 155
    iput-boolean v1, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isInit:Z

    .line 156
    iput-boolean v1, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isUpdate:Z

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    .line 158
    return-void
.end method

.method private addARMediaVideoToProjectDictionary(Ljava/lang/String;)V
    .locals 10
    .param p1, "mediaFileAbsolutPath"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, "mediaFilePath":Ljava/lang/String;
    invoke-static {p1}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->getPvat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "description":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 540
    const/4 v0, 0x0

    .line 543
    .local v0, "atomProductID":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 544
    .local v4, "jsonReader":Lorg/json/JSONObject;
    const-string v8, "product_id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 545
    const-string v8, "product_id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    :cond_0
    const/16 v8, 0x10

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v8

    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v7

    .line 547
    .local v7, "productName":Ljava/lang/String;
    iget-object v8, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 549
    iget-object v8, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    const-string v9, "product_id"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 550
    .local v3, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 552
    :cond_1
    invoke-direct {p0, v5, v4}, Lcom/parrot/arsdk/armedia/ARMediaManager;->createMediaObjectFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v6

    .line 553
    .local v6, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    if-eqz v6, :cond_2

    .line 555
    sget-object v8, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    iput-object v8, v6, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    .line 556
    iget-object v8, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v0    # "atomProductID":Ljava/lang/String;
    .end local v3    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "jsonReader":Lorg/json/JSONObject;
    .end local v6    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    .end local v7    # "productName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 561
    .restart local v0    # "atomProductID":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 563
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private addPhotoToProjectDictionary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "mediaFileAbsolutPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mediaFilePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 489
    const/4 v3, 0x0

    .line 491
    .local v3, "exifProductID":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 492
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 495
    :cond_0
    new-instance v2, Lcom/parrot/arsdk/armedia/Exif2Interface;

    invoke-direct {v2, p1}, Lcom/parrot/arsdk/armedia/Exif2Interface;-><init>(Ljava/lang/String;)V

    .line 496
    .local v2, "exif":Lcom/parrot/arsdk/armedia/Exif2Interface;
    sget-object v8, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->IMAGE_DESCRIPTION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    invoke-virtual {v2, v8}, Lcom/parrot/arsdk/armedia/Exif2Interface;->getAttribute(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "description":Ljava/lang/String;
    iget-object v8, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "image:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", desc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    if-eqz v0, :cond_2

    .line 501
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 503
    .local v5, "jsonReader":Lorg/json/JSONObject;
    const-string v8, "product_id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 504
    const-string v8, "product_id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 507
    :cond_1
    const/16 v8, 0x10

    invoke-static {v3, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v8

    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v7

    .line 509
    .local v7, "productName":Ljava/lang/String;
    iget-object v8, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "image product="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v8, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 514
    iget-object v8, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 515
    .local v4, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 516
    invoke-direct {p0, p2, v5}, Lcom/parrot/arsdk/armedia/ARMediaManager;->createMediaObjectFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v6

    .line 517
    .local v6, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    if-eqz v6, :cond_2

    .line 518
    sget-object v8, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_PHOTO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    iput-object v8, v6, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    .line 519
    iget-object v8, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add photo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v4, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    .end local v0    # "description":Ljava/lang/String;
    .end local v2    # "exif":Lcom/parrot/arsdk/armedia/Exif2Interface;
    .end local v4    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "jsonReader":Lorg/json/JSONObject;
    .end local v6    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    .end local v7    # "productName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 528
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 530
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private arMediaManagerNotificationMediaAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 598
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 599
    .local v1, "notificationBundle":Landroid/os/Bundle;
    const-string v2, "ARMediaManagerNotificationDictionaryMediaAddedKey"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v0, Landroid/content/Intent;

    const-string v2, "ARMediaManagerNotificationDictionary"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 604
    iget-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 605
    return-void
.end method

.method private arMediaManagerNotificationUpdating(D)V
    .locals 3
    .param p1, "percent"    # D

    .prologue
    .line 610
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 611
    .local v1, "notificationBundle":Landroid/os/Bundle;
    const-string v2, "ARMediaManagerNotificationDictionaryUpdatingKey"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 614
    new-instance v0, Landroid/content/Intent;

    const-string v2, "ARMediaManagerNotificationDictionary"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v0, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 616
    iget-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 617
    return-void
.end method

.method private createMediaObjectFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parrot/arsdk/armedia/ARMediaObject;
    .locals 4
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "jsonReader"    # Lorg/json/JSONObject;

    .prologue
    .line 570
    const/4 v1, 0x0

    .line 572
    .local v1, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    if-eqz p2, :cond_3

    .line 574
    new-instance v1, Lcom/parrot/arsdk/armedia/ARMediaObject;

    .end local v1    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-direct {v1}, Lcom/parrot/arsdk/armedia/ARMediaObject;-><init>()V

    .line 577
    .restart local v1    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :try_start_0
    const-string v2, "product_id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    .line 578
    iget-object v2, v1, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 579
    const-string v2, "media_date"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    const-string v2, "media_date"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    .line 581
    :cond_0
    const-string v2, "run_date"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    const-string v2, "run_date"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/arsdk/armedia/ARMediaObject;->runDate:Ljava/lang/String;

    .line 583
    :cond_1
    const-string/jumbo v2, "uuid"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    const-string/jumbo v2, "uuid"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    .line 585
    :cond_2
    iput-object p1, v1, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_3
    :goto_0
    return-object v1

    .line 587
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/armedia/ARMediaManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->instance:Lcom/parrot/arsdk/armedia/ARMediaManager;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/parrot/arsdk/armedia/ARMediaManager;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/armedia/ARMediaManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->instance:Lcom/parrot/arsdk/armedia/ARMediaManager;

    .line 100
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->instance:Lcom/parrot/arsdk/armedia/ARMediaManager;

    return-object v0
.end method

.method private isValidVideoFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 621
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".mov"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveMedia(Ljava/io/File;)Z
    .locals 20
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 375
    const/4 v2, 0x0

    .line 376
    .local v2, "added":Z
    const/4 v15, 0x0

    .line 378
    .local v15, "toAdd":Z
    const/4 v12, 0x0

    .line 379
    .local v12, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    const/4 v14, 0x0

    .line 380
    .local v14, "productName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 382
    .local v9, "exifProductID":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 384
    .local v10, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Save media:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v16, ".jpg"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 390
    :try_start_0
    new-instance v8, Lcom/parrot/arsdk/armedia/Exif2Interface;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lcom/parrot/arsdk/armedia/Exif2Interface;-><init>(Ljava/lang/String;)V

    .line 391
    .local v8, "exif":Lcom/parrot/arsdk/armedia/Exif2Interface;
    sget-object v16, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->IMAGE_DESCRIPTION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/parrot/arsdk/armedia/Exif2Interface;->getAttribute(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "image description:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    if-eqz v3, :cond_2

    .line 395
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    .local v11, "jsonReader":Lorg/json/JSONObject;
    const-string v16, "product_id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 397
    const-string v16, "product_id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 398
    :cond_0
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v14

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "new image product="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 402
    const-string v16, "product_id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 403
    .local v13, "productID":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/parrot/arsdk/armedia/ARMediaManager;->createMediaObjectFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v12

    .line 405
    if-eqz v12, :cond_1

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "new image path:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v16, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_PHOTO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    :cond_1
    const/4 v15, 0x1

    .line 465
    .end local v3    # "description":Ljava/lang/String;
    .end local v8    # "exif":Lcom/parrot/arsdk/armedia/Exif2Interface;
    .end local v11    # "jsonReader":Lorg/json/JSONObject;
    .end local v13    # "productID":I
    :cond_2
    :goto_0
    if-eqz v15, :cond_5

    .line 467
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/parrot/arsdk/armedia/ARMediaManager;->LOCAL_MEDIA_MASS_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "directory":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v6, "directoryFolder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_4

    .line 471
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 473
    :cond_4
    new-instance v4, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .local v4, "destination":Ljava/io/File;
    if-eqz v12, :cond_5

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/armedia/ARMediaManager;->arMediaManagerNotificationMediaAdded(Ljava/lang/String;)V

    .line 479
    const/4 v2, 0x1

    .line 483
    .end local v4    # "destination":Ljava/io/File;
    .end local v5    # "directory":Ljava/lang/String;
    .end local v6    # "directoryFolder":Ljava/io/File;
    :cond_5
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parrot/arsdk/armedia/ARMediaManager;->isUpdate:Z

    .line 484
    return v2

    .line 414
    :catch_0
    move-exception v7

    .line 416
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 418
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 420
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 424
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parrot/arsdk/armedia/ARMediaManager;->isValidVideoFile(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 426
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->getPvat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    .restart local v3    # "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "video description:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    if-eqz v3, :cond_2

    .line 432
    :try_start_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 433
    .restart local v11    # "jsonReader":Lorg/json/JSONObject;
    const-string v16, "product_id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 434
    const-string v16, "product_id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 435
    :cond_7
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v14

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "new video product="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 439
    const-string v16, "product_id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 440
    .restart local v13    # "productID":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/parrot/arsdk/armedia/ARMediaManager;->createMediaObjectFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v12

    .line 442
    if-eqz v12, :cond_8

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "new video path:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object v16, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 447
    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 450
    .end local v11    # "jsonReader":Lorg/json/JSONObject;
    .end local v13    # "productID":I
    :catch_2
    move-exception v7

    .line 452
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 454
    .end local v7    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v7

    .line 456
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 462
    .end local v3    # "description":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public addMedia(Ljava/io/File;)Z
    .locals 3
    .param p1, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, "returnVal":Z
    iget-boolean v2, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isUpdate:Z

    if-nez v2, :cond_0

    move v1, v0

    .line 359
    .end local v0    # "returnVal":Z
    .local v1, "returnVal":I
    :goto_0
    return v1

    .line 356
    .end local v1    # "returnVal":I
    .restart local v0    # "returnVal":Z
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isUpdate:Z

    .line 357
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/armedia/ARMediaManager;->saveMedia(Ljava/io/File;)Z

    move-result v0

    move v1, v0

    .line 359
    .restart local v1    # "returnVal":I
    goto :goto_0
.end method

.method public initWithProjectIDs(Ljava/util/ArrayList;)Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "projectIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;->ARMEDIA_OK:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    .line 163
    .local v3, "returnVal":Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;
    iget-boolean v4, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isInit:Z

    if-nez v4, :cond_2

    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 169
    iget-object v5, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "ARMediaManagerNotificationDictionaryIsInitKey"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v4, "ARMediaManagerNotificationDictionary"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 180
    iget-object v4, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 182
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isInit:Z

    .line 183
    sget-object v3, Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;->ARMEDIA_OK:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    .line 187
    .end local v0    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "notificationBundle":Landroid/os/Bundle;
    :cond_2
    return-object v3
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isUpdate:Z

    return v0
.end method

.method public retrieveProjectsDictionary(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p1, "project"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v1, "retProjectictionary":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 196
    iget-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    return-object v2
.end method

.method public update()Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;
    .locals 36

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "update MediaManager"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isInit:Z

    if-nez v4, :cond_0

    .line 213
    sget-object v4, Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;->ARMEDIA_ERROR_MANAGER_NOT_INITIALIZED:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    .line 346
    :goto_0
    return-object v4

    .line 215
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isUpdate:Z

    .line 216
    const/16 v34, 0x0

    .line 217
    .local v34, "totalMediaInFoldersCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 219
    .local v28, "key":Ljava/lang/String;
    const/16 v32, 0x0

    .line 220
    .local v32, "nbrOfFileInFolder":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/parrot/arsdk/armedia/ARMediaManager;->LOCAL_MEDIA_MASS_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 221
    .local v23, "directoryName":Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v22, "directory":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 225
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v0, v5

    move/from16 v32, v0

    .line 226
    add-int v34, v34, v32

    goto :goto_1

    .line 231
    .end local v22    # "directory":Ljava/io/File;
    .end local v23    # "directoryName":Ljava/lang/String;
    .end local v28    # "key":Ljava/lang/String;
    .end local v32    # "nbrOfFileInFolder":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->projectsDictionary:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 234
    .restart local v28    # "key":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "title"

    aput-object v5, v11, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v11, v4

    .line 235
    .local v11, "requestedColumnsImg":[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "title"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v6, v4

    .line 237
    .local v6, "requestedColumnsVideo":[Ljava/lang/String;
    const-string v7, "bucket_display_name =?"

    .line 238
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 240
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 242
    .local v20, "cursorVideoExterne":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    move-object v12, v7

    move-object v13, v8

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 244
    .local v17, "cursorPhotoExterne":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 246
    .local v21, "cursorVideoInterne":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    move-object v12, v7

    move-object v13, v8

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 248
    .local v18, "cursorPhotoInterne":Landroid/database/Cursor;
    new-instance v16, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 249
    .local v16, "cursorPhoto":Landroid/database/MergeCursor;
    new-instance v19, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    const/4 v5, 0x1

    aput-object v21, v4, v5

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 251
    .local v19, "cursorVideo":Landroid/database/MergeCursor;
    const/4 v15, 0x0

    .line 252
    .local v15, "currentCount":I
    int-to-double v4, v15

    move/from16 v0, v34

    int-to-double v12, v0

    div-double/2addr v4, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/parrot/arsdk/armedia/ARMediaManager;->arMediaManagerNotificationUpdating(D)V

    .line 256
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Landroid/database/MergeCursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_7

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No Photo files for album: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_2
    if-eqz v16, :cond_4

    .line 280
    invoke-virtual/range {v16 .. v16}, Landroid/database/MergeCursor;->close()V

    .line 286
    :cond_4
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Landroid/database/MergeCursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_a

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No Video for :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    :goto_3
    if-eqz v19, :cond_5

    .line 311
    invoke-virtual/range {v19 .. v19}, Landroid/database/MergeCursor;->close()V

    .line 315
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/parrot/arsdk/armedia/ARMediaManager;->LOCAL_MEDIA_MASS_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 316
    .restart local v23    # "directoryName":Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v22    # "directory":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v24

    .line 318
    .local v24, "fList":[Ljava/io/File;
    if-eqz v24, :cond_3

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    const-string v5, "Fetching files in DCIM folder"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, v24

    array-length v5, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_3

    aget-object v25, v24, v4

    .line 323
    .local v25, "file":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    .line 324
    .local v26, "filePath":Ljava/lang/String;
    const-string v9, "downloading_"

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/armedia/ARMediaManager;->isValidVideoFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 326
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adding video:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/armedia/ARMediaManager;->addARMediaVideoToProjectDictionary(Ljava/lang/String;)V

    .line 321
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 264
    .end local v22    # "directory":Ljava/io/File;
    .end local v23    # "directoryName":Ljava/lang/String;
    .end local v24    # "fList":[Ljava/io/File;
    .end local v25    # "file":Ljava/io/File;
    .end local v26    # "filePath":Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string v4, "_data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/database/MergeCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/database/MergeCursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 265
    .local v29, "mediaFileAbsolutPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 266
    .local v30, "mediaFilePath":Ljava/lang/String;
    const-string v4, ".jpg"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/armedia/ARMediaManager;->addPhotoToProjectDictionary(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_8
    add-int/lit8 v15, v15, 0x1

    .line 271
    int-to-double v4, v15

    move/from16 v0, v34

    int-to-double v12, v0

    div-double/2addr v4, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/parrot/arsdk/armedia/ARMediaManager;->arMediaManagerNotificationUpdating(D)V

    .line 273
    invoke-virtual/range {v16 .. v16}, Landroid/database/MergeCursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_2

    .line 278
    .end local v29    # "mediaFileAbsolutPath":Ljava/lang/String;
    .end local v30    # "mediaFilePath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_9

    .line 280
    invoke-virtual/range {v16 .. v16}, Landroid/database/MergeCursor;->close()V

    :cond_9
    throw v4

    .line 294
    :cond_a
    :try_start_3
    const-string v4, "_data"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/database/MergeCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/database/MergeCursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 295
    .restart local v29    # "mediaFileAbsolutPath":Ljava/lang/String;
    const-string/jumbo v4, "title"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/database/MergeCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/database/MergeCursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 296
    .local v31, "mediaName":Ljava/lang/String;
    const-string v4, "downloading_"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/armedia/ARMediaManager;->isValidVideoFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding video:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/armedia/ARMediaManager;->addARMediaVideoToProjectDictionary(Ljava/lang/String;)V

    .line 301
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 302
    int-to-double v4, v15

    move/from16 v0, v34

    int-to-double v12, v0

    div-double/2addr v4, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/parrot/arsdk/armedia/ARMediaManager;->arMediaManagerNotificationUpdating(D)V

    .line 304
    invoke-virtual/range {v19 .. v19}, Landroid/database/MergeCursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_3

    .line 309
    .end local v29    # "mediaFileAbsolutPath":Ljava/lang/String;
    .end local v31    # "mediaName":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v19, :cond_c

    .line 311
    invoke-virtual/range {v19 .. v19}, Landroid/database/MergeCursor;->close()V

    :cond_c
    throw v4

    .line 328
    .restart local v22    # "directory":Ljava/io/File;
    .restart local v23    # "directoryName":Ljava/lang/String;
    .restart local v24    # "fList":[Ljava/io/File;
    .restart local v25    # "file":Ljava/io/File;
    .restart local v26    # "filePath":Ljava/lang/String;
    :cond_d
    const-string v9, ".jpg"

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 329
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lcom/parrot/arsdk/armedia/ARMediaManager;->addPhotoToProjectDictionary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 337
    .end local v6    # "requestedColumnsVideo":[Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "requestedColumnsImg":[Ljava/lang/String;
    .end local v15    # "currentCount":I
    .end local v16    # "cursorPhoto":Landroid/database/MergeCursor;
    .end local v17    # "cursorPhotoExterne":Landroid/database/Cursor;
    .end local v18    # "cursorPhotoInterne":Landroid/database/Cursor;
    .end local v19    # "cursorVideo":Landroid/database/MergeCursor;
    .end local v20    # "cursorVideoExterne":Landroid/database/Cursor;
    .end local v21    # "cursorVideoInterne":Landroid/database/Cursor;
    .end local v22    # "directory":Ljava/io/File;
    .end local v23    # "directoryName":Ljava/lang/String;
    .end local v24    # "fList":[Ljava/io/File;
    .end local v25    # "file":Ljava/io/File;
    .end local v26    # "filePath":Ljava/lang/String;
    .end local v28    # "key":Ljava/lang/String;
    :cond_e
    new-instance v33, Landroid/os/Bundle;

    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v33, "notificationBundle":Landroid/os/Bundle;
    const-string v4, "ARMediaManagerNotificationDictionaryUpdatedKey"

    const/4 v5, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    new-instance v27, Landroid/content/Intent;

    const-string v4, "ARMediaManagerNotificationDictionary"

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v27, "intentDicChanged":Landroid/content/Intent;
    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 344
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/parrot/arsdk/armedia/ARMediaManager;->isUpdate:Z

    .line 346
    sget-object v4, Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;->ARMEDIA_OK:Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;

    goto/16 :goto_0
.end method
