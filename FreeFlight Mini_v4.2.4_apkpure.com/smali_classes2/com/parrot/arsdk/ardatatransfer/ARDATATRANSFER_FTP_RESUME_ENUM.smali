.class public final enum Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;
.super Ljava/lang/Enum;
.source "ARDATATRANSFER_FTP_RESUME_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

.field public static final enum FTP_RESUME_FALSE:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

.field public static final enum FTP_RESUME_TRUE:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final comment:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    const-string v1, "FTP_RESUME_FALSE"

    invoke-direct {v0, v1, v2, v2}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->FTP_RESUME_FALSE:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    const-string v1, "FTP_RESUME_TRUE"

    invoke-direct {v0, v1, v3, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->FTP_RESUME_TRUE:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->FTP_RESUME_FALSE:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->FTP_RESUME_TRUE:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    aput-object v1, v0, v3

    sput-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->$VALUES:[Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->value:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->comment:Ljava/lang/String;

    .line 54
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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->value:I

    .line 58
    iput-object p4, p0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->comment:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;
    .locals 6
    .param p0, "value"    # I

    .prologue
    .line 75
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 76
    invoke-static {}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->values()[Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    move-result-object v1

    .line 77
    .local v1, "valuesArray":[Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->valuesList:Ljava/util/HashMap;

    .line 78
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 79
    .local v0, "entry":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;
    sget-object v4, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "entry":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;
    .end local v1    # "valuesArray":[Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->$VALUES:[Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_FTP_RESUME_ENUM;->comment:Ljava/lang/String;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
