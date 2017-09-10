.class public Lcom/parrot/freeflight/util/FirmwareVersionChecker;
.super Ljava/lang/Object;
.source "FirmwareVersionChecker.java"


# static fields
.field private static final DISCO_TRAMPOLINE_VERSION:Ljava/lang/String; = "1.0.5"

.field public static final LAST_SUCCESSFUL_VERSIONS_UPDATE:Ljava/lang/String; = "last_successful_versions_update"

.field private static final LOCAL_BLACKLISTED_FIRMWARES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_TRAMPOLINE_FIRMWARES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLF_EXTENSION:Ljava/lang/String; = ".plf"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_BEBOP:Ljava/lang/String; = "blacklisted_firmware_versions_bebop"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_BEBOP2:Ljava/lang/String; = "blacklisted_firmware_versions_bebop2"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_DELOS3:Ljava/lang/String; = "blacklisted_firmware_versions_delos3"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_EVINRUDE:Ljava/lang/String; = "blacklisted_firmware_versions_evinrude"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_RS:Ljava/lang/String; = "blacklisted_firmware_versions_rs"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_RS_BRICK:Ljava/lang/String; = "blacklisted_firmware_versions_rs_brick"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_RS_HYDROFOIL:Ljava/lang/String; = "blacklisted_firmware_versions_rs_hydrofoil"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_RS_LIGHT:Ljava/lang/String; = "blacklisted_firmware_versions_rs_light"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_SC:Ljava/lang/String; = "blacklisted_firmware_versions_sc"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_SC2:Ljava/lang/String; = "blacklisted_firmware_versions_sc2"

.field private static final SHARED_PREF_BLACKLISTED_FIRMWARE_VERSIONS_WINGX:Ljava/lang/String; = "blacklisted_firmware_versions_wingx"

.field private static final SHARED_PREF_FIRMWARE_VERSION_BEBOP:Ljava/lang/String; = "firmware_version_bebop"

.field private static final SHARED_PREF_FIRMWARE_VERSION_BEBOP2:Ljava/lang/String; = "firmware_version_bebop2"

.field private static final SHARED_PREF_FIRMWARE_VERSION_DELOS3:Ljava/lang/String; = "firmware_version_delos3"

.field private static final SHARED_PREF_FIRMWARE_VERSION_EVINRUDE:Ljava/lang/String; = "firmware_version_evinrude"

.field private static final SHARED_PREF_FIRMWARE_VERSION_RS:Ljava/lang/String; = "firmware_version_rs"

.field private static final SHARED_PREF_FIRMWARE_VERSION_RS_BRICK:Ljava/lang/String; = "firmware_version_rs_brick"

.field private static final SHARED_PREF_FIRMWARE_VERSION_RS_HYDROFOIL:Ljava/lang/String; = "firmware_version_rs_hydrofoil"

.field private static final SHARED_PREF_FIRMWARE_VERSION_RS_LIGHT:Ljava/lang/String; = "firmware_version_rs_light"

.field private static final SHARED_PREF_FIRMWARE_VERSION_SC:Ljava/lang/String; = "firmware_version_sc"

.field private static final SHARED_PREF_FIRMWARE_VERSION_SC2:Ljava/lang/String; = "firmware_version_sc2"

.field private static final SHARED_PREF_FIRMWARE_VERSION_WINGX:Ljava/lang/String; = "firmware_version_wingx"

.field public static final SHARED_PREF_NAME:Ljava/lang/String; = "firmware_checker"

