.class public interface abstract Lcom/google/gdata/data/ExtensionVisitor;
.super Ljava/lang/Object;
.source "ExtensionVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
    }
.end annotation


# virtual methods
.method public abstract visit(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/Extension;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation
.end method

.method public abstract visitComplete(Lcom/google/gdata/data/ExtensionPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation
.end method
