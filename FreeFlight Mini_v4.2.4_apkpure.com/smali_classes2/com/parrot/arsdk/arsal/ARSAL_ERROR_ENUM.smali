.class public final enum Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
.super Ljava/lang/Enum;
.source "ARSAL_ERROR_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_ALLOC:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_BLE_CHARACTERISTICS_DISCOVERING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_BLE_CHARACTERISTIC_CONFIGURING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_BLE_CONNECTION:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_BLE_DISCONNECTION:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_BLE_NO_DATA:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_BLE_SERVICES_DISCOVERING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_BLE_STACK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_BLE_TIMEOUT:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_FILE:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_MD5:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_ERROR_SYSTEM:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field public static final enum eARSAL_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final comment:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "eARSAL_ERROR_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->eARSAL_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_OK"

    const-string v2, "No error"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR"

    const/16 v2, -0x3e8

    const-string v3, "ARSAL Generic error"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_ALLOC"

    const/16 v2, -0x3e7

    const-string v3, "ARSAL alloc error"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_ALLOC:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_SYSTEM"

    const/16 v2, -0x3e6

    const-string v3, "ARSAL system error"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_SYSTEM:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_BAD_PARAMETER"

    const/4 v2, 0x5

    const/16 v3, -0x3e5

    const-string v4, "ARSAL bad parameter error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_FILE"

    const/4 v2, 0x6

    const/16 v3, -0x3e4

    const-string v4, "ARSAL file error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_FILE:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_MD5"

    const/4 v2, 0x7

    const/16 v3, -0x7d0

    const-string v4, "ARSAL md5 error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_MD5:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 61
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_BLE_CONNECTION"

    const/16 v2, 0x8

    const/16 v3, -0x1388

    const-string v4, "BLE connection generic error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CONNECTION:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 63
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_BLE_NOT_CONNECTED"

    const/16 v2, 0x9

    const/16 v3, -0x1387

    const-string v4, "BLE is not connected"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 65
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_BLE_DISCONNECTION"

    const/16 v2, 0xa

    const/16 v3, -0x1386

    const-string v4, "BLE disconnection error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_DISCONNECTION:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 67
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_BLE_SERVICES_DISCOVERING"

    const/16 v2, 0xb

    const/16 v3, -0x1385

    const-string v4, "BLE network services discovering error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_SERVICES_DISCOVERING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 69
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_BLE_CHARACTERISTICS_DISCOVERING"

    const/16 v2, 0xc

    const/16 v3, -0x1384

    const-string v4, "BLE network characteristics discovering error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CHARACTERISTICS_DISCOVERING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 71
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_BLE_CHARACTERISTIC_CONFIGURING"

    const/16 v2, 0xd

    const/16 v3, -0x1383

    const-string v4, "BLE network characteristic configuring error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CHARACTERISTIC_CONFIGURING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 73
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_BLE_STACK"

    const/16 v2, 0xe

    const/16 v3, -0x1382

    const-string v4, "BLE stack generic error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_STACK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 75
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_BLE_TIMEOUT"

    const/16 v2, 0xf

    const/16 v3, -0x1381

    const-string v4, "BLE timeout"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_TIMEOUT:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 77
    new-instance v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    const-string v1, "ARSAL_ERROR_BLE_NO_DATA"

    const/16 v2, 0x10

    const/16 v3, -0x1380

    const-string v4, "BLE no data"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NO_DATA:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 43
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->eARSAL_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_OK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_ALLOC:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_SYSTEM:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_FILE:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_MD5:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CONNECTION:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NOT_CONNECTED:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_DISCONNECTION:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_SERVICES_DISCOVERING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CHARACTERISTICS_DISCOVERING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_CHARACTERISTIC_CONFIGURING:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_STACK:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_TIMEOUT:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->ARSAL_ERROR_BLE_NO_DATA:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->$VALUES:[Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p3, p0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->value:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->value:I

    .line 90
    iput-object p4, p0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 107
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 108
    invoke-static {}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->values()[Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    move-result-object v2

    .line 109
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    .line 110
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 111
    .local v0, "entry":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "entry":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 115
    .local v1, "retVal":Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    if-nez v1, :cond_1

    .line 116
    sget-object v1, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->eARSAL_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    .line 118
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->$VALUES:[Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/parrot/arsdk/arsal/ARSAL_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
