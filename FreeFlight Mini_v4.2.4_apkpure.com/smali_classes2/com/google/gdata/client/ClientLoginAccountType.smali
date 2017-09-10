.class public final enum Lcom/google/gdata/client/ClientLoginAccountType;
.super Ljava/lang/Enum;
.source "ClientLoginAccountType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/ClientLoginAccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/ClientLoginAccountType;

.field public static final enum GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

.field public static final enum HOSTED:Lcom/google/gdata/client/ClientLoginAccountType;

.field public static final enum HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;


# instance fields
.field private final accountTypeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/google/gdata/client/ClientLoginAccountType;

    const-string v1, "GOOGLE"

    const-string v2, "GOOGLE"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/client/ClientLoginAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/ClientLoginAccountType;->GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    .line 29
    new-instance v0, Lcom/google/gdata/client/ClientLoginAccountType;

    const-string v1, "HOSTED"

    const-string v2, "HOSTED"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/client/ClientLoginAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED:Lcom/google/gdata/client/ClientLoginAccountType;

    .line 34
    new-instance v0, Lcom/google/gdata/client/ClientLoginAccountType;

    const-string v1, "HOSTED_OR_GOOGLE"

    const-string v2, "HOSTED_OR_GOOGLE"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/client/ClientLoginAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/client/ClientLoginAccountType;

    sget-object v1, Lcom/google/gdata/client/ClientLoginAccountType;->GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED:Lcom/google/gdata/client/ClientLoginAccountType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/client/ClientLoginAccountType;->HOSTED_OR_GOOGLE:Lcom/google/gdata/client/ClientLoginAccountType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/client/ClientLoginAccountType;->$VALUES:[Lcom/google/gdata/client/ClientLoginAccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "accountTypeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/google/gdata/client/ClientLoginAccountType;->accountTypeValue:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/ClientLoginAccountType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/google/gdata/client/ClientLoginAccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/ClientLoginAccountType;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/ClientLoginAccountType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/gdata/client/ClientLoginAccountType;->$VALUES:[Lcom/google/gdata/client/ClientLoginAccountType;

    invoke-virtual {v0}, [Lcom/google/gdata/client/ClientLoginAccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/ClientLoginAccountType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/gdata/client/ClientLoginAccountType;->accountTypeValue:Ljava/lang/String;

    return-object v0
.end method
