.class public interface abstract Lcom/google/gdata/data/introspection/IWorkspace;
.super Ljava/lang/Object;
.source "IWorkspace.java"


# virtual methods
.method public varargs abstract addCollection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/gdata/data/introspection/ICollection;
.end method

.method public abstract getCollections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/gdata/data/introspection/ICollection;",
            ">;"
        }
    .end annotation
.end method
