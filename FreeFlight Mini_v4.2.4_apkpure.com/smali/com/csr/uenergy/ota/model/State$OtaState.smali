.class public final enum Lcom/csr/uenergy/ota/model/State$OtaState;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/uenergy/ota/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OtaState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/csr/uenergy/ota/model/State$OtaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_ABORT_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_GET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_IDLE:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_CONFIGURING_CCD:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_BT_ADDRES_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_CHALLENGE:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_DATABASE:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_ENCRPTION_APP_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_IDENTITY_ROOT_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_VERSION:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_XTAL_TRIM:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_READ_XTAL_TRIM_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_INIT_SET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_PAUSE_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_READ_CS_BLOCK_PENDING:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_RECONNECT_GATT:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_REFRESH_ATTRIBUTES:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_RESET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_SET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_SET_MODE:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_SET_TRANSFER_COMPLETE:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_SET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

.field public static final enum STATE_OTA_WRITE_RESPONSE:Lcom/csr/uenergy/ota/model/State$OtaState;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_IDLE"

    invoke-direct {v0, v1, v4, v4}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_IDLE:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 167
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_DATABASE"

    invoke-direct {v0, v1, v5, v5}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_DATABASE:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 171
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_VERSION"

    invoke-direct {v0, v1, v6, v6}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_VERSION:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 175
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_CONFIGURING_CCD"

    invoke-direct {v0, v1, v7, v7}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_CONFIGURING_CCD:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 179
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_BT_ADDRESS"

    invoke-direct {v0, v1, v8, v8}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 183
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_XTAL_TRIM"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 187
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_CHALLENGE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CHALLENGE:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 191
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_CURRENT_APP"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 195
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_SET_CURRENT_APP"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_SET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 199
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_DATA_TRANSFER"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 203
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_PAUSE_DATA_TRANSFER"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_PAUSE_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 207
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_RESET_TRANSFER_CTRL"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_RESET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 211
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_ABORT_DATA_TRANSFER"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_ABORT_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 215
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_SET_MODE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_MODE:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 219
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_SET_CURRENT_APP"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 223
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_GET_CURRENT_APP"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_GET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 227
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_WRITE_RESPONSE"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_WRITE_RESPONSE:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 231
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_SET_TRANSFER_CTRL"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 235
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_SET_TRANSFER_COMPLETE"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_COMPLETE:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 239
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_IDENTITY_ROOT"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 243
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_ENCRYPTION_ROOT"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 247
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_BT_ADDRES_FROM_BL"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRES_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 251
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_XTAL_TRIM_FROM_BL"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 255
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_IDENTITY_ROOT_FROM_BL"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 259
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_ENCRPTION_APP_FROM_BL"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRPTION_APP_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 263
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_INIT_READ_CS_BLOCK"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 267
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_READ_CS_BLOCK"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 271
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_READ_CS_BLOCK_PENDING"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_READ_CS_BLOCK_PENDING:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 275
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_REFRESH_ATTRIBUTES"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_REFRESH_ATTRIBUTES:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 279
    new-instance v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    const-string v1, "STATE_OTA_RECONNECT_GATT"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/csr/uenergy/ota/model/State$OtaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_RECONNECT_GATT:Lcom/csr/uenergy/ota/model/State$OtaState;

    .line 158
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/csr/uenergy/ota/model/State$OtaState;

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_IDLE:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_DATABASE:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_VERSION:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_CONFIGURING_CCD:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRESS:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CHALLENGE:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_SET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_PAUSE_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_RESET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_ABORT_DATA_TRANSFER:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_MODE:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_GET_CURRENT_APP:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_WRITE_RESPONSE:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_CTRL:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_SET_TRANSFER_COMPLETE:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRYPTION_ROOT:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_BT_ADDRES_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_XTAL_TRIM_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_IDENTITY_ROOT_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_ENCRPTION_APP_FROM_BL:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_INIT_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_READ_CS_BLOCK:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_READ_CS_BLOCK_PENDING:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_REFRESH_ATTRIBUTES:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/csr/uenergy/ota/model/State$OtaState;->STATE_OTA_RECONNECT_GATT:Lcom/csr/uenergy/ota/model/State$OtaState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->$VALUES:[Lcom/csr/uenergy/ota/model/State$OtaState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 289
    iput p3, p0, Lcom/csr/uenergy/ota/model/State$OtaState;->index:I

    .line 290
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/csr/uenergy/ota/model/State$OtaState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    const-class v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/csr/uenergy/ota/model/State$OtaState;

    return-object v0
.end method

.method public static values()[Lcom/csr/uenergy/ota/model/State$OtaState;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/csr/uenergy/ota/model/State$OtaState;->$VALUES:[Lcom/csr/uenergy/ota/model/State$OtaState;

    invoke-virtual {v0}, [Lcom/csr/uenergy/ota/model/State$OtaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/csr/uenergy/ota/model/State$OtaState;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/csr/uenergy/ota/model/State$OtaState;->index:I

    return v0
.end method
