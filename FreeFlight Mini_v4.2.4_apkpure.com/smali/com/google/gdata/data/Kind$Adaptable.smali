.class public interface abstract Lcom/google/gdata/data/Kind$Adaptable;
.super Ljava/lang/Object;
.source "Kind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Kind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Adaptable"
.end annotation


# virtual methods
.method public abstract addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V
.end method

.method public abstract getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract getAdaptors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;"
        }
    .end annotation
.end method
