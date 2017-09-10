.class public final enum Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
.super Ljava/lang/Enum;
.source "ARSTREAM_READER_CAUSE_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

.field public static final enum ARSTREAM_READER_CAUSE_CANCEL:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

.field public static final enum ARSTREAM_READER_CAUSE_COPY_COMPLETE:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

.field public static final enum ARSTREAM_READER_CAUSE_FRAME_COMPLETE:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

.field public static final enum ARSTREAM_READER_CAUSE_FRAME_TOO_SMALL:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

.field public static final enum ARSTREAM_READER_CAUSE_MAX:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

.field public static final enum eARSTREAM_READER_CAUSE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;",
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
    new-instance v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    const-string v1, "eARSTREAM_READER_CAUSE_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->eARSTREAM_READER_CAUSE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    const-string v1, "ARSTREAM_READER_CAUSE_FRAME_COMPLETE"

    const-string v2, "Frame is complete (no error)"

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ARSTREAM_READER_CAUSE_FRAME_COMPLETE:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    const-string v1, "ARSTREAM_READER_CAUSE_FRAME_TOO_SMALL"

    const-string v2, "Frame buffer is too small for the frame on the network"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ARSTREAM_READER_CAUSE_FRAME_TOO_SMALL:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    const-string v1, "ARSTREAM_READER_CAUSE_COPY_COMPLETE"

    const-string v2, "Copy of previous frame buffer is complete (called only after ARSTREAM_READER_CAUSE_FRAME_TOO_SMALL)"

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ARSTREAM_READER_CAUSE_COPY_COMPLETE:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    const-string v1, "ARSTREAM_READER_CAUSE_CANCEL"

    const-string v2, "Reader is closing, so buffer is no longer used"

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ARSTREAM_READER_CAUSE_CANCEL:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    .line 54
    new-instance v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    const-string v1, "ARSTREAM_READER_CAUSE_MAX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ARSTREAM_READER_CAUSE_MAX:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->eARSTREAM_READER_CAUSE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ARSTREAM_READER_CAUSE_FRAME_COMPLETE:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ARSTREAM_READER_CAUSE_FRAME_TOO_SMALL:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ARSTREAM_READER_CAUSE_COPY_COMPLETE:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ARSTREAM_READER_CAUSE_CANCEL:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->ARSTREAM_READER_CAUSE_MAX:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->$VALUES:[Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->value:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->comment:Ljava/lang/String;

    .line 63
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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->value:I

    .line 67
    iput-object p4, p0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->comment:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 84
    sget-object v3, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 85
    invoke-static {}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->values()[Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    move-result-object v2

    .line 86
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->valuesList:Ljava/util/HashMap;

    .line 87
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 88
    .local v0, "entry":Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "entry":Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    .line 92
    .local v1, "retVal":Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
    if-nez v1, :cond_1

    .line 93
    sget-object v1, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->eARSTREAM_READER_CAUSE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    .line 95
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->$VALUES:[Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARSTREAM_READER_CAUSE_ENUM;->comment:Ljava/lang/String;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
