.class public final enum Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
.super Ljava/lang/Enum;
.source "ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_0:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_10:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_11:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_12:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_13:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_14:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_15:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_3:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_4:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_5:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_6:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_7:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_8:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum APP_9:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum CAMERA_PAN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum CAMERA_TILT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum GAZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum ROLL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field public static final enum YAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;",
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

    .line 41
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "UNKNOWN"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 43
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_0"

    const-string v2, "Action handled by the application"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_0:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_1"

    const-string v2, "Action handled by the application"

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_2"

    const-string v2, "Action handled by the application"

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_3"

    const-string v2, "Action handled by the application"

    invoke-direct {v0, v1, v9, v8, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_3:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_4"

    const/4 v2, 0x5

    const-string v3, "Action handled by the application"

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_4:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_5"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_5:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_6"

    const/4 v2, 0x7

    const/4 v3, 0x6

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_6:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_7"

    const/16 v2, 0x8

    const/4 v3, 0x7

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_7:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_8"

    const/16 v2, 0x9

    const/16 v3, 0x8

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_8:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 61
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_9"

    const/16 v2, 0xa

    const/16 v3, 0x9

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_9:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 63
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_10"

    const/16 v2, 0xb

    const/16 v3, 0xa

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_10:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 65
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_11"

    const/16 v2, 0xc

    const/16 v3, 0xb

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_11:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 67
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_12"

    const/16 v2, 0xd

    const/16 v3, 0xc

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_12:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 69
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_13"

    const/16 v2, 0xe

    const/16 v3, 0xd

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_13:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 71
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_14"

    const/16 v2, 0xf

    const/16 v3, 0xe

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_14:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 73
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "APP_15"

    const/16 v2, 0x10

    const/16 v3, 0xf

    const-string v4, "Action handled by the application"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_15:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 75
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "ROLL"

    const/16 v2, 0x11

    const/16 v3, 0x10

    const-string v4, "roll"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->ROLL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 77
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "PITCH"

    const/16 v2, 0x12

    const/16 v3, 0x11

    const-string v4, "pitch"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 79
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "YAW"

    const/16 v2, 0x13

    const/16 v3, 0x12

    const-string/jumbo v4, "yaw"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->YAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 81
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "GAZ"

    const/16 v2, 0x14

    const/16 v3, 0x13

    const-string v4, "gaz"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->GAZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 83
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "CAMERA_PAN"

    const/16 v2, 0x15

    const/16 v3, 0x14

    const-string v4, "camera pan"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->CAMERA_PAN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 85
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    const-string v1, "CAMERA_TILT"

    const/16 v2, 0x16

    const/16 v3, 0x15

    const-string v4, "camera tilt"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->CAMERA_TILT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 39
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_0:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_3:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_4:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_5:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_6:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_7:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_8:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_9:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_10:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_11:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_12:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_13:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_14:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->APP_15:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->ROLL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->YAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->GAZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->CAMERA_PAN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->CAMERA_TILT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->value:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->comment:Ljava/lang/String;

    .line 95
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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->value:I

    .line 99
    iput-object p4, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->comment:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 116
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 117
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    move-result-object v2

    .line 118
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    .line 119
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 120
    .local v0, "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 124
    .local v1, "retVal":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
    if-nez v1, :cond_1

    .line 125
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    .line 127
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;->comment:Ljava/lang/String;

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
