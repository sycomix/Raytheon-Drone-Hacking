.class public Lcom/google/gdata/util/OAuthProxyException;
.super Lcom/google/gdata/util/ServiceException;
.source "OAuthProxyException.java"


# instance fields
.field private final response:Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "httpConn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    .line 43
    invoke-super {p0}, Lcom/google/gdata/util/ServiceException;->getOAuthProxyResponse()Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/OAuthProxyException;->response:Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;

    .line 44
    return-void
.end method


# virtual methods
.method public getApprovalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/util/OAuthProxyException;->response:Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->getApprovalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/util/OAuthProxyException;->response:Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->getError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gdata/util/OAuthProxyException;->response:Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->getErrorText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/gdata/util/OAuthProxyException;->response:Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
