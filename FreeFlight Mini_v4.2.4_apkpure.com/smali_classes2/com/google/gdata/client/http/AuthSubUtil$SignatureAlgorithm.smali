.class final enum Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "AuthSubUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/http/AuthSubUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SignatureAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

.field public static final enum DSA_SHA1:Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

.field public static final enum RSA_SHA1:Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;


# instance fields
.field private final authSubName:Ljava/lang/String;

.field private final jcaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    new-instance v0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    const-string v1, "DSA_SHA1"

    const-string v2, "dsa-sha1"

    const-string v3, "SHA1withDSA"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->DSA_SHA1:Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    .line 64
    new-instance v0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    const-string v1, "RSA_SHA1"

    const-string v2, "rsa-sha1"

    const-string v3, "SHA1withRSA"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->RSA_SHA1:Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    sget-object v1, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->DSA_SHA1:Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->RSA_SHA1:Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->$VALUES:[Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "authSubName"    # Ljava/lang/String;
    .param p4, "jcaName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->authSubName:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->jcaName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->$VALUES:[Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    invoke-virtual {v0}, [Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getAuthSubName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->authSubName:Ljava/lang/String;

    return-object v0
.end method

.method public getJCAName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->jcaName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->jcaName:Ljava/lang/String;

    return-object v0
.end method
