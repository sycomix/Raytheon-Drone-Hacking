.class public Lorg/mortbay/jetty/security/FormAuthenticator;
.super Ljava/lang/Object;
.source "FormAuthenticator.java"

# interfaces
.implements Lorg/mortbay/jetty/security/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/FormAuthenticator$1;,
        Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;
    }
.end annotation


# static fields
.field public static final __J_AUTHENTICATED:Ljava/lang/String; = "org.mortbay.jetty.Auth"

.field public static final __J_PASSWORD:Ljava/lang/String; = "j_password"

.field public static final __J_SECURITY_CHECK:Ljava/lang/String; = "/j_security_check"

.field public static final __J_URI:Ljava/lang/String; = "org.mortbay.jetty.URI"

.field public static final __J_USERNAME:Ljava/lang/String; = "j_username"


# instance fields
.field private _formErrorPage:Ljava/lang/String;

.field private _formErrorPath:Ljava/lang/String;

.field private _formLoginPage:Ljava/lang/String;

.field private _formLoginPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .locals 10
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
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 124
    move-object v4, p2

    .line 127
    .local v4, "uri":Ljava/lang/String;
    if-eqz p4, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p3, v5}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v3

    .line 128
    .local v3, "session":Ljavax/servlet/http/HttpSession;
    if-nez v3, :cond_1

    move-object v5, v7

    .line 263
    .end local p1    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :goto_1
    return-object v5

    .end local v3    # "session":Ljavax/servlet/http/HttpSession;
    .restart local p1    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_0
    move v5, v6

    .line 127
    goto :goto_0

    .line 132
    .restart local v3    # "session":Ljavax/servlet/http/HttpSession;
    :cond_1
    invoke-virtual {p0, v4}, Lorg/mortbay/jetty/security/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 135
    new-instance v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    invoke-direct {v1, v7}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;-><init>(Lorg/mortbay/jetty/security/FormAuthenticator$1;)V

    .line 136
    .local v1, "form_cred":Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;
    const-string v5, "j_username"

    invoke-virtual {p3, v5}, Lorg/mortbay/jetty/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "j_password"

    invoke-virtual {p3, v8}, Lorg/mortbay/jetty/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, p1, v5, v8, p3}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/Request;)V

    .line 141
    const-string v5, "org.mortbay.jetty.URI"

    invoke-interface {v3, v5}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, "nuri":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 144
    :cond_2
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 146
    const-string v2, "/"

    .line 149
    :cond_3
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v5, :cond_7

    .line 152
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Form authentication OK for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v8, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 153
    :cond_4
    const-string v5, "org.mortbay.jetty.URI"

    invoke-interface {v3, v5}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 154
    const-string v5, "FORM"

    invoke-virtual {p3, v5}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 155
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-virtual {p3, v5}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 156
    const-string v5, "org.mortbay.jetty.Auth"

    invoke-interface {v3, v5, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    instance-of v5, p1, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v5, :cond_5

    .line 160
    check-cast p1, Lorg/mortbay/jetty/security/SSORealm;

    .end local p1    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    new-instance v8, Lorg/mortbay/jetty/security/Password;

    iget-object v9, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3, p4, v5, v8}, Lorg/mortbay/jetty/security/SSORealm;->setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V

    .line 163
    :cond_5
    if-eqz p4, :cond_6

    .line 165
    invoke-virtual {p4, v6}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 166
    invoke-virtual {p4, v2}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    :cond_6
    :goto_2
    move-object v5, v7

    .line 190
    goto/16 :goto_1

    .line 171
    .restart local p1    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_7
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Form authentication FAILED for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v8, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-static {v8}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 173
    :cond_8
    if-eqz p4, :cond_6

    .line 175
    iget-object v5, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 177
    const/16 v5, 0x193

    invoke-virtual {p4, v5}, Lorg/mortbay/jetty/Response;->sendError(I)V

    goto :goto_2

    .line 181
    :cond_9
    invoke-virtual {p4, v6}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 182
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    goto :goto_2

    .line 194
    .end local v1    # "form_cred":Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;
    .end local v2    # "nuri":Ljava/lang/String;
    :cond_a
    const-string v5, "org.mortbay.jetty.Auth"

    invoke-interface {v3, v5}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    .line 196
    .restart local v1    # "form_cred":Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;
    if-eqz v1, :cond_10

    .line 199
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-nez v5, :cond_d

    .line 202
    invoke-virtual {v1, p1, p3}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)V

    .line 205
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v5, :cond_b

    instance-of v5, p1, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v5, :cond_b

    .line 206
    check-cast p1, Lorg/mortbay/jetty/security/SSORealm;

    .end local p1    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    new-instance v8, Lorg/mortbay/jetty/security/Password;

    iget-object v9, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3, p4, v5, v8}, Lorg/mortbay/jetty/security/SSORealm;->setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V

    .line 214
    :cond_b
    :goto_3
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v5, :cond_e

    .line 216
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "FORM Authenticated for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 217
    :cond_c
    const-string v5, "FORM"

    invoke-virtual {p3, v5}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 218
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-virtual {p3, v5}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 219
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    goto/16 :goto_1

    .line 209
    .restart local p1    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_d
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-interface {p1, v5}, Lorg/mortbay/jetty/security/UserRealm;->reauthenticate(Ljava/security/Principal;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 211
    iput-object v7, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    goto :goto_3

    .line 222
    .end local p1    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_e
    const-string v5, "org.mortbay.jetty.Auth"

    invoke-interface {v3, v5, v7}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    :cond_f
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/FormAuthenticator;->isLoginOrErrorPage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 246
    sget-object v5, Lorg/mortbay/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    goto/16 :goto_1

    .line 224
    .restart local p1    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    :cond_10
    instance-of v5, p1, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v5, :cond_f

    .line 227
    check-cast p1, Lorg/mortbay/jetty/security/SSORealm;

    .end local p1    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    invoke-interface {p1, p3, p4}, Lorg/mortbay/jetty/security/SSORealm;->getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;

    move-result-object v0

    .line 229
    .local v0, "cred":Lorg/mortbay/jetty/security/Credential;
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 231
    new-instance v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    .end local v1    # "form_cred":Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;
    invoke-direct {v1, v7}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;-><init>(Lorg/mortbay/jetty/security/FormAuthenticator$1;)V

    .line 232
    .restart local v1    # "form_cred":Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v5

    iput-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    .line 233
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    .line 234
    if-eqz v0, :cond_11

    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    .line 236
    :cond_11
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "SSO for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 238
    :cond_12
    const-string v5, "FORM"

    invoke-virtual {p3, v5}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 239
    const-string v5, "org.mortbay.jetty.Auth"

    invoke-interface {v3, v5, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    iget-object v5, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    goto/16 :goto_1

    .line 249
    .end local v0    # "cred":Lorg/mortbay/jetty/security/Credential;
    :cond_13
    if-eqz p4, :cond_15

    .line 251
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 252
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, "?"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    :cond_14
    const-string v5, "org.mortbay.jetty.URI"

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v8}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    invoke-virtual {p4, v6}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 259
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    :cond_15
    move-object v5, v7

    .line 263
    goto/16 :goto_1
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "FORM"

    return-object v0
.end method

.method public getErrorPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    return-object v0
.end method

.method public isJSecurityCheck(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    const-string v5, "/j_security_check"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 278
    .local v2, "jsc":I
    if-gez v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v3

    .line 280
    :cond_1
    const-string v5, "/j_security_check"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v2, v5

    .line 281
    .local v1, "e":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_2

    move v3, v4

    .line 282
    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 284
    .local v0, "c":C
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_3

    const/16 v5, 0x23

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    const/16 v5, 0x3f

    if-ne v0, v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public isLoginOrErrorPage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    .line 269
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErrorPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x3f

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 88
    :cond_0
    iput-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    const-string v0, "form-error-page must start with /"

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_3
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLoginPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x3f

    .line 66
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "form-login-page must start with /"

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 75
    :cond_1
    return-void
.end method
