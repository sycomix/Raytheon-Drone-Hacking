.class public Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;
.super Lcom/google/api/client/json/GenericJson;
.source "FilePersistedCredential.java"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "access_token"
    .end annotation
.end field

.field private expirationTimeMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "expiration_time_millis"
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "refresh_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method load(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 1
    .param p1, "credential"    # Lcom/google/api/client/auth/oauth2/Credential;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 62
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->refreshToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 63
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->expirationTimeMillis:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 64
    return-void
.end method

.method store(Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 1
    .param p1, "credential"    # Lcom/google/api/client/auth/oauth2/Credential;

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/Credential;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->accessToken:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/Credential;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->refreshToken:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/Credential;->getExpirationTimeMilliseconds()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->expirationTimeMillis:Ljava/lang/Long;

    .line 52
    return-void
.end method
