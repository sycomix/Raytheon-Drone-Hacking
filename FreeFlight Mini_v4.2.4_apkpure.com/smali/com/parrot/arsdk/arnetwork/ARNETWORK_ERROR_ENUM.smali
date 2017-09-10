.class public final enum Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
.super Ljava/lang/Enum;
.source "ARNETWORK_ERROR_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_ALLOC:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_BUFFER_EMPTY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_BUFFER_SIZE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_ID_UNKNOWN:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_IOBUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_IOBUFFER_BAD_ACK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_MANAGER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_MANAGER_NEW_IOBUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_MANAGER_NEW_RECEIVER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_MANAGER_NEW_SENDER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_MUTEX:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_MUTEX_DOUBLE_LOCK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_NEW_BUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_NEW_RINGBUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_RECEIVER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_RECEIVER_BAD_FRAME:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_RECEIVER_BUFFER_END:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_ERROR_SEMAPHORE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field public static final enum eARNETWORK_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;",
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
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "eARNETWORK_ERROR_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->eARNETWORK_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_OK"

    const-string v2, "No error"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR"

    const/16 v2, -0x3e8

    const-string v3, "Unknown generic error"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_ALLOC"

    const/16 v2, -0x3e7

    const-string v3, "Memory allocation error"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_ALLOC:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_BAD_PARAMETER"

    const/16 v2, -0x3e6

    const-string v3, "Bad parameters"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_ID_UNKNOWN"

    const/4 v2, 0x5

    const/16 v3, -0x3e5

    const-string v4, "Given IOBuffer identifier is unknown"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_ID_UNKNOWN:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_BUFFER_SIZE"

    const/4 v2, 0x6

    const/16 v3, -0x3e4

    const-string v4, "Insufficient free space in the buffer"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BUFFER_SIZE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_BUFFER_EMPTY"

    const/4 v2, 0x7

    const/16 v3, -0x3e3

    const-string v4, "Buffer is empty, nothing was read"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BUFFER_EMPTY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 61
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_SEMAPHORE"

    const/16 v2, 0x8

    const/16 v3, -0x3e2

    const-string v4, "Error when using a semaphore"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_SEMAPHORE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 63
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_MUTEX"

    const/16 v2, 0x9

    const/16 v3, -0x3e1

    const-string v4, "Error when using a mutex"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MUTEX:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 65
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_MUTEX_DOUBLE_LOCK"

    const/16 v2, 0xa

    const/16 v3, -0x3e0

    const-string v4, "A mutex is already locked by the same thread"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MUTEX_DOUBLE_LOCK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 67
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_MANAGER"

    const/16 v2, 0xb

    const/16 v3, -0x7d0

    const-string v4, "Unknown ARNETWORK_Manager error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MANAGER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 69
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_MANAGER_NEW_IOBUFFER"

    const/16 v2, 0xc

    const/16 v3, -0x7cf

    const-string v4, "IOBuffer creation error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MANAGER_NEW_IOBUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 71
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_MANAGER_NEW_SENDER"

    const/16 v2, 0xd

    const/16 v3, -0x7ce

    const-string v4, "Sender creation error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MANAGER_NEW_SENDER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 73
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_MANAGER_NEW_RECEIVER"

    const/16 v2, 0xe

    const/16 v3, -0x7cd

    const-string v4, "Receiver creation error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MANAGER_NEW_RECEIVER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 75
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_NEW_BUFFER"

    const/16 v2, 0xf

    const/16 v3, -0x7cc

    const-string v4, "Buffer creation error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_NEW_BUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 77
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_NEW_RINGBUFFER"

    const/16 v2, 0x10

    const/16 v3, -0x7cb

    const-string v4, "RingBuffer creation error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_NEW_RINGBUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 79
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_IOBUFFER"

    const/16 v2, 0x11

    const/16 v3, -0xbb8

    const-string v4, "Unknown IOBuffer error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_IOBUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 81
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_IOBUFFER_BAD_ACK"

    const/16 v2, 0x12

    const/16 v3, -0xbb7

    const-string v4, "Bad sequence number for the acknowledge"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_IOBUFFER_BAD_ACK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 83
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_RECEIVER"

    const/16 v2, 0x13

    const/16 v3, -0x1388

    const-string v4, "Unknown Receiver error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_RECEIVER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 85
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_RECEIVER_BUFFER_END"

    const/16 v2, 0x14

    const/16 v3, -0x1387

    const-string v4, "Receiver buffer too small"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_RECEIVER_BUFFER_END:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 87
    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    const-string v1, "ARNETWORK_ERROR_RECEIVER_BAD_FRAME"

    const/16 v2, 0x15

    const/16 v3, -0x1386

    const-string v4, "Bad frame content on network"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_RECEIVER_BAD_FRAME:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 43
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->eARNETWORK_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_ALLOC:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_ID_UNKNOWN:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BUFFER_SIZE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BUFFER_EMPTY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_SEMAPHORE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MUTEX:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MUTEX_DOUBLE_LOCK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MANAGER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MANAGER_NEW_IOBUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MANAGER_NEW_SENDER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_MANAGER_NEW_RECEIVER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_NEW_BUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_NEW_RINGBUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_IOBUFFER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_IOBUFFER_BAD_ACK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_RECEIVER:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_RECEIVER_BUFFER_END:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_RECEIVER_BAD_FRAME:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->$VALUES:[Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->value:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 96
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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->value:I

    .line 100
    iput-object p4, p0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 117
    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 118
    invoke-static {}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->values()[Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v2

    .line 119
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    .line 120
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 121
    .local v0, "entry":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "entry":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 125
    .local v1, "retVal":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    if-nez v1, :cond_1

    .line 126
    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->eARNETWORK_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 128
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->$VALUES:[Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
