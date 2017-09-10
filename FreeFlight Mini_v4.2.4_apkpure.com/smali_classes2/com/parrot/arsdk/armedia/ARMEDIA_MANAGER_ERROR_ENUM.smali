.class public final enum Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;
.super Ljava/lang/Enum;
.source "ARMEDIA_MANAGER_ERROR_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

.field public static final enum ARMEDIA_MANAGER_ALREADY_INITIALIZED:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

.field public static final enum ARMEDIA_MANAGER_NOT_INITIALIZED:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

.field public static final enum ARMEDIA_MANAGER_OK:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

.field public static final enum eARMEDIA_MANAGER_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final comment:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    new-instance v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    const-string v1, "eARMEDIA_MANAGER_ERROR_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->eARMEDIA_MANAGER_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    .line 46
    new-instance v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    const-string v1, "ARMEDIA_MANAGER_OK"

    invoke-direct {v0, v1, v5, v4}, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->ARMEDIA_MANAGER_OK:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    const-string v1, "ARMEDIA_MANAGER_ALREADY_INITIALIZED"

    invoke-direct {v0, v1, v6, v5}, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->ARMEDIA_MANAGER_ALREADY_INITIALIZED:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    .line 48
    new-instance v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    const-string v1, "ARMEDIA_MANAGER_NOT_INITIALIZED"

    invoke-direct {v0, v1, v7, v6}, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->ARMEDIA_MANAGER_NOT_INITIALIZED:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->eARMEDIA_MANAGER_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->ARMEDIA_MANAGER_OK:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->ARMEDIA_MANAGER_ALREADY_INITIALIZED:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->ARMEDIA_MANAGER_NOT_INITIALIZED:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    aput-object v1, v0, v7

    sput-object v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->$VALUES:[Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->value:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 57
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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->value:I

    .line 61
    iput-object p4, p0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 78
    sget-object v3, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 79
    invoke-static {}, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->values()[Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    move-result-object v2

    .line 80
    .local v2, "valuesArray":[Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    .line 81
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 82
    .local v0, "entry":Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;
    sget-object v5, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "entry":Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    .line 86
    .local v1, "retVal":Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;
    if-nez v1, :cond_1

    .line 87
    sget-object v1, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->eARMEDIA_MANAGER_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    .line 89
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->$VALUES:[Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMEDIA_MANAGER_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
