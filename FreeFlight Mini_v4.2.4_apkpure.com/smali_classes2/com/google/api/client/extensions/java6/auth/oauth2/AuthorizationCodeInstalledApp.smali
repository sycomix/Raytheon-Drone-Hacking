.class public Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;
.super Ljava/lang/Object;
.source "AuthorizationCodeInstalledApp.java"


# instance fields
.field private final flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

.field private final receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;)V
    .locals 1
    .param p1, "flow"    # Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
    .param p2, "receiver"    # Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    .line 54
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    .line 55
    return-void
.end method

.method public static browse(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {}, Ljava/awt/Desktop;->isDesktopSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Ljava/awt/Desktop;->getDesktop()Ljava/awt/Desktop;

    move-result-object v0

    .line 119
    .local v0, "desktop":Ljava/awt/Desktop;
    sget-object v1, Ljava/awt/Desktop$Action;->BROWSE:Ljava/awt/Desktop$Action;

    invoke-virtual {v0, v1}, Ljava/awt/Desktop;->isSupported(Ljava/awt/Desktop$Action;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Desktop;->browse(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "desktop":Ljava/awt/Desktop;
    :goto_0
    return-void

    .line 123
    .restart local v0    # "desktop":Ljava/awt/Desktop;
    :catch_0
    move-exception v1

    .line 129
    .end local v0    # "desktop":Ljava/awt/Desktop;
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Please open the following URL in your browser:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public authorize(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 10
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v5, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v5, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->loadCredential(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v2

    .line 66
    .local v2, "credential":Lcom/google/api/client/auth/oauth2/Credential;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/api/client/auth/oauth2/Credential;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/google/api/client/auth/oauth2/Credential;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0x3c

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 81
    :cond_0
    iget-object v5, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v5}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->stop()V

    .end local v2    # "credential":Lcom/google/api/client/auth/oauth2/Credential;
    :goto_0
    return-object v2

    .line 71
    .restart local v2    # "credential":Lcom/google/api/client/auth/oauth2/Credential;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v5}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->getRedirectUri()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "redirectUri":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v5}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newAuthorizationUrl()Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;

    move-result-object v0

    .line 74
    .local v0, "authorizationUrl":Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->onAuthorization(Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;)V

    .line 76
    iget-object v5, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v5}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->waitForCode()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "code":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v5, v1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->newTokenRequest(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeTokenRequest;->execute()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v4

    .line 79
    .local v4, "response":Lcom/google/api/client/auth/oauth2/TokenResponse;
    iget-object v5, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    invoke-virtual {v5, v4, p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;->createAndStoreCredential(Lcom/google/api/client/auth/oauth2/TokenResponse;Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 81
    .end local v2    # "credential":Lcom/google/api/client/auth/oauth2/Credential;
    iget-object v5, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v5}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->stop()V

    goto :goto_0

    .end local v0    # "authorizationUrl":Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "redirectUri":Ljava/lang/String;
    .end local v4    # "response":Lcom/google/api/client/auth/oauth2/TokenResponse;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    invoke-interface {v6}, Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;->stop()V

    throw v5
.end method

.method public final getFlow()Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->flow:Lcom/google/api/client/auth/oauth2/AuthorizationCodeFlow;

    return-object v0
.end method

.method public final getReceiver()Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->receiver:Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;

    return-object v0
.end method

.method protected onAuthorization(Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;)V
    .locals 1
    .param p1, "authorizationUrl"    # Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeRequestUrl;->build()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/extensions/java6/auth/oauth2/AuthorizationCodeInstalledApp;->browse(Ljava/lang/String;)V

    .line 107
    return-void
.end method
