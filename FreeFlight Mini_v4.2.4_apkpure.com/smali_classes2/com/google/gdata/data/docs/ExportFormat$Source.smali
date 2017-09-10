.class public final enum Lcom/google/gdata/data/docs/ExportFormat$Source;
.super Ljava/lang/Enum;
.source "ExportFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/docs/ExportFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/docs/ExportFormat$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/docs/ExportFormat$Source;

.field public static final enum DOCUMENT:Lcom/google/gdata/data/docs/ExportFormat$Source;

.field public static final enum DRAWING:Lcom/google/gdata/data/docs/ExportFormat$Source;

.field public static final enum PRESENTATION:Lcom/google/gdata/data/docs/ExportFormat$Source;

.field public static final enum SPREADSHEET:Lcom/google/gdata/data/docs/ExportFormat$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/google/gdata/data/docs/ExportFormat$Source;

    const-string v1, "DOCUMENT"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/docs/ExportFormat$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ExportFormat$Source;->DOCUMENT:Lcom/google/gdata/data/docs/ExportFormat$Source;

    .line 62
    new-instance v0, Lcom/google/gdata/data/docs/ExportFormat$Source;

    const-string v1, "DRAWING"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/docs/ExportFormat$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ExportFormat$Source;->DRAWING:Lcom/google/gdata/data/docs/ExportFormat$Source;

    .line 65
    new-instance v0, Lcom/google/gdata/data/docs/ExportFormat$Source;

    const-string v1, "PRESENTATION"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/docs/ExportFormat$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ExportFormat$Source;->PRESENTATION:Lcom/google/gdata/data/docs/ExportFormat$Source;

    .line 68
    new-instance v0, Lcom/google/gdata/data/docs/ExportFormat$Source;

    const-string v1, "SPREADSHEET"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/docs/ExportFormat$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ExportFormat$Source;->SPREADSHEET:Lcom/google/gdata/data/docs/ExportFormat$Source;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/gdata/data/docs/ExportFormat$Source;

    sget-object v1, Lcom/google/gdata/data/docs/ExportFormat$Source;->DOCUMENT:Lcom/google/gdata/data/docs/ExportFormat$Source;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/docs/ExportFormat$Source;->DRAWING:Lcom/google/gdata/data/docs/ExportFormat$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/docs/ExportFormat$Source;->PRESENTATION:Lcom/google/gdata/data/docs/ExportFormat$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/docs/ExportFormat$Source;->SPREADSHEET:Lcom/google/gdata/data/docs/ExportFormat$Source;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/data/docs/ExportFormat$Source;->$VALUES:[Lcom/google/gdata/data/docs/ExportFormat$Source;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/docs/ExportFormat$Source;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/google/gdata/data/docs/ExportFormat$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ExportFormat$Source;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/docs/ExportFormat$Source;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/gdata/data/docs/ExportFormat$Source;->$VALUES:[Lcom/google/gdata/data/docs/ExportFormat$Source;

    invoke-virtual {v0}, [Lcom/google/gdata/data/docs/ExportFormat$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/docs/ExportFormat$Source;

    return-object v0
.end method
