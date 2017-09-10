.class public final enum Lcom/google/gdata/data/youtube/YtGender$Value;
.super Ljava/lang/Enum;
.source "YtGender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/youtube/YtGender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/youtube/YtGender$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/youtube/YtGender$Value;

.field public static final enum FEMALE:Lcom/google/gdata/data/youtube/YtGender$Value;

.field public static final enum MALE:Lcom/google/gdata/data/youtube/YtGender$Value;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/google/gdata/data/youtube/YtGender$Value;

    const-string v1, "MALE"

    const-string v2, "m"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/data/youtube/YtGender$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtGender$Value;->MALE:Lcom/google/gdata/data/youtube/YtGender$Value;

    new-instance v0, Lcom/google/gdata/data/youtube/YtGender$Value;

    const-string v1, "FEMALE"

    const-string v2, "f"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/youtube/YtGender$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtGender$Value;->FEMALE:Lcom/google/gdata/data/youtube/YtGender$Value;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/data/youtube/YtGender$Value;

    sget-object v1, Lcom/google/gdata/data/youtube/YtGender$Value;->MALE:Lcom/google/gdata/data/youtube/YtGender$Value;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/youtube/YtGender$Value;->FEMALE:Lcom/google/gdata/data/youtube/YtGender$Value;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/gdata/data/youtube/YtGender$Value;->$VALUES:[Lcom/google/gdata/data/youtube/YtGender$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/google/gdata/data/youtube/YtGender$Value;->id:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static fromId(Ljava/lang/String;)Lcom/google/gdata/data/youtube/YtGender$Value;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lcom/google/gdata/data/youtube/YtGender$Value;->values()[Lcom/google/gdata/data/youtube/YtGender$Value;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/gdata/data/youtube/YtGender$Value;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 59
    .local v1, "gender":Lcom/google/gdata/data/youtube/YtGender$Value;
    invoke-virtual {v1}, Lcom/google/gdata/data/youtube/YtGender$Value;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    .end local v1    # "gender":Lcom/google/gdata/data/youtube/YtGender$Value;
    :goto_1
    return-object v1

    .line 58
    .restart local v1    # "gender":Lcom/google/gdata/data/youtube/YtGender$Value;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "gender":Lcom/google/gdata/data/youtube/YtGender$Value;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/YtGender$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/google/gdata/data/youtube/YtGender$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtGender$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/youtube/YtGender$Value;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/gdata/data/youtube/YtGender$Value;->$VALUES:[Lcom/google/gdata/data/youtube/YtGender$Value;

    invoke-virtual {v0}, [Lcom/google/gdata/data/youtube/YtGender$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/youtube/YtGender$Value;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtGender$Value;->id:Ljava/lang/String;

    return-object v0
.end method
