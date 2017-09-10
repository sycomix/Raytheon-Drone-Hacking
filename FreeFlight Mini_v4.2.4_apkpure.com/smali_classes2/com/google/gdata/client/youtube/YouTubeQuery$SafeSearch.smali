.class public final enum Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
.super Ljava/lang/Enum;
.source "YouTubeQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/youtube/YouTubeQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SafeSearch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

.field public static final enum MODERATE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

.field public static final enum NONE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

.field private static PARAMETER_TO_SAFESEARCH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum STRICT:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 156
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    const-string v6, "NONE"

    const-string v7, "none"

    invoke-direct {v5, v6, v8, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->NONE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    .line 157
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    const-string v6, "MODERATE"

    const-string v7, "moderate"

    invoke-direct {v5, v6, v9, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->MODERATE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    .line 158
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    const-string v6, "STRICT"

    const-string v7, "strict"

    invoke-direct {v5, v6, v10, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->STRICT:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    .line 155
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->NONE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    aput-object v6, v5, v8

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->MODERATE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    aput-object v6, v5, v9

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->STRICT:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    aput-object v6, v5, v10

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->$VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;>;"
    invoke-static {}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->values()[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 187
    .local v4, "safeSearch":Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    invoke-virtual {v4}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->toParameterValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v4    # "safeSearch":Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->PARAMETER_TO_SAFESEARCH:Ljava/util/Map;

    .line 190
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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput-object p3, p0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->value:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public static fromParameterValue(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    if-nez p0, :cond_1

    .line 173
    const/4 v0, 0x0

    .line 180
    :cond_0
    return-object v0

    .line 175
    :cond_1
    sget-object v1, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->PARAMETER_TO_SAFESEARCH:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    .line 176
    .local v0, "safeSearch":Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    if-nez v0, :cond_0

    .line 177
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot convert safeSearch value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    const-class v0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->$VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    invoke-virtual {v0}, [Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    return-object v0
.end method


# virtual methods
.method public toParameterValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->value:Ljava/lang/String;

    return-object v0
.end method
