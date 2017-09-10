.class final enum Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;
.super Ljava/lang/Enum;
.source "ARDiscoveryDeviceService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "eARDISCOVERY_DEVICE_SERVICE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

.field public static final enum ARDISCOVERY_DEVICE_SERVICE_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

.field public static final enum ARDISCOVERY_DEVICE_SERVICE_TYPE_MAX:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

.field public static final enum ARDISCOVERY_DEVICE_SERVICE_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

.field public static final enum ARDISCOVERY_DEVICE_SERVICE_TYPE_USB:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    const-string v1, "ARDISCOVERY_DEVICE_SERVICE_TYPE_NET"

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    .line 265
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    const-string v1, "ARDISCOVERY_DEVICE_SERVICE_TYPE_BLE"

    invoke-direct {v0, v1, v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    .line 266
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    const-string v1, "ARDISCOVERY_DEVICE_SERVICE_TYPE_USB"

    invoke-direct {v0, v1, v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_USB:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    .line 267
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    const-string v1, "ARDISCOVERY_DEVICE_SERVICE_TYPE_MAX"

    invoke-direct {v0, v1, v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_MAX:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    .line 262
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_NET:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_BLE:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_USB:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ARDISCOVERY_DEVICE_SERVICE_TYPE_MAX:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->$VALUES:[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    .line 281
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE$1;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE$1;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 262
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->$VALUES:[Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService$eARDISCOVERY_DEVICE_SERVICE_TYPE;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    return-void
.end method
