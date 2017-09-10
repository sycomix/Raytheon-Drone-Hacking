.class public final enum Lcom/google/gdata/data/webmastertools/DomainPreference;
.super Ljava/lang/Enum;
.source "DomainPreference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/webmastertools/DomainPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/webmastertools/DomainPreference;

.field public static final enum NONE:Lcom/google/gdata/data/webmastertools/DomainPreference;

.field public static final enum PREFER_NO_WWW:Lcom/google/gdata/data/webmastertools/DomainPreference;

.field public static final enum PREFER_WWW:Lcom/google/gdata/data/webmastertools/DomainPreference;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/google/gdata/data/webmastertools/DomainPreference;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/data/webmastertools/DomainPreference;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/DomainPreference;->NONE:Lcom/google/gdata/data/webmastertools/DomainPreference;

    .line 35
    new-instance v0, Lcom/google/gdata/data/webmastertools/DomainPreference;

    const-string v1, "PREFER_WWW"

    const-string v2, "preferwww"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/webmastertools/DomainPreference;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/DomainPreference;->PREFER_WWW:Lcom/google/gdata/data/webmastertools/DomainPreference;

    .line 36
    new-instance v0, Lcom/google/gdata/data/webmastertools/DomainPreference;

    const-string v1, "PREFER_NO_WWW"

    const-string v2, "prefernowww"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/webmastertools/DomainPreference;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/webmastertools/DomainPreference;->PREFER_NO_WWW:Lcom/google/gdata/data/webmastertools/DomainPreference;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/data/webmastertools/DomainPreference;

    sget-object v1, Lcom/google/gdata/data/webmastertools/DomainPreference;->NONE:Lcom/google/gdata/data/webmastertools/DomainPreference;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/webmastertools/DomainPreference;->PREFER_WWW:Lcom/google/gdata/data/webmastertools/DomainPreference;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/webmastertools/DomainPreference;->PREFER_NO_WWW:Lcom/google/gdata/data/webmastertools/DomainPreference;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/data/webmastertools/DomainPreference;->$VALUES:[Lcom/google/gdata/data/webmastertools/DomainPreference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "associatedString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/google/gdata/data/webmastertools/DomainPreference;->value:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/gdata/data/webmastertools/DomainPreference;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/google/gdata/data/webmastertools/DomainPreference;->values()[Lcom/google/gdata/data/webmastertools/DomainPreference;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/gdata/data/webmastertools/DomainPreference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 78
    .local v3, "preference":Lcom/google/gdata/data/webmastertools/DomainPreference;
    invoke-virtual {v3}, Lcom/google/gdata/data/webmastertools/DomainPreference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    return-object v3

    .line 77
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "preference":Lcom/google/gdata/data/webmastertools/DomainPreference;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The parameter is not a valid DomainPreference string"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getDefault()Lcom/google/gdata/data/webmastertools/DomainPreference;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/gdata/data/webmastertools/DomainPreference;->NONE:Lcom/google/gdata/data/webmastertools/DomainPreference;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/webmastertools/DomainPreference;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/google/gdata/data/webmastertools/DomainPreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/DomainPreference;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/webmastertools/DomainPreference;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/gdata/data/webmastertools/DomainPreference;->$VALUES:[Lcom/google/gdata/data/webmastertools/DomainPreference;

    invoke-virtual {v0}, [Lcom/google/gdata/data/webmastertools/DomainPreference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/webmastertools/DomainPreference;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/DomainPreference;->value:Ljava/lang/String;

    return-object v0
.end method
