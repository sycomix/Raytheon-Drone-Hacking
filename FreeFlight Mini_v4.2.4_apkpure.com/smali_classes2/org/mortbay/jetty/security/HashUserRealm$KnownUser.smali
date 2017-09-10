.class Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;
.super Lorg/mortbay/jetty/security/HashUserRealm$User;
.source "HashUserRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/HashUserRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnownUser"
.end annotation


# instance fields
.field private _cred:Lorg/mortbay/jetty/security/Credential;

.field private _userName:Ljava/lang/String;

.field private final this$0:Lorg/mortbay/jetty/security/HashUserRealm;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;Ljava/lang/String;Lorg/mortbay/jetty/security/Credential;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "credential"    # Lorg/mortbay/jetty/security/Credential;

    .prologue
    .line 483
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;->this$0:Lorg/mortbay/jetty/security/HashUserRealm;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mortbay/jetty/security/HashUserRealm$User;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Lorg/mortbay/jetty/security/HashUserRealm$1;)V

    .line 484
    iput-object p2, p0, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;->_userName:Ljava/lang/String;

    .line 485
    iput-object p3, p0, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;->_cred:Lorg/mortbay/jetty/security/Credential;

    .line 486
    return-void
.end method


# virtual methods
.method authenticate(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 491
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;->_cred:Lorg/mortbay/jetty/security/Credential;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;->_cred:Lorg/mortbay/jetty/security/Credential;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/security/Credential;->check(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm$KnownUser;->_userName:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x1

    return v0
.end method
