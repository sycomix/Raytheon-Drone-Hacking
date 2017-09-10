.class public final enum Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;
.super Ljava/lang/Enum;
.source "OAuthParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/authn/oauth/OAuthParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OAuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

.field public static final enum THREE_LEGGED_OAUTH:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

.field public static final enum TWO_LEGGED_OAUTH:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    const-string v1, "TWO_LEGGED_OAUTH"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;->TWO_LEGGED_OAUTH:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    .line 41
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    const-string v1, "THREE_LEGGED_OAUTH"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;->THREE_LEGGED_OAUTH:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    sget-object v1, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;->TWO_LEGGED_OAUTH:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;->THREE_LEGGED_OAUTH:Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;->$VALUES:[Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;->$VALUES:[Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    invoke-virtual {v0}, [Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/authn/oauth/OAuthParameters$OAuthType;

    return-object v0
.end method
