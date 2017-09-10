.class public final enum Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;
.super Ljava/lang/Enum;
.source "ARROADPLAN_Instruction_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_ANIMATION:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_ARC:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_CALL:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_COMMENT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_JUMP:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_LEDGREEN:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_LEDRED:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_MAX:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_MOVE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_POSTURE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_QUICKTURN:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_RECORD:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_STRAIGHT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_TAKEPICTURE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum ARROADPLAN_Instruction_WAIT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field public static final enum eARROADPLAN_Instruction_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;",
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

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "eARROADPLAN_Instruction_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->eARROADPLAN_Instruction_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 46
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_ANIMATION"

    invoke-direct {v0, v1, v5, v4}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_ANIMATION:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_ARC"

    invoke-direct {v0, v1, v6, v5}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_ARC:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 48
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_CALL"

    invoke-direct {v0, v1, v7, v6}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_CALL:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_COMMENT"

    invoke-direct {v0, v1, v8, v7}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_COMMENT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 50
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_JUMP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_JUMP:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_LEDGREEN"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_LEDGREEN:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 52
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_LEDRED"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_LEDRED:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_MOVE"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_MOVE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 54
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_POSTURE"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_POSTURE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_QUICKTURN"

    const/16 v2, 0xa

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_QUICKTURN:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 56
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_RECORD"

    const/16 v2, 0xb

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_RECORD:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_STRAIGHT"

    const/16 v2, 0xc

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_STRAIGHT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 58
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_TAKEPICTURE"

    const/16 v2, 0xd

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_TAKEPICTURE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_WAIT"

    const/16 v2, 0xe

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_WAIT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 60
    new-instance v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    const-string v1, "ARROADPLAN_Instruction_MAX"

    const/16 v2, 0xf

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_MAX:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->eARROADPLAN_Instruction_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_ANIMATION:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_ARC:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_CALL:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_COMMENT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_JUMP:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_LEDGREEN:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_LEDRED:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_MOVE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_POSTURE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_QUICKTURN:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_RECORD:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_STRAIGHT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_TAKEPICTURE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_WAIT:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->ARROADPLAN_Instruction_MAX:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->$VALUES:[Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->value:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->comment:Ljava/lang/String;

    .line 69
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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->value:I

    .line 73
    iput-object p4, p0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->comment:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 90
    sget-object v3, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 91
    invoke-static {}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->values()[Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    move-result-object v2

    .line 92
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->valuesList:Ljava/util/HashMap;

    .line 93
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 94
    .local v0, "entry":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "entry":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 98
    .local v1, "retVal":Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;
    if-nez v1, :cond_1

    .line 99
    sget-object v1, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->eARROADPLAN_Instruction_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    .line 101
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->$VALUES:[Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/parrot/arsdk/arroadplan/ARROADPLAN_Instruction_ENUM;->comment:Ljava/lang/String;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
