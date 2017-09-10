.class public final enum Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;
.super Ljava/lang/Enum;
.source "MediaContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/media/mediarss/MediaContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Expression"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

.field public static final enum FULL:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

.field public static final enum NONSTOP:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

.field public static final enum SAMPLE:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    const-string v1, "SAMPLE"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;->SAMPLE:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;->FULL:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    const-string v1, "NONSTOP"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;->NONSTOP:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    .line 204
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    sget-object v1, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;->SAMPLE:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;->FULL:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;->NONSTOP:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;->$VALUES:[Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

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
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;->$VALUES:[Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    invoke-virtual {v0}, [Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    return-object v0
.end method
