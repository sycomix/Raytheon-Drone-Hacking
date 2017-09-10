.class public final enum Lcom/google/gdata/client/youtube/YouTubeQuery$Time;
.super Ljava/lang/Enum;
.source "YouTubeQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/youtube/YouTubeQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Time"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/youtube/YouTubeQuery$Time;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

.field public static final enum ALL_TIME:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

.field private static PARAMETER_TO_TIME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/client/youtube/YouTubeQuery$Time;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum THIS_MONTH:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

.field public static final enum THIS_WEEK:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

.field public static final enum TODAY:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 68
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    const-string v6, "TODAY"

    const-string v7, "today"

    invoke-direct {v5, v6, v8, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->TODAY:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    .line 69
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    const-string v6, "THIS_WEEK"

    const-string v7, "this_week"

    invoke-direct {v5, v6, v9, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->THIS_WEEK:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    .line 70
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    const-string v6, "THIS_MONTH"

    const-string v7, "this_month"

    invoke-direct {v5, v6, v10, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->THIS_MONTH:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    .line 71
    new-instance v5, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    const-string v6, "ALL_TIME"

    const-string v7, "all_time"

    invoke-direct {v5, v6, v11, v7}, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->ALL_TIME:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    .line 67
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->TODAY:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    aput-object v6, v5, v8

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->THIS_WEEK:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    aput-object v6, v5, v9

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->THIS_MONTH:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    aput-object v6, v5, v10

    sget-object v6, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->ALL_TIME:Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    aput-object v6, v5, v11

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->$VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    .line 97
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gdata/client/youtube/YouTubeQuery$Time;>;"
    invoke-static {}, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->values()[Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/gdata/client/youtube/YouTubeQuery$Time;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 99
    .local v4, "time":Lcom/google/gdata/client/youtube/YouTubeQuery$Time;
    invoke-virtual {v4}, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->toParameterValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v4    # "time":Lcom/google/gdata/client/youtube/YouTubeQuery$Time;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->PARAMETER_TO_TIME:Ljava/util/Map;

    .line 102
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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->value:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static fromParameterValue(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$Time;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    if-nez p0, :cond_1

    .line 86
    const/4 v0, 0x0

    .line 92
    :cond_0
    return-object v0

    .line 88
    :cond_1
    sget-object v1, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->PARAMETER_TO_TIME:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    .line 89
    .local v0, "time":Lcom/google/gdata/client/youtube/YouTubeQuery$Time;
    if-nez v0, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot convert time value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$Time;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/youtube/YouTubeQuery$Time;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->$VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    invoke-virtual {v0}, [Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/youtube/YouTubeQuery$Time;

    return-object v0
.end method


# virtual methods
.method public toParameterValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/gdata/client/youtube/YouTubeQuery$Time;->value:Ljava/lang/String;

    return-object v0
.end method
