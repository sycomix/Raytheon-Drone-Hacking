.class Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;
.super Lorg/mortbay/jetty/security/HashUserRealm$User;
.source "HashUserRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/HashUserRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedUser"
.end annotation


# instance fields
.field private role:Ljava/lang/String;

.field private final this$0:Lorg/mortbay/jetty/security/HashUserRealm;

.field private user:Ljava/security/Principal;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;Ljava/security/Principal;Ljava/lang/String;)V
    .locals 1
    .param p2, "user"    # Ljava/security/Principal;
    .param p3, "role"    # Ljava/lang/String;

    .prologue
    .line 516
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;->this$0:Lorg/mortbay/jetty/security/HashUserRealm;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mortbay/jetty/security/HashUserRealm$User;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Lorg/mortbay/jetty/security/HashUserRealm$1;)V

    .line 517
    iput-object p2, p0, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;->user:Ljava/security/Principal;

    .line 518
    iput-object p3, p0, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;->role:Ljava/lang/String;

    .line 519
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;->role:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;->user:Ljava/security/Principal;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 538
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm$WrappedUser;->role:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
