.class public final enum Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;
.super Ljava/lang/Enum;
.source "ARSTREAM2_ERROR_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_ERROR_ALLOC:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_ERROR_BAD_PARAMETERS:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_ERROR_BUSY:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_ERROR_INVALID_STATE:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_ERROR_NOT_FOUND:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_ERROR_QUEUE_FULL:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_ERROR_RESOURCE_UNAVAILABLE:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_ERROR_RESYNC_REQUIRED:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_ERROR_UNSUPPORTED:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_ERROR_WAITING_FOR_SYNC:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum ARSTREAM2_OK:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field public static final enum eARSTREAM2_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;",
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
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "eARSTREAM2_ERROR_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->eARSTREAM2_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_OK"

    const-string v2, "No error"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_OK:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_ERROR_BAD_PARAMETERS"

    const/4 v2, -0x1

    const-string v3, "Bad parameters"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_BAD_PARAMETERS:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_ERROR_ALLOC"

    const/4 v2, -0x2

    const-string v3, "Unable to allocate resource"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_ALLOC:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_ERROR_BUSY"

    const/4 v2, -0x3

    const-string v3, "Object is busy and can not be deleted yet"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_BUSY:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_ERROR_QUEUE_FULL"

    const/4 v2, 0x5

    const/4 v3, -0x4

    const-string v4, "Queue is full"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_QUEUE_FULL:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_ERROR_WAITING_FOR_SYNC"

    const/4 v2, 0x6

    const/4 v3, -0x5

    const-string v4, "Waiting for synchronization"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_WAITING_FOR_SYNC:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_ERROR_RESYNC_REQUIRED"

    const/4 v2, 0x7

    const/4 v3, -0x6

    const-string v4, "Re-synchronization required"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_RESYNC_REQUIRED:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 61
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_ERROR_RESOURCE_UNAVAILABLE"

    const/16 v2, 0x8

    const/4 v3, -0x7

    const-string v4, "Resource unavailable"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_RESOURCE_UNAVAILABLE:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 63
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_ERROR_NOT_FOUND"

    const/16 v2, 0x9

    const/4 v3, -0x8

    const-string v4, "Not found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_NOT_FOUND:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 65
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_ERROR_INVALID_STATE"

    const/16 v2, 0xa

    const/16 v3, -0x9

    const-string v4, "Invalid state"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_INVALID_STATE:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 67
    new-instance v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    const-string v1, "ARSTREAM2_ERROR_UNSUPPORTED"

    const/16 v2, 0xb

    const/16 v3, -0xa

    const-string v4, "Unsupported"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_UNSUPPORTED:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->eARSTREAM2_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_OK:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_BAD_PARAMETERS:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_ALLOC:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_BUSY:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_QUEUE_FULL:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_WAITING_FOR_SYNC:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_RESYNC_REQUIRED:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_RESOURCE_UNAVAILABLE:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_NOT_FOUND:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_INVALID_STATE:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->ARSTREAM2_ERROR_UNSUPPORTED:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->$VALUES:[Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->value:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 76
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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->value:I

    .line 80
    iput-object p4, p0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 97
    sget-object v3, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 98
    invoke-static {}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->values()[Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    move-result-object v2

    .line 99
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    .line 100
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 101
    .local v0, "entry":Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "entry":Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 105
    .local v1, "retVal":Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;
    if-nez v1, :cond_1

    .line 106
    sget-object v1, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->eARSTREAM2_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    .line 108
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->$VALUES:[Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/parrot/arsdk/arstream2/ARSTREAM2_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
