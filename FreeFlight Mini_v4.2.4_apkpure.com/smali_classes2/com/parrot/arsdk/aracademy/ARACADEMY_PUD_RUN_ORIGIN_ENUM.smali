.class public final enum Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;
.super Ljava/lang/Enum;
.source "ARACADEMY_PUD_RUN_ORIGIN_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

.field public static final enum ARACADEMY_PUD_RUN_ORIGIN_DIRECTORMODE:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

.field public static final enum ARACADEMY_PUD_RUN_ORIGIN_FLIGTHPLAN:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

.field public static final enum ARACADEMY_PUD_RUN_ORIGIN_HUD:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

.field public static final enum ARACADEMY_PUD_RUN_ORIGIN_MAPMYHOUSE:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

.field public static final enum ARACADEMY_PUD_RUN_ORIGIN_MAX:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

.field public static final enum ARACADEMY_PUD_RUN_ORIGIN_ROADPLAN:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

.field public static final enum eARACADEMY_PUD_RUN_ORIGIN_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;",
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
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    const-string v1, "eARACADEMY_PUD_RUN_ORIGIN_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->eARACADEMY_PUD_RUN_ORIGIN_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    .line 46
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    const-string v1, "ARACADEMY_PUD_RUN_ORIGIN_HUD"

    invoke-direct {v0, v1, v5, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_HUD:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    const-string v1, "ARACADEMY_PUD_RUN_ORIGIN_FLIGTHPLAN"

    invoke-direct {v0, v1, v6, v5}, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_FLIGTHPLAN:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    .line 48
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    const-string v1, "ARACADEMY_PUD_RUN_ORIGIN_MAPMYHOUSE"

    invoke-direct {v0, v1, v7, v6}, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_MAPMYHOUSE:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    const-string v1, "ARACADEMY_PUD_RUN_ORIGIN_DIRECTORMODE"

    invoke-direct {v0, v1, v8, v7}, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_DIRECTORMODE:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    .line 50
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    const-string v1, "ARACADEMY_PUD_RUN_ORIGIN_ROADPLAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_ROADPLAN:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    const-string v1, "ARACADEMY_PUD_RUN_ORIGIN_MAX"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_MAX:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->eARACADEMY_PUD_RUN_ORIGIN_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_HUD:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_FLIGTHPLAN:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_MAPMYHOUSE:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_DIRECTORMODE:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_ROADPLAN:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->ARACADEMY_PUD_RUN_ORIGIN_MAX:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->$VALUES:[Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->value:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->comment:Ljava/lang/String;

    .line 60
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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->value:I

    .line 64
    iput-object p4, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->comment:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 81
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 82
    invoke-static {}, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->values()[Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    move-result-object v2

    .line 83
    .local v2, "valuesArray":[Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->valuesList:Ljava/util/HashMap;

    .line 84
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 85
    .local v0, "entry":Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;
    sget-object v5, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "entry":Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    .line 89
    .local v1, "retVal":Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;
    if-nez v1, :cond_1

    .line 90
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->eARACADEMY_PUD_RUN_ORIGIN_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    .line 92
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->$VALUES:[Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_PUD_RUN_ORIGIN_ENUM;->comment:Ljava/lang/String;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
