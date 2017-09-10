.class public final enum Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;
.super Ljava/lang/Enum;
.source "ARDiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eARDISCOVERY_SERVICE_EVENT_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

.field public static final enum ARDISCOVERY_SERVICE_EVENT_STATUS_ADD:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

.field public static final enum ARDISCOVERY_SERVICE_EVENT_STATUS_REMOVED:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

.field public static final enum ARDISCOVERY_SERVICE_EVENT_STATUS_RESOLVED:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    const-string v1, "ARDISCOVERY_SERVICE_EVENT_STATUS_ADD"

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->ARDISCOVERY_SERVICE_EVENT_STATUS_ADD:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    .line 70
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    const-string v1, "ARDISCOVERY_SERVICE_EVENT_STATUS_REMOVED"

    invoke-direct {v0, v1, v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->ARDISCOVERY_SERVICE_EVENT_STATUS_REMOVED:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    .line 71
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    const-string v1, "ARDISCOVERY_SERVICE_EVENT_STATUS_RESOLVED"

    invoke-direct {v0, v1, v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->ARDISCOVERY_SERVICE_EVENT_STATUS_RESOLVED:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->ARDISCOVERY_SERVICE_EVENT_STATUS_ADD:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->ARDISCOVERY_SERVICE_EVENT_STATUS_REMOVED:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->ARDISCOVERY_SERVICE_EVENT_STATUS_RESOLVED:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->$VALUES:[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->$VALUES:[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;

    return-object v0
.end method
