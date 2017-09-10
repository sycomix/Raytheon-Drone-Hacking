.class public interface abstract Lorg/mortbay/jetty/security/UserRealm;
.super Ljava/lang/Object;
.source "UserRealm.java"


# virtual methods
.method public abstract authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;
.end method

.method public abstract disassociate(Ljava/security/Principal;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPrincipal(Ljava/lang/String;)Ljava/security/Principal;
.end method

.method public abstract isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z
.end method

.method public abstract logout(Ljava/security/Principal;)V
.end method

.method public abstract popRole(Ljava/security/Principal;)Ljava/security/Principal;
.end method

.method public abstract pushRole(Ljava/security/Principal;Ljava/lang/String;)Ljava/security/Principal;
.end method

.method public abstract reauthenticate(Ljava/security/Principal;)Z
.end method
