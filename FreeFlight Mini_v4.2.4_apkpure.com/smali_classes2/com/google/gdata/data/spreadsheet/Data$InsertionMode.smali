.class public final enum Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;
.super Ljava/lang/Enum;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/spreadsheet/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InsertionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

.field public static final enum INSERT:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

.field public static final enum OVERWRITE:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;->INSERT:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    .line 71
    new-instance v0, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    const-string v1, "OVERWRITE"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;->OVERWRITE:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    sget-object v1, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;->INSERT:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;->OVERWRITE:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;->$VALUES:[Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;->$VALUES:[Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    invoke-virtual {v0}, [Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    return-object v0
.end method
