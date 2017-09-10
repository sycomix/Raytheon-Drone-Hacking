.class public Lorg/mortbay/util/ajax/ContinuationSupport;
.super Ljava/lang/Object;
.source "ContinuationSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContinuation(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/Object;)Lorg/mortbay/util/ajax/Continuation;
    .locals 2
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    .line 30
    const-string v1, "org.mortbay.jetty.ajax.Continuation"

    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/Continuation;

    .line 31
    .local v0, "continuation":Lorg/mortbay/util/ajax/Continuation;
    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lorg/mortbay/util/ajax/WaitingContinuation;

    .end local v0    # "continuation":Lorg/mortbay/util/ajax/Continuation;
    invoke-direct {v0, p1}, Lorg/mortbay/util/ajax/WaitingContinuation;-><init>(Ljava/lang/Object;)V

    .line 35
    .restart local v0    # "continuation":Lorg/mortbay/util/ajax/Continuation;
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    instance-of v1, v0, Lorg/mortbay/util/ajax/WaitingContinuation;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    move-object v1, v0

    .line 34
    check-cast v1, Lorg/mortbay/util/ajax/WaitingContinuation;

    invoke-virtual {v1, p1}, Lorg/mortbay/util/ajax/WaitingContinuation;->setMutex(Ljava/lang/Object;)V

    goto :goto_0
.end method
