.class public interface abstract Lcom/google/gdata/client/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# virtual methods
.method public abstract addCookie(Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;)V
.end method

.method public abstract clearCookies()V
.end method

.method public abstract cookiesEnabled()Z
.end method

.method public abstract getCookies()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCookiesEnabled(Z)V
.end method
