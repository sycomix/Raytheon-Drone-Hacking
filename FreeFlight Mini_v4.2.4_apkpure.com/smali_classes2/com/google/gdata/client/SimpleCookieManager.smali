.class public Lcom/google/gdata/client/SimpleCookieManager;
.super Ljava/lang/Object;
.source "SimpleCookieManager.java"

# interfaces
.implements Lcom/google/gdata/client/CookieManager;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected cookies:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<",
            "Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;",
            ">;"
        }
    .end annotation
.end field

.field protected cookiesEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/gdata/client/SimpleCookieManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/client/SimpleCookieManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/ConcurrentHashMultiset;->create()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookies:Lcom/google/common/collect/Multiset;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookiesEnabled:Z

    return-void
.end method


# virtual methods
.method public addCookie(Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;)V
    .locals 1
    .param p1, "cookie"    # Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    .prologue
    .line 59
    sget-boolean v0, Lcom/google/gdata/client/SimpleCookieManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookiesEnabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookies:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookies:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public clearCookies()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookies:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->clear()V

    .line 56
    return-void
.end method

.method public cookiesEnabled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookiesEnabled:Z

    return v0
.end method

.method public getCookies()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v2, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookies:Lcom/google/common/collect/Multiset;

    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    .local v1, "cookieIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    .line 75
    .local v0, "cookie":Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;
    invoke-virtual {v0}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->hasExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 79
    .end local v0    # "cookie":Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookies:Lcom/google/common/collect/Multiset;

    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public setCookiesEnabled(Z)V
    .locals 1
    .param p1, "cookiesEnabled"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookiesEnabled:Z

    .line 45
    iget-boolean v0, p0, Lcom/google/gdata/client/SimpleCookieManager;->cookiesEnabled:Z

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/google/gdata/client/SimpleCookieManager;->clearCookies()V

    .line 48
    :cond_0
    return-void
.end method
