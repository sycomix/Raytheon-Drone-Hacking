.class public final enum Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
.super Ljava/lang/Enum;
.source "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_BUZZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_DIESEL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_JETT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_MARSHALL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_TUKTUK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_BLAZE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_MARS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_MCLANE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_NEWZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_ORAK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_SWAT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_TRAVIS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_SW_BLACK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_SW_WHITE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field public static final enum eARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;",
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
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "eARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->eARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 43
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_TRAVIS"

    const-string v2, "Travis (RS taxi) model."

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_TRAVIS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_MARS"

    const-string v2, "Mars (RS space) model"

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_MARS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_SWAT"

    const-string v2, "SWAT (RS SWAT) model"

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_SWAT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_MCLANE"

    const-string v2, "Mc Lane (RS police) model"

    invoke-direct {v0, v1, v9, v8, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_MCLANE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_BLAZE"

    const/4 v2, 0x5

    const-string v3, "Blaze (RS fire) model"

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_BLAZE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_ORAK"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const-string v4, "Orak (RS carbon hydrofoil) model"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_ORAK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_NEWZ"

    const/4 v2, 0x7

    const/4 v3, 0x6

    const-string v4, "New Z (RS wooden hydrofoil) model"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_NEWZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_MARSHALL"

    const/16 v2, 0x8

    const/4 v3, 0x7

    const-string v4, "Marshall (JS fire) model"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_MARSHALL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_DIESEL"

    const/16 v2, 0x9

    const/16 v3, 0x8

    const-string v4, "Diesel (JS SWAT) model"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_DIESEL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 61
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_BUZZ"

    const/16 v2, 0xa

    const/16 v3, 0x9

    const-string v4, "Buzz (JS space) model"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_BUZZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 63
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_MAX"

    const/16 v2, 0xb

    const/16 v3, 0xa

    const-string v4, "Max (JS F1) model"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 65
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_JETT"

    const/16 v2, 0xc

    const/16 v3, 0xb

    const-string v4, "Jett (JS flames) model"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_JETT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 67
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_TUKTUK"

    const/16 v2, 0xd

    const/16 v3, 0xc

    const-string v4, "Tuk-Tuk (JS taxi) model"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_TUKTUK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 69
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_SW_BLACK"

    const/16 v2, 0xe

    const/16 v3, 0xd

    const-string v4, "Swing black model"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_SW_BLACK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 71
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_SW_WHITE"

    const/16 v2, 0xf

    const/16 v3, 0xe

    const-string v4, "Swing white model"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_SW_WHITE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 72
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_MAX"

    const/16 v2, 0x10

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->eARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_TRAVIS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_MARS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_SWAT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_MCLANE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_BLAZE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_ORAK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_NEWZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_MARSHALL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_DIESEL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_BUZZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_JETT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_JS_TUKTUK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_SW_BLACK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_SW_WHITE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->value:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->comment:Ljava/lang/String;

    .line 82
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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->value:I

    .line 86
    iput-object p4, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->comment:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 103
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 104
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    move-result-object v2

    .line 105
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->valuesList:Ljava/util/HashMap;

    .line 106
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 107
    .local v0, "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 111
    .local v1, "retVal":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    if-nez v1, :cond_1

    .line 112
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->eARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    .line 114
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->comment:Ljava/lang/String;

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
