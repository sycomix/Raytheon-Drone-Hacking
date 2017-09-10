.class public final enum Lcom/google/gdata/data/docs/ImportFormat$Target;
.super Ljava/lang/Enum;
.source "ImportFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/docs/ImportFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/docs/ImportFormat$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/docs/ImportFormat$Target;

.field public static final enum DOCUMENT:Lcom/google/gdata/data/docs/ImportFormat$Target;

.field public static final enum DRAWING:Lcom/google/gdata/data/docs/ImportFormat$Target;

.field public static final enum PRESENTATION:Lcom/google/gdata/data/docs/ImportFormat$Target;

.field public static final enum SPREADSHEET:Lcom/google/gdata/data/docs/ImportFormat$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/google/gdata/data/docs/ImportFormat$Target;

    const-string v1, "DOCUMENT"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/docs/ImportFormat$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ImportFormat$Target;->DOCUMENT:Lcom/google/gdata/data/docs/ImportFormat$Target;

    .line 62
    new-instance v0, Lcom/google/gdata/data/docs/ImportFormat$Target;

    const-string v1, "DRAWING"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/docs/ImportFormat$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ImportFormat$Target;->DRAWING:Lcom/google/gdata/data/docs/ImportFormat$Target;

    .line 65
    new-instance v0, Lcom/google/gdata/data/docs/ImportFormat$Target;

    const-string v1, "PRESENTATION"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/docs/ImportFormat$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ImportFormat$Target;->PRESENTATION:Lcom/google/gdata/data/docs/ImportFormat$Target;

    .line 68
    new-instance v0, Lcom/google/gdata/data/docs/ImportFormat$Target;

    const-string v1, "SPREADSHEET"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/docs/ImportFormat$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/docs/ImportFormat$Target;->SPREADSHEET:Lcom/google/gdata/data/docs/ImportFormat$Target;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/gdata/data/docs/ImportFormat$Target;

    sget-object v1, Lcom/google/gdata/data/docs/ImportFormat$Target;->DOCUMENT:Lcom/google/gdata/data/docs/ImportFormat$Target;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/docs/ImportFormat$Target;->DRAWING:Lcom/google/gdata/data/docs/ImportFormat$Target;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/docs/ImportFormat$Target;->PRESENTATION:Lcom/google/gdata/data/docs/ImportFormat$Target;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/docs/ImportFormat$Target;->SPREADSHEET:Lcom/google/gdata/data/docs/ImportFormat$Target;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/data/docs/ImportFormat$Target;->$VALUES:[Lcom/google/gdata/data/docs/ImportFormat$Target;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/docs/ImportFormat$Target;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/google/gdata/data/docs/ImportFormat$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ImportFormat$Target;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/docs/ImportFormat$Target;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/gdata/data/docs/ImportFormat$Target;->$VALUES:[Lcom/google/gdata/data/docs/ImportFormat$Target;

    invoke-virtual {v0}, [Lcom/google/gdata/data/docs/ImportFormat$Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/docs/ImportFormat$Target;

    return-object v0
.end method
