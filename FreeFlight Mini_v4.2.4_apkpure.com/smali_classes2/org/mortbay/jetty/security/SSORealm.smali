.class public interface abstract Lorg/mortbay/jetty/security/SSORealm;
.super Ljava/lang/Object;
.source "SSORealm.java"


# virtual methods
.method public abstract clearSingleSignOn(Ljava/lang/String;)V
.end method

.method public abstract getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;
.end method

.method public abstract setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V
.end method
