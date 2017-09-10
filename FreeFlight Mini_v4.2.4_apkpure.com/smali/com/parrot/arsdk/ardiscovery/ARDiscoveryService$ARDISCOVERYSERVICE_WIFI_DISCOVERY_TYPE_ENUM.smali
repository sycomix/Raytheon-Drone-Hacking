.class public final enum Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;
.super Ljava/lang/Enum;
.source "ARDiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

.field public static final enum ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_JMDNS:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

.field public static final enum ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_MDSNSDMIN:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

.field public static final enum ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_NSD:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    const-string v1, "ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_JMDNS"

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_JMDNS:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    .line 79
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    const-string v1, "ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_NSD"

    invoke-direct {v0, v1, v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_NSD:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    .line 81
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    const-string v1, "ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_MDSNSDMIN"

    invoke-direct {v0, v1, v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_MDSNSDMIN:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_JMDNS:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_NSD:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_MDSNSDMIN:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->$VALUES:[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->$VALUES:[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    return-object v0
.end method
