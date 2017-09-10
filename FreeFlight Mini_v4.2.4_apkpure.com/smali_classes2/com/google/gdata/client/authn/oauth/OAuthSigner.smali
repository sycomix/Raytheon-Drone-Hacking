.class public interface abstract Lcom/google/gdata/client/authn/oauth/OAuthSigner;
.super Ljava/lang/Object;
.source "OAuthSigner.java"


# virtual methods
.method public abstract getSignature(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation
.end method

.method public abstract getSignatureMethod()Ljava/lang/String;
.end method
