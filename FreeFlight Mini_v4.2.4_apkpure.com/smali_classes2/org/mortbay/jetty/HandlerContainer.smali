.class public interface abstract Lorg/mortbay/jetty/HandlerContainer;
.super Ljava/lang/Object;
.source "HandlerContainer.java"

# interfaces
.implements Lorg/mortbay/component/LifeCycle;


# virtual methods
.method public abstract addHandler(Lorg/mortbay/jetty/Handler;)V
.end method

.method public abstract getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;
.end method

.method public abstract getChildHandlers()[Lorg/mortbay/jetty/Handler;
.end method

.method public abstract getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;
.end method

.method public abstract removeHandler(Lorg/mortbay/jetty/Handler;)V
.end method