.field private static final TAG:Ljava/lang/String; = "FirmwareVersionChecker"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->initLocalBlacklistedFirmwares()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->LOCAL_BLACKLISTED_FIRMWARES:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->initLocalTrampolineFirmwares()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->LOCAL_TRAMPOLINE_FIRMWARES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlacklistSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 2
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/parrot/freeflight/util/FirmwareVersionChecker$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    const-string v0, "blacklisted_firmware_versions_rs"

    goto :goto_0

    .line 112
    :pswitch_1
    const-string v0, "blacklisted_firmware_versions_rs_light"

    goto :goto_0

    .line 114
    :pswitch_2
    const-string v0, "blacklisted_firmware_versions_rs_brick"

    goto :goto_0

    .line 116
    :pswitch_3
    const-string v0, "blacklisted_firmware_versions_rs_hydrofoil"

    goto :goto_0

    .line 118
    :pswitch_4
    const-string v0, "blacklisted_firmware_versions_delos3"

    goto :goto_0

    .line 120
    :pswitch_5
    const-string v0, "blacklisted_firmware_versions_wingx"

    goto :goto_0

    .line 122
    :pswitch_6
    const-string v0, "blacklisted_firmware_versions_bebop"

    goto :goto_0

    .line 124
    :pswitch_7
    const-string v0, "blacklisted_firmware_versions_bebop2"

    goto :goto_0

    .line 126
    :pswitch_8
    const-string v0, "blacklisted_firmware_versions_evinrude"

    goto :goto_0

    .line 128
    :pswitch_9
    const-string v0, "blacklisted_firmware_versions_sc"

    goto :goto_0

    .line 130
    :pswitch_a
    const-string v0, "blacklisted_firmware_versions_sc2"

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getEmbeddedFirmwareVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 262
    const-string v1, "embedded_firmware"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 263
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEmbeddedFirmwareVersions(Landroid/content/Context;)Ljava/util/EnumMap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    const-string v1, "embedded_firmware"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareVersions(Landroid/content/SharedPreferences;)Ljava/util/EnumMap;

    move-result-object v1

    return-object v1
.end method

.method public static getFirmwareSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 2
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/parrot/freeflight/util/FirmwareVersionChecker$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    const-string v0, "firmware_version_rs"

    goto :goto_0

    .line 81
    :pswitch_1
    const-string v0, "firmware_version_rs_light"

    goto :goto_0

    .line 83
    :pswitch_2
    const-string v0, "firmware_version_rs_brick"

    goto :goto_0

    .line 85
    :pswitch_3
    const-string v0, "firmware_version_rs_hydrofoil"

    goto :goto_0

    .line 87
    :pswitch_4
    const-string v0, "firmware_version_delos3"

    goto :goto_0

    .line 89
    :pswitch_5
    const-string v0, "firmware_version_wingx"

    goto :goto_0

    .line 91
    :pswitch_6
    const-string v0, "firmware_version_bebop"

    goto :goto_0

    .line 93
    :pswitch_7
    const-string v0, "firmware_version_bebop2"

    goto :goto_0

    .line 95
    :pswitch_8
    const-string v0, "firmware_version_evinrude"

    goto :goto_0

    .line 97
    :pswitch_9
    const-string v0, "firmware_version_sc"

    goto :goto_0

    .line 99
    :pswitch_a
    const-string v0, "firmware_version_sc2"

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static getFirmwareVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 210
    sget-object v2, Lcom/parrot/freeflight/util/FirmwareVersionChecker$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 245
    const/4 v0, 0x0

    .line 248
    .local v0, "key":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 249
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    :cond_0
    return-object v1

    .line 212
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_0
    const-string v0, "firmware_version_rs"

    .line 213
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 215
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_1
    const-string v0, "firmware_version_rs_light"

    .line 216
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_2
    const-string v0, "firmware_version_rs_brick"

    .line 219
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 221
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_3
    const-string v0, "firmware_version_rs_hydrofoil"

    .line 222
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_4
    const-string v0, "firmware_version_delos3"

    .line 225
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_5
    const-string v0, "firmware_version_wingx"

    .line 228
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_6
    const-string v0, "firmware_version_bebop"

    .line 231
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 233
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_7
    const-string v0, "firmware_version_bebop2"

    .line 234
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 236
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_8
    const-string v0, "firmware_version_evinrude"

    .line 237
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 239
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_9
    const-string v0, "firmware_version_sc"

    .line 240
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_a
    const-string v0, "firmware_version_sc2"

    .line 243
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static getFirmwareVersions(Landroid/content/SharedPreferences;)Ljava/util/EnumMap;
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 178
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 180
    .local v0, "maps":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_rs"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_rs_light"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_BRICK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_rs_brick"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_rs_hydrofoil"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_delos3"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_wingx"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_bebop"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_bebop2"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_evinrude"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_sc"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "firmware_version_sc2"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-object v0
