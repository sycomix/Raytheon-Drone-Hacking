.class public final enum Lcom/google/gdata/data/youtube/UserEventEntry$Type;
.super Ljava/lang/Enum;
.source "UserEventEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/youtube/UserEventEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/youtube/UserEventEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/youtube/UserEventEntry$Type;

.field public static final enum FRIEND_ADDED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

.field public static final enum USER_SUBSCRIPTION_ADDED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

.field public static final enum VIDEO_COMMENTED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

.field public static final enum VIDEO_FAVORITED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

.field public static final enum VIDEO_RATED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

.field public static final enum VIDEO_SHARED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

.field public static final enum VIDEO_UPLOADED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    const-string v1, "VIDEO_UPLOADED"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->VIDEO_UPLOADED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    new-instance v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    const-string v1, "VIDEO_RATED"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->VIDEO_RATED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    new-instance v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    const-string v1, "VIDEO_FAVORITED"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->VIDEO_FAVORITED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    new-instance v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    const-string v1, "VIDEO_SHARED"

    invoke-direct {v0, v1, v6}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->VIDEO_SHARED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    new-instance v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    const-string v1, "VIDEO_COMMENTED"

    invoke-direct {v0, v1, v7}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->VIDEO_COMMENTED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    .line 48
    new-instance v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    const-string v1, "USER_SUBSCRIPTION_ADDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->USER_SUBSCRIPTION_ADDED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    new-instance v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    const-string v1, "FRIEND_ADDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->FRIEND_ADDED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    sget-object v1, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->VIDEO_UPLOADED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->VIDEO_RATED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->VIDEO_FAVORITED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->VIDEO_SHARED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->VIDEO_COMMENTED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->USER_SUBSCRIPTION_ADDED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->FRIEND_ADDED:Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->$VALUES:[Lcom/google/gdata/data/youtube/UserEventEntry$Type;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromTerm(Ljava/lang/String;)Lcom/google/gdata/data/youtube/UserEventEntry$Type;
    .locals 2
    .param p0, "term"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/UserEventEntry$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/UserEventEntry$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/youtube/UserEventEntry$Type;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->$VALUES:[Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    invoke-virtual {v0}, [Lcom/google/gdata/data/youtube/UserEventEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    return-object v0
.end method


# virtual methods
.method public getTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
