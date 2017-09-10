.class public Lcom/parrot/freeflight/update/UpdateSyncable;
.super Ljava/lang/Object;
.source "UpdateSyncable.java"

# interfaces
.implements Lcom/parrot/freeflight/util/sync/ISyncable;


# static fields
.field private static final BLACKLIST_PHP_FILE:Ljava/lang/String; = "firmware_blacklist.php"

.field public static final BLACKLIST_UPDATED_INTENT_FILTER:Ljava/lang/String; = "com.parrot.freeflight3.blacklist_updated"

.field private static final DEFAULT_SERIALNO:Ljava/lang/String; = "0000"

.field private static final PARAM_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PARAM_PLATFORM:Ljava/lang/String; = "platform"

.field private static final PARAM_PLATFORM_NAME:Ljava/lang/String; = "Android"

.field private static final PARAM_PRODUCT:Ljava/lang/String; = "product"

.field private static final PARAM_SERIALNO:Ljava/lang/String; = "serialNo"

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final RESULT_ERROR_APP_VERSION_OUT_TO_DATE:Ljava/lang/String; = "3"

.field private static final RESULT_OK:Ljava/lang/String; = "0"

.field private static final RESULT_SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final RESULT_UPDATE:Ljava/lang/String; = "5"

.field private static final TAG:Ljava/lang/String; = "UpdateSyncable"

.field private static final UPDATE_DRONES_PATH:Ljava/lang/String; = "Drones"

.field private static final UPDATE_PHP_FILE:Ljava/lang/String; = "update.php"

.field private static final UPDATE_RETRY_DELAY_MILLIS:I = 0x1499700

.field private static final UPDATE_URL_AUTHORITY:Ljava/lang/String; = "download.parrot.com"

