.class public interface abstract Lcom/google/gdata/data/photos/Extensible;
.super Ljava/lang/Object;
.source "Extensible.java"


# virtual methods
.method public abstract addExtension(Lcom/google/gdata/data/Extension;)V
.end method

.method public abstract addRepeatingExtension(Lcom/google/gdata/data/Extension;)V
.end method

.method public abstract declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
.end method

.method public abstract removeExtension(Lcom/google/gdata/data/Extension;)V
.end method

.method public abstract removeExtension(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V
.end method

.method public abstract setExtension(Lcom/google/gdata/data/Extension;)V
.end method
