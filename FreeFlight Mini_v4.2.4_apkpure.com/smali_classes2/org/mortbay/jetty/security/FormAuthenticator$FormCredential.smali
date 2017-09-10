.class Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;
.super Ljava/lang/Object;
.source "FormAuthenticator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/servlet/http/HttpSessionBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/FormAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormCredential"
.end annotation


# instance fields
.field _jPassword:Ljava/lang/String;

.field _jUserName:Ljava/lang/String;

.field transient _realm:Lorg/mortbay/jetty/security/UserRealm;

.field transient _userPrincipal:Ljava/security/Principal;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/security/FormAuthenticator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mortbay/jetty/security/FormAuthenticator$1;

    .prologue
    .line 291
    invoke-direct {p0}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;-><init>()V

    return-void
.end method


# virtual methods
.method authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/Request;)V
    .locals 2
    .param p1, "realm"    # Lorg/mortbay/jetty/security/UserRealm;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 300
    iput-object p2, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    .line 302
    invoke-interface {p1, p2, p3, p4}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    .line 303
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v0, :cond_0

    .line 304
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string v0, "AUTH FAILURE: user {}"

    invoke-static {p2}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    goto :goto_0
.end method

.method authenticate(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)V
    .locals 2
    .param p1, "realm"    # Lorg/mortbay/jetty/security/UserRealm;
    .param p2, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 314
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    iget-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p2}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    .line 315
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v0, :cond_0

    .line 316
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    .line 322
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string v0, "AUTH FAILURE: user {}"

    iget-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-static {v1}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 345
    instance-of v2, p1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    if-nez v2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 347
    check-cast v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    .line 348
    .local v0, "fc":Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;
    iget-object v2, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    iget-object v3, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    iget-object v3, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Cred["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueBound(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/servlet/http/HttpSessionBindingEvent;

    .prologue
    .line 325
    return-void
.end method

.method public valueUnbound(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/servlet/http/HttpSessionBindingEvent;

    .prologue
    .line 329
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Logout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    instance-of v0, v0, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    check-cast v0, Lorg/mortbay/jetty/security/SSORealm;

    iget-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/security/SSORealm;->clearSingleSignOn(Ljava/lang/String;)V

    .line 334
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_realm:Lorg/mortbay/jetty/security/UserRealm;

    iget-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/security/UserRealm;->logout(Ljava/security/Principal;)V

    .line 336
    :cond_2
    return-void
.end method
