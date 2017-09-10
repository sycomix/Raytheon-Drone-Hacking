.class public Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;
.super Ljava/lang/Object;
.source "GoogleAuthTokenFactory.java"

# interfaces
.implements Lcom/google/gdata/client/http/HttpAuthToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/GoogleAuthTokenFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthSubToken"
.end annotation


# instance fields
.field private key:Ljava/security/PrivateKey;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;->token:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;->key:Ljava/security/PrivateKey;

    .line 139
    return-void
.end method


# virtual methods
.method public getAuthorizationHeader(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "requestUrl"    # Ljava/net/URL;
    .param p2, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;->key:Ljava/security/PrivateKey;

    invoke-static {v1, v2, p1, p2}, Lcom/google/gdata/client/http/AuthSubUtil;->formAuthorizationHeader(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gdata/client/GoogleAuthTokenFactory$AuthSubToken;->token:Ljava/lang/String;

    return-object v0
.end method
