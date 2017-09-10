.class public final enum Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;
.super Ljava/lang/Enum;
.source "YouTubeQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/youtube/YouTubeQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrderBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

.field private static PARAMETER_TO_ORDERBY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PUBLISHED:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

.field public static final enum RATING:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

.field public static final enum RELEVANCE:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

.field public static final enum UPDATED:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum VIEW_COUNT:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 109
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    const-string v6, "RELEVANCE"

    const-string v7, "relevance"

    invoke-direct {v5, v6, v8, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->RELEVANCE:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    .line 113
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    const-string v6, "UPDATED"

    const-string/jumbo v7, "updated"

    invoke-direct {v5, v6, v9, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->UPDATED:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    .line 115
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    const-string v6, "VIEW_COUNT"

    const-string/jumbo v7, "viewCount"

    invoke-direct {v5, v6, v10, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->VIEW_COUNT:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    .line 116
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    const-string v6, "RATING"

    const-string v7, "rating"

    invoke-direct {v5, v6, v11, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->RATING:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    .line 117
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    const-string v6, "PUBLISHED"

    const-string v7, "published"

    invoke-direct {v5, v6, v12, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->PUBLISHED:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    .line 108
    const/4 v5, 0x5

    new-array v5, v5, [Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->RELEVANCE:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    aput-object v6, v5, v8

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->UPDATED:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    aput-object v6, v5, v9

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->VIEW_COUNT:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    aput-object v6, v5, v10

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->RATING:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    aput-object v6, v5, v11

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->PUBLISHED:Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    aput-object v6, v5, v12

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->$VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    .line 144
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;>;"
    invoke-static {}, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->values()[Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 146
    .local v4, "orderBy":Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;
    invoke-virtual {v4}, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->toParameterValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v4    # "orderBy":Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->PARAMETER_TO_ORDERBY:Ljava/util/Map;

    .line 149
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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput-object p3, p0, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->value:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public static fromParameterValue(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    if-nez p0, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 139
    :cond_0
    return-object v0

    .line 134
    :cond_1
    sget-object v1, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->PARAMETER_TO_ORDERBY:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    .line 135
    .local v0, "orderBy":Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;
    if-nez v0, :cond_0

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot convert orderBy value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->$VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    invoke-virtual {v0}, [Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;

    return-object v0
.end method


# virtual methods
.method public toParameterValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/gdata/client/youtube/YouTubeQuery$OrderBy;->value:Ljava/lang/String;

    return-object v0
.end method