.field private static final UPDATE_URL_SCHEME:Ljava/lang/String; = "http"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBlacklistVersionsUrl()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "http"

    .line 124
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "download.parrot.com"

    .line 125
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "Drones"

    .line 126
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "firmware_blacklist.php"

    .line 127
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "platform"

    const-string v3, "Android"

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "appVersion"

    const-string v3, "4.2.4"

    .line 129
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 132
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBlacklistedVersions(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdateSyncable;->getBlacklistVersionsUrl()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "urlString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 101
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    .local v5, "url":Ljava/net/URL;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Lcom/parrot/freeflight/update/UpdateSyncable;->parseBlacklistVersions(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 104
    .local v1, "blacklistVersionsRetrieved":Z
    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.parrot.freeflight3.blacklist_updated"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "blacklistUpdatedIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .end local v0    # "blacklistUpdatedIntent":Landroid/content/Intent;
    :cond_0
    if-eqz v4, :cond_1

    .line 114
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    move-object v3, v4

    .line 110
    .end local v1    # "blacklistVersionsRetrieved":Z
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return v1

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    const/4 v1, 0x0

    .line 112
    if-eqz v3, :cond_2

    .line 114
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 115
    :catch_1
    move-exception v7

    goto :goto_1

    .line 112
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_3

    .line 114
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 116
    :cond_3
    :goto_4
    throw v7

    .line 115
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "blacklistVersionsRetrieved":Z
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_2
    move-exception v7

    goto :goto_0

    .end local v1    # "blacklistVersionsRetrieved":Z
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v8

    goto :goto_4

    .line 112
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 109
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private getLastVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z
    .locals 9
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 180
    invoke-static {p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "versionSharedPrefName":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v6

    .line 185
    :cond_1
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/update/UpdateSyncable;->getVersionUrl(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "urlString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 191
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 192
    .local v3, "url":Ljava/net/URL;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v5, v7}, Lcom/parrot/freeflight/update/UpdateSyncable;->parseVersion(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 197
    if-eqz v2, :cond_0

    .line 199
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v7

    goto :goto_0

    .line 194
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "url":Ljava/net/URL;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_0

    .line 199
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 200
    :catch_2
    move-exception v7

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_2

    .line 199
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 201
    :cond_2
    :goto_3
    throw v6

    .line 200
    :catch_3
    move-exception v7

    goto :goto_3

    .line 197
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 194
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getVersionUrl(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 6
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 208
    const-string v2, "%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "productId":Ljava/lang/String;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "http"

    .line 211
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "download.parrot.com"

    .line 212
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "Drones"

    .line 213
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "update.php"

    .line 215
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "product"

    .line 216
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "serialNo"

    const-string v4, "0000"

    .line 217
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "version"

    const-string v4, "0.0.0"

    .line 218
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v4, "Android"

    .line 219
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "appVersion"

    const-string v4, "4.2.4"

    .line 220
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseBlacklistVersions(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 16
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "line"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    if-nez p2, :cond_0

    .line 137
    const/4 v9, 0x0

    .line 176
    :goto_0
    return v9

    .line 139
    :cond_0
    const-string v13, "\\|"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, "version":[Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x2

    if-ge v13, v14, :cond_1

    .line 141
    const/4 v9, 0x0

    goto :goto_0

    .line 144
    :cond_1
    const/4 v9, 0x1

    .line 145
    .local v9, "returnValue":Z
    const/4 v13, 0x0

    aget-object v14, v12, v13

    const/4 v13, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v13, :pswitch_data_1

    .line 173
    const/4 v9, 0x0

    goto :goto_0

    .line 145
    :pswitch_0
    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x0

    goto :goto_1

    .line 148
    :pswitch_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v6, "jsonObject":Lorg/json/JSONObject;
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 150
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 151
    .local v5, "ids":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 152
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 153
    .local v8, "productId":Ljava/lang/String;
    const/16 v13, 0x10

    invoke-static {v8, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    .line 154
    .local v7, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-static {v7}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getBlacklistSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, "sharedPrefKey":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 160
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 161
    .local v11, "values":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 162
    .local v1, "blacklistedVersions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_4

    .line 163
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 165
    :cond_4
    invoke-interface {v3, v10, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 168
    .end local v1    # "blacklistedVersions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "i":I
    .end local v5    # "ids":Ljava/util/Iterator;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v8    # "productId":Ljava/lang/String;
    .end local v10    # "sharedPrefKey":Ljava/lang/String;
    .end local v11    # "values":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Lorg/json/JSONException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 167
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v5    # "ids":Ljava/util/Iterator;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private parseVersion(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "versionSharedPrefName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "line"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 227
    if-nez p3, :cond_0

    move v0, v2

    .line 250
    :goto_0
    :pswitch_0
    return v0

    .line 230
    :cond_0
    const-string v3, "\\|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "version":[Ljava/lang/String;
    array-length v3, v1

    if-ge v3, v4, :cond_1

    move v0, v2

    .line 232
    goto :goto_0

    .line 235
    :cond_1
    const/4 v0, 0x1

    .line 236
    .local v0, "returnValue":Z
    aget-object v5, v1, v2

    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_2
    :pswitch_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 247
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :pswitch_2
    const-string v4, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :pswitch_3
    const-string v2, "5"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_4
    const-string v2, "3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    .line 241
    :pswitch_5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doWork(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    const-string v2, "firmware_checker"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, v0, v2}, Lcom/parrot/freeflight/update/UpdateSyncable;->getLastVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v1

    .line 74
    .local v1, "updateOk":Z
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, v0, v2}, Lcom/parrot/freeflight/update/UpdateSyncable;->getLastVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 75
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_BRICK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, v0, v2}, Lcom/parrot/freeflight/update/UpdateSyncable;->getLastVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 76
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, v0, v2}, Lcom/parrot/freeflight/update/UpdateSyncable;->getLastVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 77
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, v0, v2}, Lcom/parrot/freeflight/update/UpdateSyncable;->getLastVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 78
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {p0, v0, v2}, Lcom/parrot/freeflight/update/UpdateSyncable;->getLastVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/update/UpdateSyncable;->getBlacklistedVersions(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 87
    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_successful_versions_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    :cond_0
    return v1
.end method

.method public onPerformSync(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v8, 0x0

    .line 56
    const-string v4, "firmware_checker"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "last_successful_versions_update"

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 60
    .local v2, "timeSinceLastUpdate":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    const-wide/32 v4, 0x1499700

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 68
    :goto_0
    return v1

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/update/UpdateSyncable;->doWork(Landroid/content/Context;)Z

    move-result v1

    .line 67
    .local v1, "updateOk":Z
    const-string v4, "UpdateSyncable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPerformSync result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
