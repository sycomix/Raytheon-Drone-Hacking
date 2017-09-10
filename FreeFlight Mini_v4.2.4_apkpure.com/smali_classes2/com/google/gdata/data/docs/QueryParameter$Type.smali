.class public final enum Lcom/google/gdata/data/docs/QueryParameter$Type;
.super Ljava/lang/Enum;
.source "QueryParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/docs/QueryParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/docs/QueryParameter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum AUTHOR:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum CATEGORY:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum OPENED_MAX:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum OPENED_MIN:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum OWNER:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum Q:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum READER:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum TITLE:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum TITLE_EXACT:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum UPDATED_MAX:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum UPDATED_MIN:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field public static final enum WRITER:Lcom/google/gdata/data/docs/QueryParameter$Type;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "AUTHOR"

    const-string v2, "author"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->AUTHOR:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 66
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "CATEGORY"

    const-string v2, "category"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->CATEGORY:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 69
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "OPENED_MAX"

    const-string v2, "opened-max"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->OPENED_MAX:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 72
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "OPENED_MIN"

    const-string v2, "opened-min"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->OPENED_MIN:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 75
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "OWNER"

    const-string v2, "owner"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->OWNER:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 78
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "Q"

    const/4 v2, 0x5

    const-string v3, "q"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->Q:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 81
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "READER"

    const/4 v2, 0x6

    const-string v3, "reader"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->READER:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 84
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "TITLE"

    const/4 v2, 0x7

    const-string v3, "title"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->TITLE:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 87
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "TITLE_EXACT"

    const/16 v2, 0x8

    const-string v3, "title-exact"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->TITLE_EXACT:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 90
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "UPDATED_MAX"

    const/16 v2, 0x9

    const-string v3, "updated-max"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->UPDATED_MAX:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 93
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "UPDATED_MIN"

    const/16 v2, 0xa

    const-string v3, "updated-min"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->UPDATED_MIN:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 96
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const-string v1, "WRITER"

    const/16 v2, 0xb

    const-string v3, "writer"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/docs/QueryParameter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->WRITER:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 60
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/gdata/data/docs/QueryParameter$Type;

    sget-object v1, Lcom/google/gdata/data/docs/QueryParameter$Type;->AUTHOR:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/docs/QueryParameter$Type;->CATEGORY:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/docs/QueryParameter$Type;->OPENED_MAX:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/docs/QueryParameter$Type;->OPENED_MIN:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/gdata/data/docs/QueryParameter$Type;->OWNER:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/data/docs/QueryParameter$Type;->Q:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gdata/data/docs/QueryParameter$Type;->READER:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/data/docs/QueryParameter$Type;->TITLE:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/gdata/data/docs/QueryParameter$Type;->TITLE_EXACT:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/gdata/data/docs/QueryParameter$Type;->UPDATED_MAX:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/gdata/data/docs/QueryParameter$Type;->UPDATED_MIN:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/gdata/data/docs/QueryParameter$Type;->WRITER:Lcom/google/gdata/data/docs/QueryParameter$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->$VALUES:[Lcom/google/gdata/data/docs/QueryParameter$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lcom/google/gdata/data/docs/QueryParameter$Type;->value:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/docs/QueryParameter$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/docs/QueryParameter$Type;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/gdata/data/docs/QueryParameter$Type;->$VALUES:[Lcom/google/gdata/data/docs/QueryParameter$Type;

    invoke-virtual {v0}, [Lcom/google/gdata/data/docs/QueryParameter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/docs/QueryParameter$Type;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter$Type;->value:Ljava/lang/String;

    return-object v0
.end method
