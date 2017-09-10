.class public Lorg/mortbay/jetty/security/ClientCertAuthenticator;
.super Ljava/lang/Object;
.source "ClientCertAuthenticator.java"

# interfaces
.implements Lorg/mortbay/jetty/security/Authenticator;


# instance fields
.field private _maxHandShakeSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x3c

    iput v0, p0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;->_maxHandShakeSeconds:I

    .line 40
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .locals 8
    .param p1, "realm"    # Lorg/mortbay/jetty/security/UserRealm;
    .param p2, "pathInContext"    # Ljava/lang/String;
    .param p3, "request"    # Lorg/mortbay/jetty/Request;
    .param p4, "response"    # Lorg/mortbay/jetty/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x193

    const/4 v6, 0x0

    .line 71
    const-string v4, "javax.servlet.request.X509Certificate"

    invoke-virtual {p3, v4}, Lorg/mortbay/jetty/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    move-object v0, v4

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 76
    .local v0, "certs":[Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-eqz v4, :cond_0

    aget-object v4, v0, v6

    if-nez v4, :cond_2

    .line 78
    :cond_0
    if-eqz p4, :cond_1

    .line 79
    const-string v4, "A client certificate is required for accessing this web application but the server\'s listener is not configured for mutual authentication (or the client did not provide a certificate)."

    invoke-virtual {p4, v7, v4}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :cond_1
    move-object v2, v5

    .line 98
    :goto_0
    return-object v2

    .line 83
    :cond_2
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    .line 84
    .local v1, "principal":Ljava/security/Principal;
    if-nez v1, :cond_3

    .line 85
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    .line 86
    :cond_3
    if-nez v1, :cond_5

    const-string v3, "clientcert"

    .line 88
    .local v3, "username":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v3, v0, p3}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v2

    .line 89
    .local v2, "user":Ljava/security/Principal;
    if-nez v2, :cond_6

    .line 91
    if-eqz p4, :cond_4

    .line 92
    const-string v4, "The provided client certificate does not correspond to a trusted user."

    invoke-virtual {p4, v7, v4}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :cond_4
    move-object v2, v5

    .line 93
    goto :goto_0

    .line 86
    .end local v2    # "user":Ljava/security/Principal;
    .end local v3    # "username":Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 96
    .restart local v2    # "user":Ljava/security/Principal;
    .restart local v3    # "username":Ljava/lang/String;
    :cond_6
    const-string v4, "CLIENT_CERT"

    invoke-virtual {p3, v4}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p3, v2}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    goto :goto_0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "CLIENT_CERT"

    return-object v0
.end method

.method public getMaxHandShakeSeconds()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;->_maxHandShakeSeconds:I

    return v0
.end method

.method public setMaxHandShakeSeconds(I)V
    .locals 0
    .param p1, "maxHandShakeSeconds"    # I

    .prologue
    .line 55
    iput p1, p0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;->_maxHandShakeSeconds:I

    .line 56
    return-void
.end method
