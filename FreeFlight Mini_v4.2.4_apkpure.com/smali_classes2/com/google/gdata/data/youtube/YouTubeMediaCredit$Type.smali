.class public final enum Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;
.super Ljava/lang/Enum;
.source "YouTubeMediaCredit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/youtube/YouTubeMediaCredit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

.field public static final enum PARTNER:Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

    const-string v1, "PARTNER"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;->PARTNER:Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

    sget-object v1, Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;->PARTNER:Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;->$VALUES:[Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;->$VALUES:[Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

    invoke-virtual {v0}, [Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

    return-object v0
.end method
