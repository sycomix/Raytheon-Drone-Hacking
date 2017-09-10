.class public Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;
.super Lcom/google/api/client/json/GenericJson;
.source "FilePersistedCredentials.java"


# instance fields
.field private credentials:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 34
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->credentials:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->credentials:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method load(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)Z
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "credential"    # Lcom/google/api/client/auth/oauth2/Credential;

    .prologue
    .line 63
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->credentials:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;

    .line 65
    .local v0, "fileCredential":Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    .line 68
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->load(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 69
    const/4 v1, 0x1

    goto :goto_0
.end method

.method store(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "credential"    # Lcom/google/api/client/auth/oauth2/Credential;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->credentials:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;

    .line 48
    .local v0, "fileCredential":Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;

    .end local v0    # "fileCredential":Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;
    invoke-direct {v0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;-><init>()V

    .line 50
    .restart local v0    # "fileCredential":Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;
    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->credentials:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredential;->store(Lcom/google/api/client/auth/oauth2/Credential;)V

    .line 53
    return-void
.end method
