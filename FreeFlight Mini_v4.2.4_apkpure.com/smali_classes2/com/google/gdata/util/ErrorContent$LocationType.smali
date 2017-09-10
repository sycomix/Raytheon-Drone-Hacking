.class public final enum Lcom/google/gdata/util/ErrorContent$LocationType;
.super Ljava/lang/Enum;
.source "ErrorContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/ErrorContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/util/ErrorContent$LocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/util/ErrorContent$LocationType;

.field public static final enum HEADER:Lcom/google/gdata/util/ErrorContent$LocationType;

.field public static final enum OTHER:Lcom/google/gdata/util/ErrorContent$LocationType;

.field private static final VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/util/ErrorContent$LocationType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum XPATH:Lcom/google/gdata/util/ErrorContent$LocationType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 38
    new-instance v5, Lcom/google/gdata/util/ErrorContent$LocationType;

    const-string v6, "XPATH"

    invoke-direct {v5, v6, v7}, Lcom/google/gdata/util/ErrorContent$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/gdata/util/ErrorContent$LocationType;->XPATH:Lcom/google/gdata/util/ErrorContent$LocationType;

    .line 41
    new-instance v5, Lcom/google/gdata/util/ErrorContent$LocationType;

    const-string v6, "HEADER"

    invoke-direct {v5, v6, v8}, Lcom/google/gdata/util/ErrorContent$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/gdata/util/ErrorContent$LocationType;->HEADER:Lcom/google/gdata/util/ErrorContent$LocationType;

    .line 44
    new-instance v5, Lcom/google/gdata/util/ErrorContent$LocationType;

    const-string v6, "OTHER"

    invoke-direct {v5, v6, v9}, Lcom/google/gdata/util/ErrorContent$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/gdata/util/ErrorContent$LocationType;->OTHER:Lcom/google/gdata/util/ErrorContent$LocationType;

    .line 33
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/gdata/util/ErrorContent$LocationType;

    sget-object v6, Lcom/google/gdata/util/ErrorContent$LocationType;->XPATH:Lcom/google/gdata/util/ErrorContent$LocationType;

    aput-object v6, v5, v7

    sget-object v6, Lcom/google/gdata/util/ErrorContent$LocationType;->HEADER:Lcom/google/gdata/util/ErrorContent$LocationType;

    aput-object v6, v5, v8

    sget-object v6, Lcom/google/gdata/util/ErrorContent$LocationType;->OTHER:Lcom/google/gdata/util/ErrorContent$LocationType;

    aput-object v6, v5, v9

    sput-object v5, Lcom/google/gdata/util/ErrorContent$LocationType;->$VALUES:[Lcom/google/gdata/util/ErrorContent$LocationType;

    .line 48
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gdata/util/ErrorContent$LocationType;>;"
    invoke-static {}, Lcom/google/gdata/util/ErrorContent$LocationType;->values()[Lcom/google/gdata/util/ErrorContent$LocationType;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/gdata/util/ErrorContent$LocationType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 50
    .local v3, "locationType":Lcom/google/gdata/util/ErrorContent$LocationType;
    invoke-virtual {v3}, Lcom/google/gdata/util/ErrorContent$LocationType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v3    # "locationType":Lcom/google/gdata/util/ErrorContent$LocationType;
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/google/gdata/util/ErrorContent$LocationType;->VALUE_MAP:Ljava/util/Map;

    .line 53
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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/gdata/util/ErrorContent$LocationType;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lcom/google/gdata/util/ErrorContent$LocationType;->VALUE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/ErrorContent$LocationType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/util/ErrorContent$LocationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/google/gdata/util/ErrorContent$LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/ErrorContent$LocationType;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/util/ErrorContent$LocationType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/gdata/util/ErrorContent$LocationType;->$VALUES:[Lcom/google/gdata/util/ErrorContent$LocationType;

    invoke-virtual {v0}, [Lcom/google/gdata/util/ErrorContent$LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/util/ErrorContent$LocationType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/gdata/util/ErrorContent$LocationType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
