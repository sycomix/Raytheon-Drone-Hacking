.class public abstract Lorg/mortbay/jetty/security/Credential;
.super Ljava/lang/Object;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/Credential$MD5;,
        Lorg/mortbay/jetty/security/Credential$Crypt;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static getCredential(Ljava/lang/String;)Lorg/mortbay/jetty/security/Credential;
    .locals 1
    .param p0, "credential"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "CRYPT:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lorg/mortbay/jetty/security/Credential$Crypt;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/security/Credential$Crypt;-><init>(Ljava/lang/String;)V

    .line 65
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const-string v0, "MD5:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lorg/mortbay/jetty/security/Credential$MD5;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/security/Credential$MD5;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Lorg/mortbay/jetty/security/Password;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract check(Ljava/lang/Object;)Z
.end method
