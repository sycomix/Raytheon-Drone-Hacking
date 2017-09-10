.class public final enum Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;
.super Ljava/lang/Enum;
.source "SubscriptionEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/youtube/SubscriptionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

.field public static final enum CHANNEL:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

.field public static final enum FAVORITES:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

.field public static final enum PLAYLIST:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

.field public static final enum QUERY:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

.field public static final enum USER:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    const-string v1, "CHANNEL"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->CHANNEL:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    new-instance v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->FAVORITES:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    new-instance v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->QUERY:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    new-instance v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->PLAYLIST:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    new-instance v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    const-string v1, "USER"

    invoke-direct {v0, v1, v6}, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->USER:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    sget-object v1, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->CHANNEL:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->FAVORITES:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->QUERY:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->PLAYLIST:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->USER:Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->$VALUES:[Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromTerm(Ljava/lang/String;)Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;
    .locals 2
    .param p0, "term"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->$VALUES:[Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    invoke-virtual {v0}, [Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    return-object v0
.end method


# virtual methods
.method public getTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
