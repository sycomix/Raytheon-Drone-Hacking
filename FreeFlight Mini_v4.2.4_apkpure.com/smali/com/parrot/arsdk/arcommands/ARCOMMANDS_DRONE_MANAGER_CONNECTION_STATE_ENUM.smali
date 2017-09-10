.class public final enum Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;
.super Ljava/lang/Enum;
.source "ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

.field public static final enum CONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

.field public static final enum CONNECTING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

.field public static final enum DISCONNECTING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

.field public static final enum IDLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

.field public static final enum SEARCHING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

.field public static final enum UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final comment:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    const-string v1, "UNKNOWN"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    .line 43
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    const-string v1, "IDLE"

    const-string v2, "The drone manager do nothing (wait for command)."

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->IDLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    const-string v1, "SEARCHING"

    const-string v2, "The drone manager is searching for a known drone."

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->SEARCHING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    const-string v1, "CONNECTING"

    const-string v2, "The drone manager is connecting to a drone."

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->CONNECTING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    const-string v1, "CONNECTED"

    const-string v2, "The drone manager is connected to a drone."

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->CONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x5

    const-string v3, "The drone manager is finishing the connection with the drone before taking further action."

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->DISCONNECTING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->IDLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->SEARCHING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->CONNECTING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->CONNECTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->DISCONNECTING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->value:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->comment:Ljava/lang/String;

    .line 61
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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->value:I

    .line 65
    iput-object p4, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->comment:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 82
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 83
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    move-result-object v2

    .line 84
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->valuesList:Ljava/util/HashMap;

    .line 85
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 86
    .local v0, "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    .line 90
    .local v1, "retVal":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;
    if-nez v1, :cond_1

    .line 91
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    .line 93
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DRONE_MANAGER_CONNECTION_STATE_ENUM;->comment:Ljava/lang/String;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
