.class synthetic Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$2;
.super Ljava/lang/Object;
.source "ARSkyControllerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$arrouter$ARSkyControllerConfig$WifiSettingsApplication:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->values()[Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$2;->$SwitchMap$com$parrot$arsdk$arrouter$ARSkyControllerConfig$WifiSettingsApplication:[I

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$2;->$SwitchMap$com$parrot$arsdk$arrouter$ARSkyControllerConfig$WifiSettingsApplication:[I

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NOW:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$2;->$SwitchMap$com$parrot$arsdk$arrouter$ARSkyControllerConfig$WifiSettingsApplication:[I

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->DELAYED:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$2;->$SwitchMap$com$parrot$arsdk$arrouter$ARSkyControllerConfig$WifiSettingsApplication:[I

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NONE:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$2;->$SwitchMap$com$parrot$arsdk$arrouter$ARSkyControllerConfig$WifiSettingsApplication:[I

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->CANCEL:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
