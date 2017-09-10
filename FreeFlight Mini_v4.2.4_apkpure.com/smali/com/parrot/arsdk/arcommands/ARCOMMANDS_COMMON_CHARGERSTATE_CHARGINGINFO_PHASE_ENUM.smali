.class public final enum Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
.super Ljava/lang/Enum;
.source "ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

.field public static final enum ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CHARGED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

.field public static final enum ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

.field public static final enum ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

.field public static final enum ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_VOLTAGE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

.field public static final enum ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_DISCHARGING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

.field public static final enum ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

.field public static final enum ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

.field public static final enum eARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;",
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
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    const-string v1, "eARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->eARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 43
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_UNKNOWN"

    const-string v2, "The charge phase is unknown or irrelevant."

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_1"

    const-string v2, "First phase of the charging process. The battery is charging with constant current."

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_2"

    const-string v2, "Second phase of the charging process. The battery is charging with constant current, with a higher voltage than the first phase."

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_VOLTAGE"

    const-string v2, "Last part of the charging process. The battery is charging with a constant voltage."

    invoke-direct {v0, v1, v9, v8, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_VOLTAGE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CHARGED"

    const/4 v2, 0x5

    const-string v3, "The battery is fully charged."

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CHARGED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_DISCHARGING"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const-string v4, "The battery is discharging; Other arguments refers to the last charge."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_DISCHARGING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 54
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    const-string v1, "ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_MAX"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->eARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_VOLTAGE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CHARGED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_DISCHARGING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->value:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->comment:Ljava/lang/String;

    .line 64
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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->value:I

    .line 68
    iput-object p4, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->comment:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 85
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 86
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    move-result-object v2

    .line 87
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->valuesList:Ljava/util/HashMap;

    .line 88
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 89
    .local v0, "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 93
    .local v1, "retVal":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    if-nez v1, :cond_1

    .line 94
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->eARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    .line 96
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->comment:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
