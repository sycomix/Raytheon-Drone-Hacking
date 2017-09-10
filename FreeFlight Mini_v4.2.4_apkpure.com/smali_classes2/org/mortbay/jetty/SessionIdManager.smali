.class public interface abstract Lorg/mortbay/jetty/SessionIdManager;
.super Ljava/lang/Object;
.source "SessionIdManager.java"

# interfaces
.implements Lorg/mortbay/component/LifeCycle;


# virtual methods
.method public abstract addSession(Ljavax/servlet/http/HttpSession;)V
.end method

.method public abstract getClusterId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
.end method

.method public abstract getWorkerName()Ljava/lang/String;
.end method

.method public abstract idInUse(Ljava/lang/String;)Z
.end method

.method public abstract invalidateAll(Ljava/lang/String;)V
.end method

.method public abstract newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
.end method

.method public abstract removeSession(Ljavax/servlet/http/HttpSession;)V
.end method