.end method

.method public static getServerFirmwareVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 256
    const-string v1, "firmware_checker"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 257
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getServerFirmwareVersions(Landroid/content/Context;)Ljava/util/EnumMap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const-string v1, "firmware_checker"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareVersions(Landroid/content/SharedPreferences;)Ljava/util/EnumMap;

    move-result-object v1

    return-object v1
.end method

.method public static getTrampolineVersion(Lcom/parrot/freeflight/update/task/DeviceVersion;)Lcom/parrot/freeflight/util/Version;
    .locals 3
    .param p0, "deviceVersion"    # Lcom/parrot/freeflight/update/task/DeviceVersion;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 268
    sget-object v1, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->LOCAL_TRAMPOLINE_FIRMWARES:Ljava/util/Map;

    iget-object v2, p0, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    .local v0, "stringVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 270
    new-instance v1, Lcom/parrot/freeflight/util/Version;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    .line 272
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initLocalBlacklistedFirmwares()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v0, "firmwares":Ljava/util/Map;, "Ljava/util/Map<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;[Ljava/lang/String;>;"
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0.9.1"

    aput-object v3, v2, v4

    const-string v3, "1.0.0"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "1.0.0"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "3.4.0"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0
.end method

.method private static initLocalTrampolineFirmwares()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, "firmwares":Ljava/util/Map;, "Ljava/util/Map<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v2, "1.0.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-object v0
.end method

.method public static isProductUpdateMandatory(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currentProductSoftwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 155
    const-string v7, "firmware_checker"

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 157
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getBlacklistSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "sharedPrefName":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v6

    .line 162
    :cond_1
    sget-object v7, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->LOCAL_BLACKLISTED_FIRMWARES:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 163
    .local v3, "localBlacklistedVersions":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 164
    .local v2, "localBlacklisted":Z
    if-eqz v3, :cond_2

    .line 165
    array-length v8, v3

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v1, v3, v7

    .line 166
    .local v1, "firm":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 167
    const/4 v2, 0x1

    .line 172
    .end local v1    # "firm":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 173
    .local v0, "blacklistedVersions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "blacklistedVersions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "firm":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static isTrampolineVersion(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z
    .locals 2
    .param p0, "stringVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 276
    sget-object v1, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->LOCAL_TRAMPOLINE_FIRMWARES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    .local v0, "trampolineVersion":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static shouldUpdateProduct(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currentProductSoftwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 138
    invoke-static {p0}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getEmbeddedFirmwareVersions(Landroid/content/Context;)Ljava/util/EnumMap;

    move-result-object v0

    .line 139
    .local v0, "embeddedFirmwareVersions":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getServerFirmwareVersions(Landroid/content/Context;)Ljava/util/EnumMap;

    move-result-object v3

    .line 140
    .local v3, "serverFirmwareVersions":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, "embeddedVersionString":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 142
    .local v5, "serverVersionString":Ljava/lang/String;
    const-string v8, "FirmwareVersionChecker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", in pref:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, "serverVersionGreater":Z
    const/4 v1, 0x0

    .line 145
    .local v1, "embeddedVersionGreater":Z
    if-eqz v2, :cond_0

    .line 146
    invoke-static {v2, p2}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->comparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    move v1, v6

    .line 148
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 149
    invoke-static {v5, p2}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->comparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_5

    move v4, v6

    .line 151
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v7, v6

    :cond_3
    return v7

    :cond_4
    move v1, v7

    .line 146
    goto :goto_0

    :cond_5
    move v4, v7

    .line 149
    goto :goto_1
.end method
