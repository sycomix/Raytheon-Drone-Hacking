.class public Lcom/parrot/freeflight/FFMiniApplication;
.super Lcom/parrot/freeflight/MainApplication;
.source "FFMiniApplication.java"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    :try_start_0
    const-string v1, "curl"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    const-string v1, "arsal"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    const-string v1, "arsal_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v1, "ulog"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    const-string v1, "pomp"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    const-string v1, "mux"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const-string v1, "mux_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    const-string v1, "arnetworkal"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    const-string v1, "arnetworkal_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    const-string v1, "arnetwork"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    const-string v1, "arnetwork_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    const-string v1, "arcommands"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const-string v1, "arcommands_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    const-string v1, "json"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    const-string v1, "ardiscovery"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    const-string v1, "ardiscovery_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    const-string v1, "armedia"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    const-string v1, "armedia_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-string v1, "arrouter_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const-string v1, "arutils"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    const-string v1, "arutils_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    const-string v1, "aracademy"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    const-string v1, "aracademy_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    const-string v1, "ardatatransfer"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    const-string v1, "ardatatransfer_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    const-string v1, "arupdater"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    const-string v1, "arupdater_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;->ARSAL_PRINT_VERBOSE:Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;

    invoke-static {v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->setMinimumLogLevel(Lcom/parrot/arsdk/arsal/ARSAL_PRINT_LEVEL_ENUM;)Z

    .line 59
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v3, 0x0

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_BRICK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->setSupportedProducts(Ljava/util/Set;)V

    .line 65
    return-void

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 52
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "FFMini"

    const-string v2, "Oops (LoadLibrary)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/parrot/freeflight/MainApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/parrot/freeflight/MainApplication;->onCreate()V

    .line 70
    const v0, 0x7f0806b5

    invoke-static {p0, v0}, Lcom/parrot/freeflight/google/Analytic;->initialize(Landroid/content/Context;I)V

    .line 71
    invoke-virtual {p0}, Lcom/parrot/freeflight/FFMiniApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080642

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/FFMiniApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crittercism/app/Crittercism;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    return-void
.end method
