.class public final enum Lcom/csr/btsmart/BtSmartRequest$RequestType;
.super Ljava/lang/Enum;
.source "BtSmartRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/btsmart/BtSmartRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/csr/btsmart/BtSmartRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/csr/btsmart/BtSmartRequest$RequestType;

.field public static final enum CHARACTERISTIC_INDICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

.field public static final enum CHARACTERISTIC_NOTIFICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

.field public static final enum READ_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

.field public static final enum READ_DESCRIPTOR:Lcom/csr/btsmart/BtSmartRequest$RequestType;

.field public static final enum READ_RSSI:Lcom/csr/btsmart/BtSmartRequest$RequestType;

.field public static final enum WRITE_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

.field public static final enum WRITE_DESCRIPTOR:Lcom/csr/btsmart/BtSmartRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const-string v1, "CHARACTERISTIC_NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lcom/csr/btsmart/BtSmartRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_NOTIFICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const-string v1, "CHARACTERISTIC_INDICATION"

    invoke-direct {v0, v1, v4}, Lcom/csr/btsmart/BtSmartRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_INDICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const-string v1, "READ_CHARACTERISTIC"

    invoke-direct {v0, v1, v5}, Lcom/csr/btsmart/BtSmartRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const-string v1, "READ_DESCRIPTOR"

    invoke-direct {v0, v1, v6}, Lcom/csr/btsmart/BtSmartRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_DESCRIPTOR:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const-string v1, "READ_RSSI"

    invoke-direct {v0, v1, v7}, Lcom/csr/btsmart/BtSmartRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_RSSI:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const-string v1, "WRITE_CHARACTERISTIC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/csr/btsmart/BtSmartRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;->WRITE_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    new-instance v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;

    const-string v1, "WRITE_DESCRIPTOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/csr/btsmart/BtSmartRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;->WRITE_DESCRIPTOR:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/csr/btsmart/BtSmartRequest$RequestType;

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_NOTIFICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->CHARACTERISTIC_INDICATION:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_DESCRIPTOR:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/csr/btsmart/BtSmartRequest$RequestType;->READ_RSSI:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/csr/btsmart/BtSmartRequest$RequestType;->WRITE_CHARACTERISTIC:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/csr/btsmart/BtSmartRequest$RequestType;->WRITE_DESCRIPTOR:Lcom/csr/btsmart/BtSmartRequest$RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;->$VALUES:[Lcom/csr/btsmart/BtSmartRequest$RequestType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/csr/btsmart/BtSmartRequest$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/csr/btsmart/BtSmartRequest$RequestType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/csr/btsmart/BtSmartRequest$RequestType;->$VALUES:[Lcom/csr/btsmart/BtSmartRequest$RequestType;

    invoke-virtual {v0}, [Lcom/csr/btsmart/BtSmartRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/csr/btsmart/BtSmartRequest$RequestType;

    return-object v0
.end method
