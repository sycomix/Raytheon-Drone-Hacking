.class public Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;
.super Ljava/lang/Object;
.source "ARSkyControllerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;,
        Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;
    }
.end annotation


# static fields
.field private static final CHAN_LIST:Ljava/lang/String; = "/data/skycontroller/chan_list"

.field private static final COUNTRY_LOCK_PROPERTY:Ljava/lang/String; = "persist.countrylock"

.field private static final HAS_SCREEN_PROPERTY:Ljava/lang/String; = "hw.external_screen"

.field private static final KEEP_RUNNING:Ljava/lang/String; = "KEEP_FF_RUNNING"

.field private static PROBLEMATIC_COUNTRIES:[Ljava/lang/String; = null

.field private static final PRODUCT_ID_PROPERTY:Ljava/lang/String; = "persist.productid"

.field private static final SET_WIFI_SETTINGS_DELAY:I = 0x1388

.field private static final SK_TYPE_PROPERTY:Ljava/lang/String; = "persist.sky_type"

.field private static final SOFTWARE_V_PROPERTY:Ljava/lang/String; = "persist.swversion"

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_BEBOP:I = 0x1

.field public static final TYPE_BEBOP2:I = 0x2

.field public static final TYPE_UNKNOWN:I = 0x0

.field private static final WIFI_AP_BAND:Ljava/lang/String; = "WIFI_BAND"

.field private static final WIFI_AP_CHANNEL:Ljava/lang/String; = "WIFI_CHANNEL"

.field private static final WIFI_AP_SSID:Ljava/lang/String; = "WIFI_SSID"

.field private static final WIFI_COUNTRY:Ljava/lang/String; = "WIFI_COUNTRY"

.field public static final WIFI_DEFAULT_COUNTRY:Ljava/lang/String; = "US"

.field public static final WIFI_DEFAULT_VALUE:I = -0x1

.field private static final WIFI_DEFAULT_VALUE_STR:Ljava/lang/String; = "DEFAULT"

.field public static final WIFI_FALLBACK_VALUE:I = -0x2

.field private static final WIFI_FALLBACK_VALUE_STR:Ljava/lang/String; = "FALLBACK"

.field private static final WIFI_REQUEST_UPDATE_SETTINGS:Ljava/lang/String; = "WIFI_REQUEST_UPDATE_SETTINGS"

.field private static ZERO_COUNTRY:Ljava/lang/String;

.field private static getSystemProperty:Ljava/lang/reflect/Method;

.field private static setWifiSettingsHandler:Landroid/os/Handler;

.field private static final setWifiSettingsRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 18
    const-class v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    .line 43
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiSettingsHandler:Landroid/os/Handler;

    .line 44
    new-instance v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$1;

    invoke-direct {v2}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$1;-><init>()V

    sput-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiSettingsRunnable:Ljava/lang/Runnable;

    .line 397
    const/4 v2, 0x0

    sput-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getSystemProperty:Ljava/lang/reflect/Method;

    .line 403
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 404
    .local v0, "c":Ljava/lang/Class;
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getSystemProperty:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    const/16 v2, 0x1f

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AG"

    aput-object v3, v2, v6

    const-string v3, "BW"

    aput-object v3, v2, v7

    const-string v3, "CK"

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const-string v4, "CV"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "EH"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "FK"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "FO"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "GI"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "GG"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "IM"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "IO"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "IQ"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "JE"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "KI"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "LA"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "LR"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "MM"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "MS"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "MV"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "MZ"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "NA"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "NE"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "NU"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "SM"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "TF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "TZ"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "UM"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "VA"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "VG"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "WS"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "ZM"

    aput-object v4, v2, v3

    sput-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->PROBLEMATIC_COUNTRIES:[Ljava/lang/String;

    .line 559
    const-string v2, "00"

    sput-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->ZERO_COUNTRY:Ljava/lang/String;

    return-void

    .line 406
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get SystemProperties methods, getProp will fail"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->requestWifiSettingsApplication()Z

    move-result v0

    return v0
.end method

.method public static applyWifiSettings(Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)V
    .locals 4
    .param p0, "when"    # Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    .prologue
    .line 179
    if-nez p0, :cond_0

    sget-object p0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NONE:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    .line 181
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$2;->$SwitchMap$com$parrot$arsdk$arrouter$ARSkyControllerConfig$WifiSettingsApplication:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    :pswitch_0
    return-void

    .line 184
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiSettingsHandler:Landroid/os/Handler;

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiSettingsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->requestWifiSettingsApplication()Z

    goto :goto_0

    .line 188
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiSettingsHandler:Landroid/os/Handler;

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiSettingsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiSettingsHandler:Landroid/os/Handler;

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiSettingsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 195
    :pswitch_3
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiSettingsHandler:Landroid/os/Handler;

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setWifiSettingsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static channelBandStrFromInt(I)Ljava/lang/String;
    .locals 1
    .param p0, "chanOrBand"    # I

    .prologue
    .line 284
    packed-switch p0, :pswitch_data_0

    .line 293
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 287
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_0
    const-string v0, "DEFAULT"

    .line 288
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 290
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_1
    const-string v0, "FALLBACK"

    .line 291
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAPSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    const-string v0, "WIFI_SSID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 76
    move-object v4, p1

    .line 79
    .local v4, "res":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SCConfig get "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 81
    .local v3, "p":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 82
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 84
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/Process;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    const-string v7, "getConfig error : "

    invoke-static {v6, v7, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 88
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "p":Ljava/lang/Process;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method private static getCountryLock()Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    const-string v0, "persist.countrylock"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    const-string v0, "persist.productid"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 435
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 417
    move-object v2, p1

    .line 420
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getSystemProperty:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-object v2

    .line 422
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    const-string v4, "getProp failed with error"

    invoke-static {v3, v4, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    const-string v0, "persist.swversion"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType()I
    .locals 5

    .prologue
    .line 353
    const-string v2, "persist.sky_type"

    const-string v3, "bebop"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "val":Ljava/lang/String;
    const/4 v0, 0x0

    .line 355
    .local v0, "ret":I
    const-string v2, "bebop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    const/4 v0, 0x1

    .line 363
    :cond_0
    :goto_0
    sget-object v2, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return v0

    .line 359
    :cond_1
    const-string v2, "milos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getWifiAPBand()I
    .locals 1

    .prologue
    .line 324
    const-string v0, "WIFI_BAND"

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getWifiConfigInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getWifiAPChannel()I
    .locals 1

    .prologue
    .line 278
    const-string v0, "WIFI_CHANNEL"

    invoke-static {v0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getWifiConfigInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getWifiAuthChannelList()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    sget-object v14, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    const-string v15, "getWifiAuthChannelList"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;>;"
    new-instance v6, Ljava/io/File;

    const-string v14, "/data/skycontroller/chan_list"

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v6, "f":Ljava/io/File;
    const/4 v7, 0x0

    .line 461
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 467
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_0
    if-eqz v7, :cond_1

    .line 468
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 469
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 472
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "receiveString":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 473
    sget-object v14, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "string = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 475
    .local v12, "parts":[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 476
    .local v0, "band":I
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    move-result-object v3

    .line 477
    .local v3, "currentBand":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    const/4 v14, 0x2

    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 478
    .local v2, "channel":I
    const/4 v9, 0x0

    .line 479
    .local v9, "in_or_out":B
    new-instance v5, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;

    int-to-byte v14, v2

    invoke-direct {v5, v3, v14, v9}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;-><init>(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;BB)V

    .line 480
    .local v5, "elt":Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v14, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWifiAuthChannelList "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 483
    .end local v0    # "band":I
    .end local v2    # "channel":I
    .end local v3    # "currentBand":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .end local v5    # "elt":Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiAuthChannel;
    .end local v9    # "in_or_out":B
    .end local v12    # "parts":[Ljava/lang/String;
    .end local v13    # "receiveString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 484
    .local v4, "e":Ljava/io/IOException;
    sget-object v14, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    const-string v15, "IOException"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 488
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 495
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_1
    :goto_2
    return-object v11

    .line 462
    :catch_1
    move-exception v4

    .line 463
    .local v4, "e":Ljava/io/FileNotFoundException;
    sget-object v14, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    const-string v15, "FileNotFoundException"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 489
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v4

    .line 490
    .local v4, "e":Ljava/io/IOException;
    sget-object v14, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    const-string v15, "close IOException"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static getWifiConfigInt(Ljava/lang/String;)I
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 500
    const-string v3, ""

    invoke-static {p0, v3}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, -0x1

    .line 504
    .local v2, "res":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 510
    :goto_0
    return v2

    .line 506
    :catch_0
    move-exception v0

    .line 508
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWifiConfigInt conversion failed for key <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> and string <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hasScreen()Z
    .locals 3

    .prologue
    .line 391
    const-string v1, "hw.external_screen"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "val":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isProblematicCountry(Ljava/lang/String;)Z
    .locals 2
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 549
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->PROBLEMATIC_COUNTRIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 551
    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->PROBLEMATIC_COUNTRIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    const/4 v1, 0x1

    .line 556
    :goto_1
    return v1

    .line 549
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static removeConfig(Ljava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 153
    .local v2, "res":Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCConfig remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 154
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    const/4 v2, 0x1

    .line 161
    .end local v1    # "p":Ljava/lang/Process;
    :goto_0
    return v2

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    const-string v4, "removeConfig error : "

    invoke-static {v3, v4, v0}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static requestWifiSettingsApplication()Z
    .locals 2

    .prologue
    .line 233
    const-string v0, "WIFI_REQUEST_UPDATE_SETTINGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setAPSSID(Ljava/lang/String;)Z
    .locals 2
    .param p0, "theSSID"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v1, "WIFI_SSID"

    invoke-static {v1, p0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 269
    .local v0, "ret":Z
    return v0
.end method

.method public static setAutoRestart(Z)Z
    .locals 2
    .param p0, "restartMe"    # Z

    .prologue
    .line 245
    const-string v1, "KEEP_FF_RUNNING"

    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static setConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 131
    .local v2, "res":Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCConfig set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 132
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/4 v2, 0x1

    .line 139
    .end local v1    # "p":Ljava/lang/Process;
    :goto_0
    return v2

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    const-string v4, "setConfig error : "

    invoke-static {v3, v4, v0}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setWifiAPBand(ILcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)Z
    .locals 3
    .param p0, "band"    # I
    .param p1, "when"    # Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    .prologue
    .line 336
    invoke-static {p0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->channelBandStrFromInt(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "bd":Ljava/lang/String;
    const-string v2, "WIFI_BAND"

    invoke-static {v2, v0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 338
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 340
    invoke-static {p1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->applyWifiSettings(Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)V

    .line 342
    :cond_0
    return v1
.end method

.method public static setWifiAPChannel(ILcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)Z
    .locals 3
    .param p0, "channel"    # I
    .param p1, "when"    # Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    .prologue
    .line 309
    invoke-static {p0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->channelBandStrFromInt(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "chan":Ljava/lang/String;
    const-string v2, "WIFI_CHANNEL"

    invoke-static {v2, v0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 311
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 313
    invoke-static {p1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->applyWifiSettings(Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)V

    .line 315
    :cond_0
    return v1
.end method

.method public static setWifiCountry(Ljava/lang/String;Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)Z
    .locals 3
    .param p0, "countryCode"    # Ljava/lang/String;
    .param p1, "when"    # Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "ret":Z
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getCountryLock()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "countrylock":Ljava/lang/String;
    const-string/jumbo v2, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-static {p0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->isProblematicCountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    sget-object p0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->ZERO_COUNTRY:Ljava/lang/String;

    .line 216
    :cond_0
    const-string v2, "WIFI_COUNTRY"

    invoke-static {v2, p0}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->setConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 217
    if-eqz v1, :cond_1

    .line 219
    invoke-static {p1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->applyWifiSettings(Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;)V

    .line 222
    :cond_1
    return v1
.end method

.method public static sync()Z
    .locals 5

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 108
    .local v2, "res":Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "sync"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 109
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const/4 v2, 0x1

    .line 116
    .end local v1    # "p":Ljava/lang/Process;
    :goto_0
    return v2

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->TAG:Ljava/lang/String;

    const-string v4, "Sync error : "

    invoke-static {v3, v4, v0}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
