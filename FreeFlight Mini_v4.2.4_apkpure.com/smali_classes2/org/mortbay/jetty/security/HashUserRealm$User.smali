.class Lorg/mortbay/jetty/security/HashUserRealm$User;
.super Ljava/lang/Object;
.source "HashUserRealm.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/HashUserRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "User"
.end annotation


# instance fields
.field roles:Ljava/util/List;

.field private final this$0:Lorg/mortbay/jetty/security/HashUserRealm;


# direct methods
.method private constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;)V
    .locals 1

    .prologue
    .line 447
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm$User;->this$0:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm$User;->roles:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;Lorg/mortbay/jetty/security/HashUserRealm$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mortbay/jetty/security/HashUserRealm;
    .param p2, "x1"    # Lorg/mortbay/jetty/security/HashUserRealm$1;

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/security/HashUserRealm$User;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;)V

    return-void
.end method

.method static access$100(Lorg/mortbay/jetty/security/HashUserRealm$User;)Lorg/mortbay/jetty/security/UserRealm;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/security/HashUserRealm$User;

    .prologue
    .line 447
    invoke-direct {p0}, Lorg/mortbay/jetty/security/HashUserRealm$User;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v0

    return-object v0
.end method

.method private getUserRealm()Lorg/mortbay/jetty/security/UserRealm;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm$User;->this$0:Lorg/mortbay/jetty/security/HashUserRealm;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    const-string v0, "Anonymous"

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HashUserRealm$User;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
