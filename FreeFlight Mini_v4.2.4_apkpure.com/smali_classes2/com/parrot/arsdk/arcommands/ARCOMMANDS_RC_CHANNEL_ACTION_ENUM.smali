.class public final enum Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
.super Ljava/lang/Enum;
.source "ARCOMMANDS_RC_CHANNEL_ACTION_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum EMERGENCY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum GAZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum INVALID:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum PILOTING_MODE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum RETURN_HOME:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum ROLL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum TAKEOFF_LAND:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum TAKE_CONTROL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field public static final enum YAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;",
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
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "UNKNOWN"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 43
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "INVALID"

    const-string v2, "Invalid/Unused channel."

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->INVALID:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "ROLL"

    const-string v2, "Roll axis channel."

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->ROLL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "PITCH"

    const-string v2, "Pitch axis channel."

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "YAW"

    const-string v2, "Yaw axis channel."

    invoke-direct {v0, v1, v9, v8, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->YAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "GAZ"

    const/4 v2, 0x5

    const-string v3, "Gaz / Throttle / Altitude axis channel."

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->GAZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "TAKEOFF_LAND"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const-string v4, "Takeoff / Land channel."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->TAKEOFF_LAND:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "EMERGENCY"

    const/4 v2, 0x7

    const/4 v3, 0x6

    const-string v4, "Emergency channel."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->EMERGENCY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "RETURN_HOME"

    const/16 v2, 0x8

    const/4 v3, 0x7

    const-string v4, "Return Home channel."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->RETURN_HOME:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "PILOTING_MODE"

    const/16 v2, 0x9

    const/16 v3, 0x8

    const-string v4, "RC Piloting mode. Auto mode: used for doing flightplans and for assisted flying with a non-RC controller. Easy manual mode: used for assisted flying with a RC controller. Manual mode: used for non-assisted flying with a RC controller and for directly controlling the servomotors."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->PILOTING_MODE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 61
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    const-string v1, "TAKE_CONTROL"

    const/16 v2, 0xa

    const/16 v3, 0x9

    const-string v4, "RC take control. When take control is activated the RC controller, if available, becomes the main controller."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->TAKE_CONTROL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 39
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->INVALID:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->ROLL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->PITCH:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->YAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->GAZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->TAKEOFF_LAND:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->EMERGENCY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->RETURN_HOME:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->PILOTING_MODE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->TAKE_CONTROL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->value:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->comment:Ljava/lang/String;

    .line 71
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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->value:I

    .line 75
    iput-object p4, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->comment:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 92
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 93
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    move-result-object v2

    .line 94
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    .line 95
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 96
    .local v0, "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 100
    .local v1, "retVal":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    if-nez v1, :cond_1

    .line 101
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    .line 103
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_ACTION_ENUM;->comment:Ljava/lang/String;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
