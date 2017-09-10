.class final enum Lcom/parrot/freeflight3/update/McuUpdateManager$State;
.super Ljava/lang/Enum;
.source "McuUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/update/McuUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight3/update/McuUpdateManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field public static final enum CHECK_LSB_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field public static final enum CHECK_MSB_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field public static final enum DELAY_SEND_LENGTH_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field public static final enum ERROR:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field public static final enum IDLE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field public static final enum MAGIC_CODE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field public static final enum NOTIFICATION_ENABLED:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field public static final enum SEND_LENGTH_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field public static final enum START_OTA:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

.field public static final enum UPLOAD_FIRMWARE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->IDLE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 63
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    const-string v1, "START_OTA"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->START_OTA:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 64
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    const-string v1, "NOTIFICATION_ENABLED"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->NOTIFICATION_ENABLED:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 65
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    const-string v1, "MAGIC_CODE"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->MAGIC_CODE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 66
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    const-string v1, "DELAY_SEND_LENGTH_CRC"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->DELAY_SEND_LENGTH_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 67
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    const-string v1, "SEND_LENGTH_CRC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->SEND_LENGTH_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 68
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    const-string v1, "UPLOAD_FIRMWARE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->UPLOAD_FIRMWARE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 69
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    const-string v1, "CHECK_LSB_CRC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->CHECK_LSB_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 70
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    const-string v1, "CHECK_MSB_CRC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->CHECK_MSB_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 72
    new-instance v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    const-string v1, "ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight3/update/McuUpdateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->ERROR:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    sget-object v1, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->IDLE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->START_OTA:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->NOTIFICATION_ENABLED:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->MAGIC_CODE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->DELAY_SEND_LENGTH_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->SEND_LENGTH_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->UPLOAD_FIRMWARE:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->CHECK_LSB_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->CHECK_MSB_CRC:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->ERROR:Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->$VALUES:[Lcom/parrot/freeflight3/update/McuUpdateManager$State;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight3/update/McuUpdateManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight3/update/McuUpdateManager$State;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/parrot/freeflight3/update/McuUpdateManager$State;->$VALUES:[Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    invoke-virtual {v0}, [Lcom/parrot/freeflight3/update/McuUpdateManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight3/update/McuUpdateManager$State;

    return-object v0
.end method
