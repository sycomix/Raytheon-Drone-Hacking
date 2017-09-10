.class public interface abstract Lorg/mortbay/component/LifeCycle$Listener;
.super Ljava/lang/Object;
.source "LifeCycle.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/component/LifeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract lifeCycleFailure(Lorg/mortbay/component/LifeCycle;Ljava/lang/Throwable;)V
.end method

.method public abstract lifeCycleStarted(Lorg/mortbay/component/LifeCycle;)V
.end method

.method public abstract lifeCycleStarting(Lorg/mortbay/component/LifeCycle;)V
.end method

.method public abstract lifeCycleStopped(Lorg/mortbay/component/LifeCycle;)V
.end method

.method public abstract lifeCycleStopping(Lorg/mortbay/component/LifeCycle;)V
.end method
