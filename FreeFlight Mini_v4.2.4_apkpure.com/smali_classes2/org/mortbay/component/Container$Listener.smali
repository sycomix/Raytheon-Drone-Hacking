.class public interface abstract Lorg/mortbay/component/Container$Listener;
.super Ljava/lang/Object;
.source "Container.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/component/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract add(Lorg/mortbay/component/Container$Relationship;)V
.end method

.method public abstract addBean(Ljava/lang/Object;)V
.end method

.method public abstract remove(Lorg/mortbay/component/Container$Relationship;)V
.end method

.method public abstract removeBean(Ljava/lang/Object;)V
.end method
