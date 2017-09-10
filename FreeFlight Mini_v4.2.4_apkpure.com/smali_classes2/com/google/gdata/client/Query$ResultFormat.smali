.class public final enum Lcom/google/gdata/client/Query$ResultFormat;
.super Ljava/lang/Enum;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/Query$ResultFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum ATOM:Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum ATOM_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum ATOM_SERVICE:Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum DEFAULT:Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum JSON:Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum JSONC:Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum JSONC_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum JSON_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum JSON_XD:Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum RSS:Lcom/google/gdata/client/Query$ResultFormat;

.field public static final enum RSS_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;


# instance fields
.field private paramValue:Ljava/lang/String;


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
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->DEFAULT:Lcom/google/gdata/client/Query$ResultFormat;

    .line 64
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "ATOM"

    const-string v2, "atom"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->ATOM:Lcom/google/gdata/client/Query$ResultFormat;

    .line 65
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "RSS"

    const-string v2, "rss"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->RSS:Lcom/google/gdata/client/Query$ResultFormat;

    .line 66
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "JSON"

    const-string v2, "json"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->JSON:Lcom/google/gdata/client/Query$ResultFormat;

    .line 67
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "JSONC"

    const-string v2, "jsonc"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->JSONC:Lcom/google/gdata/client/Query$ResultFormat;

    .line 68
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "ATOM_IN_SCRIPT"

    const/4 v2, 0x5

    const-string v3, "atom-in-script"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->ATOM_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

    .line 69
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "RSS_IN_SCRIPT"

    const/4 v2, 0x6

    const-string v3, "rss-in-script"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->RSS_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

    .line 70
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "JSON_IN_SCRIPT"

    const/4 v2, 0x7

    const-string v3, "json-in-script"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->JSON_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

    .line 71
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "JSONC_IN_SCRIPT"

    const/16 v2, 0x8

    const-string v3, "jsonc-in-script"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->JSONC_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

    .line 72
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "JSON_XD"

    const/16 v2, 0x9

    const-string v3, "json-xd"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->JSON_XD:Lcom/google/gdata/client/Query$ResultFormat;

    .line 73
    new-instance v0, Lcom/google/gdata/client/Query$ResultFormat;

    const-string v1, "ATOM_SERVICE"

    const/16 v2, 0xa

    const-string v3, "atom-service"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/client/Query$ResultFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->ATOM_SERVICE:Lcom/google/gdata/client/Query$ResultFormat;

    .line 61
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/gdata/client/Query$ResultFormat;

    sget-object v1, Lcom/google/gdata/client/Query$ResultFormat;->DEFAULT:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/client/Query$ResultFormat;->ATOM:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/client/Query$ResultFormat;->RSS:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/client/Query$ResultFormat;->JSON:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/gdata/client/Query$ResultFormat;->JSONC:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/client/Query$ResultFormat;->ATOM_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gdata/client/Query$ResultFormat;->RSS_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/client/Query$ResultFormat;->JSON_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/gdata/client/Query$ResultFormat;->JSONC_IN_SCRIPT:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/gdata/client/Query$ResultFormat;->JSON_XD:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/gdata/client/Query$ResultFormat;->ATOM_SERVICE:Lcom/google/gdata/client/Query$ResultFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/client/Query$ResultFormat;->$VALUES:[Lcom/google/gdata/client/Query$ResultFormat;

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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/google/gdata/client/Query$ResultFormat;->paramValue:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/Query$ResultFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/google/gdata/client/Query$ResultFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Query$ResultFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/Query$ResultFormat;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/gdata/client/Query$ResultFormat;->$VALUES:[Lcom/google/gdata/client/Query$ResultFormat;

    invoke-virtual {v0}, [Lcom/google/gdata/client/Query$ResultFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/Query$ResultFormat;

    return-object v0
.end method


# virtual methods
.method public paramValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/gdata/client/Query$ResultFormat;->paramValue:Ljava/lang/String;

    return-object v0
.end method
