.class public interface abstract Lorg/mortbay/jetty/security/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAuthMethod()Ljava/lang/String;
.end method
